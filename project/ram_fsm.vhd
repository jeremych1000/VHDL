LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- please insert appropriate entity (see tb instance for port names)
ENTITY ram_fsm IS
	PORT(
		clk, reset, start  : IN  std_logic;
		addr, data         : IN  std_logic_vector;
		delay, vwrite      : OUT std_logic;
		addr_del, data_del : OUT std_logic_vector
	);
END ENTITY ram_fsm;

ARCHITECTURE synth OF ram_fsm IS
	TYPE state_t IS (m3, m2, m1, mx);
	SIGNAL state, nstate : state_t;
BEGIN
	r1 : PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		IF (reset = '1') THEN
			state <= mx;
		ELSE
			state <= nstate;
		END IF;
	END PROCESS r1;

	r2 : PROCESS
	BEGIN
		WAIT UNTIL falling_edge(clk);
		addr_del <= addr;
		data_del <= data;
	END PROCESS r2;

	b1 : PROCESS(start, state)
	BEGIN
		vwrite <= '0';
		delay  <= '0';

		CASE state IS
			WHEN mx =>
				IF start = '1' THEN
					nstate <= m1;
				ELSE
					nstate <= mx;
				END IF;
			WHEN m1 =>
				nstate <= m2;
				delay  <= start;        --delay = (M1||M2) && START, since we are in M1 or M2, ignore first bit
			WHEN m2 =>
				nstate <= m3;
				delay  <= start;
			WHEN m3 =>
				IF start = '1' THEN
					nstate <= m1;
				ELSE
					nstate <= mx;
				END IF;
				vwrite <= '1';
		END CASE;
	END PROCESS b1;
END ARCHITECTURE synth;
