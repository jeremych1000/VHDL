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
	--wire
	signal x_in            : slv(vsize - 1 DOWNTO 0);
	signal y_in            : slv(vsize - 1 DOWNTO 0);
	signal equal_block_out : std_logic;
	signal split_word_addr : slv(7 DOWNTO 0);

	--Register 
	signal word_reg_out  : slv(7 DOWNTO 0);
	signal x_clear_reg   : slv(vsize - 1 DOWNTO 0);
	signal y_clear_reg   : slv(vsize - 1 DOWNTO 0);
	signal x_clear_start : slv(vsize - 1 DOWNTO 0);
	signal y_clear_start : slv(vsize - 1 DOWNTO 0);
	signal x_clear_end   : slv(vsize - 1 DOWNTO 0);
	signal y_clear_end   : slv(vsize - 1 DOWNTO 0);
	signal vraddr_reg    : slv(7 DOWNTO 0);
	signal vrdin_reg     : slv(15 DOWNTO 0);

	--Register enable
	signal clear_reg_en : std_logic;
	signal clear_load   : std_logic;
	signal vraddr_en    : std_logic;
	signal vrdin_em     : std_logic;

	--rcb 
	TYPE rcb_state_t IS (idle, move, draw, clear);
	SIGNAL rcb_state       : rcb_state_t;
	SIGNAL rcb_clear_count : slv(rcb_clear_latency_slv_size - 1 DOWNTO 0);
	SIGNAL rcb_ready       : std_logic;

	--rmw FSM handshake signal
	SIGNAL rmw_start : std_logic;
	SIGNAL rmw_delay : std_logic;

	--pix_word_cache stuff
	SIGNAL wen_all, pw : std_logic;
	SIGNAL pixopin     : pixop_t;
	SIGNAL pixnum      : slv(3 DOWNTO 0);
	SIGNAL is_same     : std_logic;
	SIGNAL store       : store_t;

	--fsm next state, to prevent cluttering up process R1
	FUNCTION rcb_next_state(cmd_in : db_2_rcb) RETURN rcb_state_t IS
	BEGIN
		IF cmd_in.startcmd = '1' THEN
			CASE (cmd_in.rcb_cmd) IS
				WHEN rcb_unused                                           => RETURN idle;
				WHEN rcb_clear_0                                          => RETURN move;
				WHEN rcb_draw_white | rcb_draw_black | rcb_draw_invert    => RETURN draw;
				WHEN rcb_clear_white | rcb_clear_black | rcb_clear_invert => RETURN clear;
				WHEN OTHERS                                               => NULL;
			END CASE;
		END IF;
		RETURN idle;
	END FUNCTION rcb_next_state;

BEGIN
	dbb_delaycmd <= dbb_bus.startcmd AND (NOT rcb_ready);
	-- not sure
	--rcb_finish   <= '1' WHEN ((NOT reset) AND (NOT dbb_bus.startcmd) AND (rcb_ready)) ELSE '0';
	--

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
			vwrite => vwrite,
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
	--split_word_addr from split
	--word_reg_out from word_reg
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

		IF (usgn(rcb_clear_count) = 0) THEN
			rmw_start  <= '1';          --clear cache
			rcb_finish <= (NOT reset) AND (rcb_ready) AND (is_same) AND (NOT dbb_bus.startcmd);
		ELSE
			rcb_clear_count <= slv(usgn(rcb_clear_count) - 1);
		END IF;

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

			--reset clear count if doing stuff
			rcb_clear_count <= slv(to_unsigned(rcb_clear_latency, rcb_clear_count'LENGTH));
		ELSE
			IF dbb_bus.startcmd = '1' THEN
				rcb_clear_count <= slv(to_unsigned(rcb_clear_latency, rcb_clear_count'LENGTH));
			END IF;

			CASE (rcb_state) IS
				WHEN idle => rcb_state <= rcb_next_state(dbb_bus);
				WHEN move => rcb_state <= rcb_next_state(dbb_bus);
				WHEN draw =>
					IF rcb_ready = '1' THEN
						rcb_state <= rcb_next_state(dbb_bus);
					END IF;
				WHEN clear  => rcb_state <= rcb_next_state(dbb_bus);
				WHEN OTHERS => NULL;
			END CASE;

		END IF;

	END PROCESS R1;
	--Rcb-FSM combinational process
	C1 : PROCESS(rcb_state)
	BEGIN
		--wire everything to zero by default
		pw      <= '0';
		wen_all <= '0';
		pixopin <= (OTHERS => '0');
		pixnum  <= (OTHERS => '0');

		CASE (rcb_state) IS
			WHEN idle =>
				rcb_ready <= '1';
				IF usgn(rcb_clear_count) = 0 OR is_same = '0' THEN
					--flush cache
					wen_all <= (rmw_start AND (NOT rmw_delay));
				END IF;
			WHEN move =>
				rcb_ready <= '1';
			WHEN draw =>
				rmw_start <= ((NOT equal_block_out) AND (NOT is_same));
				wen_all <= (rmw_start AND (NOT rmw_delay));
				pw        <= '1';
			WHEN clear =>
				rmw_start <= ((NOT equal_block_out) AND (NOT is_same));
				wen_all <= (rmw_start AND (NOT rmw_delay));
				--while clearing
				rcb_ready <= '0';
			--
			WHEN OTHERS => NULL;
		END CASE;

	END PROCESS C1;

END ARCHITECTURE rtl1;      
	
	
	
	
	
	
	