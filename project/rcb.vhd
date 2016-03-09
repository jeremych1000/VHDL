LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;
USE work.pix_cache_pak.ALL;
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
	signal x_in: slv(5 downto 0);
	signal y_in: slv(5 downto 0);
	signal equal_block:std_logic;
	signal input_block_no:slv(7 downto 0);
	
	--Register 
	signal cache_block_no_reg:slv(7 downto 0);
	signal x_clear_reg:slv(5 downto 0);
	signal y_clear_reg:slv(5 downto 0);
	signal x_clear_start:slv(5 downto 0);
	signal y_clear_start:slv(5 downto 0);
	signal x_clear_end:slv(5 downto 0);
	signal y_clear_end:slv(5 downto 0);
	signal vraddr_reg:slv(7 downto 0);
	signal	vrdin_reg:slv(15 downto 0);
	
	--Register enable
	signal clear_reg_en :std_logic;
	signal clear_load:std_logic;
	signal vraddr_en:std_logic;
	signal vrdin_em:std_logic;
	
	--rcb FSM IO signal
	TYPE rcb_state_t IS (idle, move, draw, clear);
	SIGNAL rcb_state : rcb_state_t;
	SIGNAL rcb_clear_count : slv(rcb_clear_latency_slv_size - 1 DOWNTO 0);
	SIGNAL ready           : std_logic;
	SIGNAL done            : std_logic;

	--rmw FSM handshake signal
	SIGNAL rmw_start : std_logic;
	SIGNAL rmw_delay : std_logic;
	SIGNAL rmw_reset:std_logic;

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
--wire 
pixnum<=slv((usgn(y_in(3 downto 0))sll 2)+usgn(x_in(3 downto 0)));
input_block_no<=slv( ( resize((usgn(y_in)srl 2),8) sll 4)+ (resize(usgn(x_in),8)  srl 2)  );
--XYMUX,sel needed to be controlled by RCB-FSM
xymux: process(dbb_bus,x_clear_reg,y_clear_reg)begin
if (dbb_bus.rcb_cmd=rcb_draw_white )or (dbb_bus.rcb_cmd=rcb_draw_black)or(dbb_bus.rcb_cmd=rcb_draw_invert) then
x_in<=dbb_bus.x;
y_in<=dbb_bus.y;
else
x_in<=x_clear_reg;
y_in<=y_clear_reg;
end if;
end process xymux;


--equal block
EQUAL: process(input_block_no,cache_block_no_reg)begin
if usgn(input_block_no)=usgn(cache_block_no_reg) then
equal_block<='1';
else 
equal_block<='0';
end if;
end process EQUAL;

--rcb_finish   <= ready AND (NOT)
--delaycmd should be set in state?
	dbb_delaycmd <= dbb_bus.startcmd AND (NOT ready);
	
--Pix_cache_entity
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
		
--RCB-FSM Registered process
	R1 : PROCESS                        
	BEGIN
		WAIT UNTIL rising_edge(clk);
		rmw_reset<='0';
		IF (usgn(rcb_clear_count) > 0) THEN
			rcb_clear_count <= slv(usgn(rcb_clear_count) - 1);
		END IF;

		IF reset = '1' THEN
			--reset all register 
			rcb_state       <= idle;
			rmw_reset<='1';
			cache_block_no_reg<=(others=>'0');
			cache_block_no_reg<=(others=>'0');
			x_clear_reg<=(others=>'0');
			y_clear_reg<=(others=>'0');
			x_clear_start<=(others=>'0');
			y_clear_start<=(others=>'0');
			x_clear_end<=(others=>'0');
			y_clear_end<=(others=>'0');
			vraddr_reg<=(others=>'0');
			vrdin_reg<=(others=>'0');
			
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
	
	
	
	
	
	
	