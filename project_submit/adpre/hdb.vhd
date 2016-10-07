LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.project_pack.ALL;
USE work.ALL;

ENTITY db IS
	GENERIC(vsize : INTEGER := 6);
	PORT(
		clk          : IN  std_logic;
		instruction  : IN  std_logic_vector(15 DOWNTO 0);
		dav          : IN  std_logic;
		delaycmd     : IN  std_logic;
		reset        : IN  std_logic;
		hdb_bus      : OUT db_2_rcb;
		hdb_busy_out : OUT std_logic;
		db_finish    : OUT std_logic
	);
END ENTITY db;

ARCHITECTURE main OF db IS
	ALIAS slv IS std_logic_vector;

	--wire 
	SIGNAL x_new    : slv(5 DOWNTO 0);
	SIGNAL y_new    : slv(5 DOWNTO 0);
	SIGNAL x_old    : slv(5 DOWNTO 0);
	SIGNAL y_old    : slv(5 DOWNTO 0);
	SIGNAL FSM_en   : std_logic;
	SIGNAL x_out    : std_logic_vector(5 DOWNTO 0);
	SIGNAL y_out    : std_logic_vector(5 DOWNTO 0);
	SIGNAL rcbcmd   : std_logic_vector(2 DOWNTO 0);
	SIGNAL startcmd : std_logic;
	SIGNAL x_clear  : slv(5 DOWNTO 0);
	SIGNAL y_clear  : slv(5 DOWNTO 0);

	--draw_any_octant SIGNAL
	SIGNAL swap       : std_logic;
	SIGNAL xbias      : std_logic;
	SIGNAL negx       : std_logic;
	SIGNAL negy       : std_logic;
	SIGNAL disable    : std_logic;
	SIGNAL diff_x     : slv(6 DOWNTO 0);
	SIGNAL diff_y     : slv(6 DOWNTO 0);
	SIGNAL x_in_draw  : slv(5 DOWNTO 0);
	SIGNAL y_in_draw  : slv(5 DOWNTO 0);
	SIGNAL x_out_draw : slv(5 DOWNTO 0);
	SIGNAL y_out_draw : slv(5 DOWNTO 0);

	--Register 
	SIGNAL xynewReg : slv(11 DOWNTO 0);
	SIGNAL xyoldReg : slv(11 DOWNTO 0);
	SIGNAL penReg   : hostpen_t;
	SIGNAL opReg    : hostop_t;
	SIGNAL regEn    : std_logic;

	--FSM IO 
	SIGNAL hdb_busy   : std_logic;
	SIGNAL draw_done  : std_logic;
	SIGNAL resetx     : std_logic;
	SIGNAL draw       : std_logic;
	SIGNAL SelDrawMux : std_logic;
	SIGNAL SelOutMux  : seloutmux_t;
	SIGNAL clear_cmd  : std_logic;

	--FSM state
	--state need to be expanded to include clear screen command
	TYPE state_t IS (IDLE, DECODE, MOVE, DRAWDOT_init, DRAWDOT_do, DRAWLINE_startpt, DRAWLINE_endpt, DRAWLINE_wait, CLEAR_mov_init, CLEAR_mov, CLEAR_wait_init, ClEAR_wait);
	SIGNAL state   : state_t;
	SIGNAL n_state : state_t;

BEGIN

	--wire 
	hdb_busy_out     <= hdb_busy;
	regEn            <= dav AND (NOT hdb_busy) AND (NOT delaycmd);
	x_new            <= xynewReg(11 DOWNTO 6);
	y_new            <= xynewReg(5 DOWNTO 0);
	x_old            <= xyoldReg(11 DOWNTO 6);
	y_old            <= xyoldReg(5 DOWNTO 0);
	FSM_en           <= dav AND (NOT delaycmd);
	hdb_bus.X        <= x_out;
	hdb_bus.Y        <= y_out;
	hdb_bus.rcb_cmd  <= rcbcmd;
	hdb_bus.startcmd <= startcmd;
	diff_x           <= slv(signed(resize(unsigned(x_new), diff_x'LENGTH)) - signed(resize(unsigned(x_old), diff_x'LENGTH)));
	diff_y           <= slv(signed(resize(unsigned(y_new), diff_y'LENGTH)) - signed(resize(unsigned(y_old), diff_y'LENGTH)));
	db_finish        <= (NOT delaycmd) AND (NOT dav) AND (NOT hdb_busy);
	--rcbcmd combinational
	HostCmd2RcbCmd : PROCESS(penReg, opReg, clear_cmd, diff_x, diff_y)
	BEGIN
		CASE penReg IS
			WHEN NotUsed =>
				rcbcmd <= rcb_unused;

			WHEN White =>
				CASE opReg IS
					WHEN MovePen =>
						rcbcmd <= rcb_unused;
					WHEN Drawline =>
						rcbcmd <= rcb_draw_white;
					WHEN ClearScreen =>
						IF unsigned(diff_x) = 0 AND unsigned(diff_y) = 0 THEN
							rcbcmd <= rcb_draw_white;
						ELSE
							IF clear_cmd = '0' THEN
								rcbcmd <= rcb_move;
							ELSE
								rcbcmd <= rcb_clear_white;
							END IF;
						END IF;
					WHEN Unused =>
						rcbcmd <= rcb_unused;
					WHEN others =>
						NULL;
				END CASE;
			WHEN Black =>
				CASE opReg IS
					WHEN MovePen =>
						rcbcmd <= rcb_unused;
					WHEN Drawline =>
						rcbcmd <= rcb_draw_black;
					WHEN ClearScreen =>
						IF unsigned(diff_x) = 0 AND unsigned(diff_y) = 0 THEN
							rcbcmd <= rcb_draw_black;
						ELSE
							IF clear_cmd = '0' THEN
								rcbcmd <= rcb_move;
							ELSE
								rcbcmd <= rcb_clear_black;
							END IF;
						END IF;
					WHEN Unused =>
						rcbcmd <= rcb_unused;
					WHEN others =>
						NULL;
				END CASE;
			WHEN Invert =>
				CASE opReg IS
					WHEN MovePen =>
						rcbcmd <= rcb_unused;
					WHEN Drawline =>
						rcbcmd <= rcb_draw_invert;
					WHEN ClearScreen =>
						IF unsigned(diff_x) = 0 AND unsigned(diff_y) = 0 THEN
							rcbcmd <= rcb_draw_invert;
						ELSE
							IF clear_cmd = '0' THEN
								rcbcmd <= rcb_move;
							ELSE
								rcbcmd <= rcb_clear_invert;
							END IF;
						END IF;
					WHEN Unused =>
						rcbcmd <= rcb_unused;
					WHEN others =>
						NULL;
				END CASE;
			WHEN others =>
				NULL;
		END CASE;
	END PROCESS HostCmd2RcbCmd;

	--register 
	Reg : PROCESS
	BEGIN
		wait until clk'event AND clk = '1';
		IF reset = '0' THEN
			state <= n_state;
			IF regEn = '1' THEN
				xynewReg <= instruction(13 DOWNTO 2);
				xyoldReg <= xynewReg;
				penReg   <= instruction(1 DOWNTO 0);
				opReg    <= instruction(15 DOWNTO 14);
			END IF;
		ELSE
			state    <= IDLE;
			xynewReg <= (others => '0');
			xyoldReg <= (others => '0');
			penReg   <= (others => '0');
			opReg    <= (others => '0');
		END IF;
	END PROCESS Reg;

	--draw_any_octant
	DAO : ENTITY draw_any_octant generic map(x_new'LENGTH)
		PORT map(clk, resetx, draw, xbias, disable, x_in_draw, y_in_draw, draw_done, x_out_draw, y_out_draw, swap, negx, negy);

	--draw_any_octant Input Mux
	InMuxDraw : PROCESS(SelDrawMux, x_new, y_new, x_old, y_old)
	BEGIN
		IF SelDrawMux = '0' THEN
			x_in_draw <= x_old;
			y_in_draw <= y_old;
		ELSE
			x_in_draw <= x_new;
			y_in_draw <= y_new;
		END IF;
	END PROCESS InMuxDraw;

	--Output Mux
	OutMux : PROCESS(x_new, y_new, x_old, y_old, x_out_draw, y_out_draw, x_clear, y_clear, SelOutMux)
	BEGIN
		CASE SelOutMux IS
			WHEN mux_hold =>
				x_out <= x_old;
				y_out <= y_old;
			WHEN mux_draw_dot =>
				x_out <= x_new;
				y_out <= y_new;
			WHEN mux_draw_line =>
				x_out <= x_out_draw;
				y_out <= y_out_draw;
			WHEN mux_clear =>
				x_out <= x_clear;
				y_out <= y_clear;
			WHEN others => NULL;
		END CASE;
	END PROCESS OutMux;

	--logic that ensure left bottom corner IS sent THEN right top corner later
	xyclear : PROCESS(clear_cmd, x_new, y_new, x_old, y_old)
	BEGIN
		(x_clear, y_clear) <= my_minmax((x_old, x_new, y_old, y_new), clear_cmd);
	END PROCESS xyclear;

	--FSM combinational
	FSMcomb : PROCESS(state, delaycmd, draw_done, FSM_en, y_new, opreg, x_new, x_old, y_old)
	BEGIN
		--default FSM output

		draw       <= '0';
		resetx     <= '0';
		SelOutMux  <= mux_hold;
		SelDrawMux <= '0';
		hdb_busy   <= '1';
		startcmd   <= '0';
		clear_cmd  <= '0';

		CASE state IS
			WHEN IDLE =>
				hdb_busy <= '0';
				IF FSM_en = '1' THEN
					n_state <= DECODE;
				ELSE
					n_state <= IDLE;
				END IF;

			WHEN DECODE =>
				CASE opReg IS
					WHEN MovePen =>
						n_state <= MOVE;
					WHEN DrawLine =>
						IF (unsigned(x_new) = unsigned(x_old)) AND (unsigned(y_new) = unsigned(y_old)) THEN
							n_state <= DRAWDOT_init;
						ELSE
							n_state <= DRAWLINE_startpt;
						END IF;
					WHEN ClearScreen =>
						IF (unsigned(x_new) = unsigned(x_old)) AND (unsigned(y_new) = unsigned(y_old)) THEN
							n_state <= DRAWDOT_init;
						ELSE
							n_state <= CLEAR_mov_init;
						END IF;
					WHEN Unused => n_state <= idle;
					WHEN Others => NULL;
				END CASE;

			WHEN MOVE =>
				SelOutMux <= mux_draw_dot;
				startcmd  <= '0';
				n_state   <= IDLE;

			WHEN DRAWDOT_init =>
				SelOutMux <= mux_draw_dot;
				startcmd  <= '1';
				IF delaycmd = '0' THEN
					n_state <= DRAWDOT_do;
				ELSE
					n_state <= DRAWDOT_init;
				END IF;

			WHEN DRAWDOT_do =>
				SelOutMux <= mux_draw_dot;

				IF delaycmd = '0' THEN
					n_state  <= IDLE;
					startcmd <= '0';
				ELSE
					n_state  <= DRAWDOT_do;
					startcmd <= '1';
				END IF;

			WHEN DRAWLINE_startpt =>
				resetx    <= '1';
				SelOutMux <= mux_draw_line;
				startcmd  <= '0';
				IF delaycmd = '0' THEN
					n_state <= DRAWLINE_endpt;
				ELSE
					n_state <= DRAWLINE_startpt;
				END IF;

			WHEN DRAWLINE_endpt =>
				draw       <= '1';
				SelOutMux  <= mux_draw_line;
				SelDrawMux <= '1';
				startcmd   <= '1';
				IF delaycmd = '0' THEN
					n_state <= DRAWLINE_wait;
				ELSE
					n_state <= DRAWLINE_endpt;
				END IF;

			WHEN DRAWLINE_wait =>
				SelOutMux <= mux_draw_line;

				n_state <= IDLE;
				IF (delaycmd = '1') OR (draw_done = '0') THEN
					n_state  <= DRAWLINE_wait;
					startcmd <= '1';
				END IF;

			WHEN CLEAR_mov_init =>
				SelOutMux <= mux_clear;
				clear_cmd <= '0';
				startcmd  <= '1';
				IF delaycmd = '0' THEN
					n_state <= CLEAR_mov;
				ELSE
					n_state <= CLEAR_mov_init;
				END IF;

			WHEN CLEAR_mov =>
				SelOutMux <= mux_clear;
				clear_cmd <= '0';
				IF delaycmd = '0' THEN
					n_state  <= CLEAR_wait_init;
					startcmd <= '0';
				ELSE
					n_state  <= CLEAR_mov;
					startcmd <= '1';
				END IF;

			WHEN CLEAR_wait_init =>
				SelOutMux <= mux_clear;
				startcmd  <= '1';
				clear_cmd <= '1';
				IF delaycmd = '0' THEN
					n_state <= ClEAR_wait;
				ELSE
					n_state <= CLEAR_wait_init;
				END IF;

			WHEN CLEAR_wait =>
				SelOutMux <= mux_clear;
				clear_cmd <= '1';
				IF delaycmd = '0' THEN
					startcmd <= '0';
					n_state  <= IDLE;
				ELSE
					startcmd <= '1';
					n_state  <= CLEAR_wait;
				END IF;

		END CASE;
	END PROCESS FSMcomb;

	--Octant_CMB
	octantcomb : PROCESS(diff_x, diff_y)
	BEGIN
		--  negx  negy  swapxy xbias octant
		--   0      0    0      1      ENE
		--   0      0    1      1      NNE
		--   1      0    1      0      NNW
		--   1      0    0      0      WNW
		--   1      1    0      1      WSW
		--   1      1    1      1      SSW
		--   0      1    1      0      SSE
		--   0      1    0      0      ESE

		-- swapxy: x & y swap round on inputs & outputs
		-- negx:   invert bits OF x on inputs & outputs
		-- negy:   invert bits OF y on inputs & outputs

		-- xbias always give bias IN x axis direction, so swapxy must invert xbias
		IF to_integer(signed(diff_x)) < 0 THEN
			--dx<0
			IF to_integer(signed(diff_y)) < 0 THEN
				--dy<0
				IF abs (signed(diff_y)) > abs (signed(diff_x)) THEN
					--SSW
					negx  <= '1';
					negy  <= '1';
					swap  <= '1';
					xbias <= '1';
				ELSE
					--WSW
					negx  <= '1';
					negy  <= '1';
					swap  <= '0';
					xbias <= '1';
				END IF;
			ELSE
				--dy>0
				IF abs (signed(diff_y)) > abs (signed(diff_x)) THEN
					--NNW
					negx  <= '1';
					negy  <= '0';
					swap  <= '1';
					xbias <= '0';
				ELSE
					--WNW
					negx  <= '1';
					negy  <= '0';
					swap  <= '0';
					xbias <= '0';
				END IF;
			END IF;
		ELSE
			--dx>0
			IF to_integer(signed(diff_y)) < 0 THEN
				--dy<0
				IF abs (signed(diff_y)) > abs (signed(diff_x)) THEN
					--SSE
					negx  <= '0';
					negy  <= '1';
					swap  <= '1';
					xbias <= '0';
				ELSE
					--ESE
					negx  <= '0';
					negy  <= '1';
					swap  <= '0';
					xbias <= '0';
				END IF;
			ELSE
				--dy>0
				IF abs (signed(diff_y)) > abs (signed(diff_x)) THEN
					--NNE
					negx  <= '0';
					negy  <= '0';
					swap  <= '1';
					xbias <= '1';
				ELSE
					--ENE
					negx  <= '0';
					negy  <= '0';
					swap  <= '0';
					xbias <= '1';
				END IF;
			END IF;
		END IF;
	END PROCESS octantcomb;

	disable <= delaycmd;

END ARCHITECTURE main;
