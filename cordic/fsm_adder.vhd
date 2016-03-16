LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY fsm_adder IS
	PORT(
		clk    : IN  std_logic;
		reset  : IN  std_logic;
		empty  : IN  std_logic;
		rdreq  : OUT std_logic;
		add_en : OUT std_logic
	);
END ENTITY fsm_adder;

ARCHITECTURE fsm OF fsm_adder IS
	TYPE state_t IS (idle, pop, delay);
	SIGNAL state, nstate : state_t;
	SIGNAL delay_count   : std_logic_vector(2 DOWNTO 0);
BEGIN
	R1 : PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		IF reset = '1' THEN
			state       <= idle;
			delay_count <= "111";
		ELSE
			state <= nstate;
		END IF;
	END PROCESS R1;
	P1 : PROCESS(state)
	BEGIN
		CASE (state) IS
			WHEN idle =>
				IF empty = '1' THEN
					nstate <= pop;
				END IF;
			WHEN pop =>
				nstate <= delay;
				rdreq  <= '1';
			WHEN delay =>
				rdreq  <= '0';
				add_en <= '1';
				IF unsigned(delay_count) = 0 THEN
					delay_count <= "111";
					add_en      <= '0';
					nstate      <= idle;
				ELSE
					delay_count <= std_logic_vector(unsigned(delay_count) - 1);
				END IF;
			WHEN OTHERS => NULL;

		END CASE;
	END PROCESS P1;

END ARCHITECTURE fsm;