LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;
USE work.pix_cache_pak.ALL;
USE work.pix_write_cache;
USE work.pix_word_cache;
use work.all;

ENTITY rcb IS
	GENERIC(vsize : INTEGER := 6);
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;

		-- db connections
		dbb_bus      : IN  db_2_rcb;
		dbb_delaycmd : OUT STD_LOGIC;

		-- vram connections
		vdout        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		vdin         : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		vwrite       : OUT STD_LOGIC;
		vaddr        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

		-- vdp connection
		rcb_finish   : OUT STD_LOGIC
	);
END rcb;

ARCHITECTURE rtl1 OF rcb IS
	ALIAS slv IS std_logic_vector;
	ALIAS usgn IS unsigned;
	--output
	SIGNAL rcb_finish_1 : std_logic;

	--wire
	SIGNAL x_in            : slv(vsize - 1 DOWNTO 0);
	SIGNAL y_in            : slv(vsize - 1 DOWNTO 0);
	SIGNAL equal_block_out : std_logic;
	SIGNAL split_word_addr : slv(7 DOWNTO 0);

	--Register 
	SIGNAL word_reg_out  : slv(7 DOWNTO 0);
	SIGNAL x_clear_reg   : slv(vsize - 1 DOWNTO 0);
	SIGNAL y_clear_reg   : slv(vsize - 1 DOWNTO 0);
	SIGNAL x_clear_start : slv(vsize - 1 DOWNTO 0);
	SIGNAL y_clear_start : slv(vsize - 1 DOWNTO 0);
	SIGNAL x_clear_end   : slv(vsize - 1 DOWNTO 0);
	SIGNAL y_clear_end   : slv(vsize - 1 DOWNTO 0);
	SIGNAL vraddr_reg    : slv(7 DOWNTO 0);
	SIGNAL vrdin_reg     : slv(15 DOWNTO 0);

	--Register enable
	SIGNAL clear_reg_en : std_logic;
	SIGNAL clear_load   : std_logic;
	SIGNAL vraddr_en    : std_logic;
	SIGNAL vrdin_em     : std_logic;

	--rcb FSM
	TYPE rcb_state_t IS (idle, move, flush_init, flush_done, draw_init, draw_done, clear);
	SIGNAL rcb_state, nstate   : rcb_state_t;
	SIGNAL rcb_flush_downcount : slv(rcb_flush_latency_slv_size - 1 DOWNTO 0);
	SIGNAL rcb_ready           : std_logic;
	SIGNAL rcb_skip_pw         : std_logic;

	--rmw FSM handshake SIGNAL
	SIGNAL rmw_start  : std_logic;
	SIGNAL rmw_delay  : std_logic;
	SIGNAL rmw_vwrite : std_logic;

	--pix_word_cache stuff
	SIGNAL wen_all, pw : std_logic;
	SIGNAL pixopin     : pixop_t;
	SIGNAL pixnum      : slv(3 DOWNTO 0);
	SIGNAL is_same     : std_logic;
	SIGNAL store       : store_t;

BEGIN
	--Pix_word_cache entity
	PWC : ENTITY work.pix_word_cache PORT MAP(
			clk     => clk,
			reset   => reset,
			wen_all => wen_all,
			pw      => pw,
			pixopin => pixopin,
			pixnum  => slv(pixnum),
			is_same => is_same,
			store   => store
		);

	--pix_write_cache entity
	PWC2 : ENTITY work.pix_write_cache PORT MAP(
			clk    => clk,
			reset  => reset,
			start  => rmw_start,
			delay  => rmw_delay,
			vwrite => rmw_vwrite,
			store  => store,
			addr   => vraddr_reg,
			vaddr  => vaddr,
			vdin   => vdin,
			vdout  => vdout
		);

	--XYMUX,sel needed to be controlled by RCB-FSM
	xymux : PROCESS(dbb_bus, x_clear_reg, y_clear_reg)
	BEGIN
		IF (dbb_bus.rcb_cmd = rcb_draw_white) OR (dbb_bus.rcb_cmd = rcb_draw_black) OR (dbb_bus.rcb_cmd = rcb_draw_invert) THEN
			x_in <= dbb_bus.x;
			y_in <= dbb_bus.y;
		ELSE
			x_in <= x_clear_reg;
			y_in <= y_clear_reg;
		END IF;
	END PROCESS xymux;

	--equal block
	EQUAL : PROCESS(split_word_addr, word_reg_out)
	BEGIN
		IF usgn(split_word_addr) = usgn(word_reg_out) THEN
			equal_block_out <= '1';
		ELSE
			equal_block_out <= '0';
		END IF;
	END PROCESS EQUAL;

	SPLIT : PROCESS(x_in, y_in)
	BEGIN
		pixnum(3 DOWNTO 2)          <= y_in(1 DOWNTO 0);
		pixnum(1 DOWNTO 0)          <= x_in(1 DOWNTO 0);
		split_word_addr(7 DOWNTO 4) <= y_in(5 DOWNTO 2);
		split_word_addr(3 DOWNTO 0) <= x_in(5 DOWNTO 2);
	END PROCESS SPLIT;

	--RCB-FSM Registered process
	R1 : PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		IF reset = '1' THEN
			--reset all register 
			rcb_state     <= idle;
			word_reg_out  <= (OTHERS => '0');
			x_clear_reg   <= (OTHERS => '0');
			y_clear_reg   <= (OTHERS => '0');
			x_clear_start <= (OTHERS => '0');
			y_clear_start <= (OTHERS => '0');
			x_clear_end   <= (OTHERS => '0');
			y_clear_end   <= (OTHERS => '0');
			vraddr_reg    <= (OTHERS => '0');
			vrdin_reg     <= (OTHERS => '0');
		ELSE
			IF dbb_bus.startcmd = '0' THEN
				rcb_flush_downcount <= slv(usgn(rcb_flush_downcount) - 1);
			ELSE
				rcb_flush_downcount <= slv(to_unsigned(rcb_flush_latency, rcb_flush_downcount'LENGTH));
			END IF;
			rcb_state <= nstate;
		END IF;

		--registered state change
		
	END PROCESS R1;

	dbb_delaycmd <= NOT rcb_ready;
	--assert rcb_finish when block is inactive and waiting
	--no pixel write
	--pix ram cache is empty
	--ram inactive
	rcb_finish   <= rcb_finish_1;

	--RCB-FSM combinational process
	C1 : PROCESS(rcb_state, rcb_flush_downcount, rcb_ready, dbb_bus.startcmd, reset, is_same, rmw_vwrite)
	BEGIN
		--defaults
		pw           <= '0';
		wen_all      <= '0';
		pixopin      <= (OTHERS => '0');
		pixnum       <= (OTHERS => '0');
		rmw_start    <= '0';
		rmw_delay    <= '0';
		rcb_ready    <= '1';
		vwrite       <= '0';
		rcb_finish_1 <= '0';

		CASE (rcb_state) IS
			WHEN idle =>
				IF dbb_bus.startcmd = '0' THEN
					--clear cache if wait > N cycles
					IF usgn(rcb_flush_downcount) = 0 THEN
						--just write pixel word cache to RAM, DONT write pixel
						rmw_start   <= '1';
						rmw_delay   <= '0';
						wen_all     <= '1';
						--skip writing of pixel to word cache
						rcb_skip_pw <= '1';
						--go to flush_done to check for vwrite, then back to idle
						nstate      <= flush_done;
					END IF;
				ELSE
					--if startcommand, check same/new word
					IF (equal_block_out = '1' AND (dbb_bus.rcb_cmd = rcb_draw_white OR dbb_bus.rcb_cmd = rcb_draw_black OR dbb_bus.rcb_cmd = rcb_draw_invert)) THEN
						nstate <= draw_init;
					ELSIF (equal_block_out = '0') THEN
						nstate <= flush_init;
					END IF;
				END IF;
			WHEN flush_init =>
				--rmw write to RAM
				rmw_start <= '1';
				rmw_delay <= '0';
				--pix cache write all
				wen_all   <= '1';
				nstate    <= flush_done;
			WHEN flush_done =>
				vwrite <= rmw_vwrite;
				IF rmw_vwrite = '1' THEN
					--write pixel to word cache
					IF rcb_skip_pw = '0' THEN
						pw <= '1';
					END IF;
					rcb_ready <= '1';
					nstate    <= idle;
				END IF;
			WHEN move      => NULL;
			WHEN draw_init =>
				IF dbb_bus.startcmd = '1' THEN
					nstate <= draw_done;
				END IF;
				--write pixel to word cache
				pw <= '1';
			WHEN draw_done =>
				IF dbb_bus.startcmd = '1' THEN
					nstate <= idle;
				END IF;
			WHEN clear  => NULL;
			WHEN OTHERS => NULL;
		END CASE;

		IF (usgn(rcb_flush_downcount) = 0) THEN
			rcb_finish_1 <= rcb_ready AND (NOT dbb_bus.startcmd) AND (NOT reset) AND is_same;
		END IF;

	END PROCESS C1;

END ARCHITECTURE rtl1;      
	
	
	
	
	
	
	