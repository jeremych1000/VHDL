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
	SIGNAL pixop_reg     : store_t;
	signal vaddr_reg	 : slv(7 DOWNTO 0);

	--Register enable
	SIGNAL clear_reg_en : std_logic;
	signal word_reg_en  : std_logic;
	signal pixop_reg_en : std_logic;
	signal vaddr_reg_en : std_logic;
	--Clear counter control signal
	signal diff_x    : slv(5 downto 0);
	signal diff_y    : slv(5 downto 0);
	signal clear_run : std_logic;

	--rcb FSM
	TYPE rcb_state_t IS (IDLE,OPERATE,FLUSH,WaitRAM);
	SIGNAL rcb_state, nstate   : rcb_state_t;
	SIGNAL rcb_flush_downcount : slv(rcb_flush_latency_slv_size - 1 DOWNTO 0);
	SIGNAL rcb_ready           : std_logic;
	SIGNAL rcb_skip_pw         : std_logic;

	--rmw FSM handshake SIGNAL
	SIGNAL rmw_start  : std_logic;
	SIGNAL rmw_delay  : std_logic;
	SIGNAL rmw_vwrite : std_logic;
	signal vaddr_reg_disable: std_logic;

	--pix_word_cache stuff
	SIGNAL wen_all, pw : std_logic;
	SIGNAL pixopin     : pixop_t;
	SIGNAL pixnum      : slv(3 DOWNTO 0);
	SIGNAL is_same     : std_logic;
	SIGNAL store       : store_t;

BEGIN

	--wire assignment 
	--assert rcb_finish when block is inactive and waiting
	--no pixel write
	--pix ram cache is empty
	--ram inactive
	dbb_delaycmd <= NOT rcb_ready;
	rcb_finish   <= rcb_finish_1;
	diff_x       <= slv(usgn(dbb_bus.x) - usgn(x_clear_reg));
	diff_y       <= slv(usgn(dbb_bus.y) - usgn(y_clear_reg));
	vwrite		 <=rmw_vwrite;
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
			store  => pixop_reg,
			addr   => vaddr_reg,
			vaddr  => vaddr,
			vdin   => vdin,
			vdout  => vdout,
			vaddr_reg_disable=>vaddr_reg_disable
		);

	--XYMUX,sel needed to be controlled by RCB-FSM
	xymux : PROCESS(dbb_bus, x_clear_reg, y_clear_reg)
	BEGIN
		IF (dbb_bus.rcb_cmd = rcb_draw_white) OR (dbb_bus.rcb_cmd = rcb_draw_black) OR (dbb_bus.rcb_cmd = rcb_draw_invert) or (dbb_bus.rcb_cmd = rcb_move) THEN
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
		pixnum          <= y_in(1 DOWNTO 0) & x_in(1 DOWNTO 0);
		split_word_addr <= y_in(5 DOWNTO 2) & x_in(5 DOWNTO 2);

	END PROCESS SPLIT;

	--pixop decoder
	dbb2pixop : process(dbb_bus)
	begin
		case dbb_bus.rcb_cmd is
			when rcb_unused       => pixopin <= psame;
			when rcb_draw_white   => pixopin <= pwhite;
			when rcb_draw_black   => pixopin <= pblack;
			when rcb_draw_invert  => pixopin <= pinvert;
			when rcb_move         => pixopin <= psame;
			when rcb_clear_white  => pixopin <= pwhite;
			when rcb_clear_black  => pixopin <= pblack;
			when rcb_clear_invert => pixopin <= pinvert;
			when others           => NULL;
		end case;

	end process dbb2pixop;
	--RCB-FSM Registered process
	R1 : PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		IF reset = '1' THEN
			--reset all register 
			rcb_state           <= idle;
			word_reg_out        <= (OTHERS => '0');
			x_clear_reg         <= (OTHERS => '0');
			y_clear_reg         <= (OTHERS => '0');
			x_clear_start       <= (OTHERS => '0');
			y_clear_start       <= (OTHERS => '0');
			pixop_reg           <= (OTHERS => psame);
			rcb_flush_downcount <= slv(to_unsigned(rcb_flush_latency, rcb_flush_downcount'LENGTH));
		ELSE
			IF dbb_bus.startcmd = '0' THEN
				if usgn(rcb_flush_downcount) /= 0 then
					rcb_flush_downcount <= slv(usgn(rcb_flush_downcount) - 1);
				else
					rcb_flush_downcount <= slv(to_unsigned(rcb_flush_latency, rcb_flush_downcount'LENGTH));
				end if;
			ELSE
				rcb_flush_downcount <= slv(to_unsigned(rcb_flush_latency, rcb_flush_downcount'LENGTH));
			END IF;
			rcb_state <= nstate;
			if word_reg_en = '1' then
				word_reg_out <= slv(usgn(split_word_addr));
			end if;
			if pixop_reg_en = '1' then
				pixop_reg <= store;
			end if;
			if vaddr_reg_en ='1' then
				vaddr_reg<=word_reg_out;
			end if;
			if clear_reg_en = '1' then
				x_clear_reg   <= x_in;
				y_clear_reg   <= y_in;
				x_clear_start <= x_in;
				y_clear_start <= y_in;
			end if;
			if clear_run = '1' then
				if usgn(diff_x) = 0 then
					if usgn(diff_y) = 0 then
						--dx=0 and  dy=0 
						NULL;
					else
						--dx=0 and dy!=0
						y_clear_reg <= slv(usgn(y_clear_reg) + 1);
						x_clear_reg <= x_clear_start;
					end if;
				else
					x_clear_reg <= slv(usgn(x_clear_reg) + 1);
				end if;
			end if;
		END IF;

	END PROCESS R1;

	--RCB-FSM combinational process
	C1 : PROCESS(rcb_state, rcb_flush_downcount, rcb_ready, dbb_bus, reset, is_same, rmw_vwrite, equal_block_out,diff_x,diff_y,rmw_delay,vaddr_reg_disable)
	BEGIN
		--defaults
		pw           <= '0';
		wen_all      <= '0';
		rmw_start    <= '0';
		rcb_ready    <= '0';
		rcb_skip_pw  <= '0';
		rcb_finish_1 <= '0';
		pixop_reg_en <= '0';
		word_reg_en  <= '0';
		clear_reg_en <= '0';
		vaddr_reg_en<='0';
		clear_run<='0';
		CASE (rcb_state) IS
			WHEN idle =>
				rcb_ready <= '1';
				IF dbb_bus.startcmd = '0' THEN
					--clear cache if wait > N cycles N cannot be smaller than 4 cycles 
					IF usgn(rcb_flush_downcount) = 0 THEN
						vaddr_reg_en<='1';
						nstate <= WaitRAM;
					else
						nstate <= idle;

					END IF;

				ELSE
						nstate<=OPERATE;

				END IF;

			when WaitRAM =>
				word_reg_en<='1';
				nstate<=FLUSH;
				if rmw_delay='1' or rmw_vwrite='1' then
					word_reg_en<='0';
					nstate<=WaitRAM;
				end if;
			When FLUSH =>
				rmw_start<='1';
				if rmw_delay= '1' then
					nstate<=FLUSH;
				else
					pixop_reg_en<='1';
					wen_all<='1';
					if dbb_bus.startcmd ='0'then
						nstate<=IDLE;
					else
						nstate<=OPERATE;
					end if;
				end if;

			when OPERATE =>
					case dbb_bus.rcb_cmd is
						when rcb_draw_white | rcb_draw_black | rcb_draw_invert    => 
							if equal_block_out = '1' then
								nstate <= IDLE;
								pw<='1';
							else
								if rmw_vwrite = '0' and vaddr_reg_disable = '0' then
									vaddr_reg_en<='1';
									nstate<=WaitRAM;
								else
									vaddr_reg_en<='0';
									nstate<=OPERATE;
								end if;
							end if;
						when rcb_clear_white | rcb_clear_black | rcb_clear_invert => 
							if equal_block_out = '1' then
								pw<='1';
								if usgn(diff_x) = 0 and usgn(diff_y) = 0 then
									clear_run <= '0';
									nstate    <= IDLE;
								else
									clear_run <= '1';
									nstate    <= OPERATE;
								end if;
							else
								pw<='0';
								clear_run <= '0';
								if rmw_vwrite = '0' and vaddr_reg_disable = '0' then
									vaddr_reg_en<='1';
									nstate<=WaitRAM;
								else
									vaddr_reg_en<='0';
									nstate<=OPERATE;
								end if;
							end if;
						when rcb_move =>                                            
							nstate <= IDLE;
							clear_reg_en<='1';
						when others=>
							nstate<=IDLE;
					end case;
			WHEN OTHERS => NULL;
		END CASE;

		IF (usgn(rcb_flush_downcount) = 0) THEN
			rcb_finish_1 <= rcb_ready AND (NOT dbb_bus.startcmd) AND (NOT reset) AND is_same;
		END IF;

	END PROCESS C1;

END ARCHITECTURE rtl1;      
	
	
	
	
	
	
	