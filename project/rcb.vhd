LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;
USE work.pix_cache_pak.ALL;

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

	TYPE rcb_state_t IS (idle, move, draw, clear);
	SIGNAL rcb_state : rcb_state_t;

	--rcb stuff
	SIGNAL rcb_clear_count : slv(rcb_clear_latency_slv_size - 1 DOWNTO 0);
	SIGNAL ready           : std_logic;
	SIGNAL done            : std_logic;

	--rmw stuff
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
		ELSE
			RETURN idle;
		END IF;
	END FUNCTION rcb_next_state;

BEGIN
	--rcb_finish   <= ready AND (NOT)
	dbb_delaycmd <= dbb_bus.startcmd AND (NOT ready);

	PWC : ENTITY WORK.pix_word_cache PORT MAP(
			clk     => clk,
			reset   => reset,
			wen_all => wen_all,
			pw      => pw,
			pixopin => pixopin,
			pixnum  => slv(pixnum),
			is_same => is_same,
			store   => store
		);

	R1 : PROCESS                        --FSM stuff
	BEGIN
		WAIT UNTIL rising_edge(clk);

		IF (usgn(rcb_clear_count) > 0) THEN
			rcb_clear_count <= slv(usgn(rcb_clear_count) - 1);
		END IF;

		IF reset = '1' THEN
			rcb_state       <= idle;
			--reset clear count if doing stuff
			rcb_clear_count <= slv(to_unsigned(rcb_clear_latency, rcb_clear_count'LENGTH));
		ELSE
			IF dbb_bus.startcmd = '1' THEN
				rcb_clear_count <= slv(to_unsigned(rcb_clear_latency, rcb_clear_count'LENGTH));
			END IF;

			CASE (rcb_state) IS
				WHEN idle => rcb_state <= rcb_next_state(dbb_bus);
				WHEN draw =>
					IF done = '1' THEN
						rcb_state <= rcb_next_state(dbb_bus);
					END IF;
				WHEN clear  =>          --to be written
				WHEN OTHERS => NULL;
			END CASE;

		END IF;

	END PROCESS R1;

	C1 : PROCESS(rcb_state)
	BEGIN
		--wire everything to zero by default
		pw      <= '0';
		wen_all <= '0';
		pixopin <= (OTHERS => '0');
		pixnum  <= (OTHERS => '0');

		CASE (rcb_state) IS
			WHEN idle =>
				ready   <= '1';
				wen_all <= rmw_start AND (NOT rmw_delay);
			WHEN move =>
				ready <= '1';
			WHEN draw   =>
			--
			WHEN clear  =>
			WHEN OTHERS => NULL;
		END CASE;

	END PROCESS C1;

END ARCHITECTURE rtl1;      
	
	
	
	
	
	
	