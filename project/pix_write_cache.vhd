LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;
USE work.pix_cache_pak.ALL;

ENTITY pix_write_cache IS
	PORT(
		clk, reset, start : IN  std_logic;
		delay, vwrite     : OUT std_logic; --wait is a keyword, cannot be used
		store             : IN  store_t;
		addr              : IN  std_logic_vector(7 DOWNTO 0);
		vaddr             : OUT std_logic_vector(7 DOWNTO 0);
		vdout             : IN  std_logic_vector(RAM_WORD_SIZE - 1 DOWNTO 0);
		vdin              : OUT std_logic_vector(RAM_WORD_SIZE - 1 DOWNTO 0)
	);
END ENTITY pix_write_cache;

ARCHITECTURE memory_interface of pix_write_cache IS
	ALIAS slv IS std_logic_vector;

	TYPE state_t IS (m3, m2, m1, mx);
	SIGNAL state, nstate : state_t;

	SIGNAL reg_data : store_t;
	SIGNAL reg_addr : slv(7 DOWNTO 0);

	SIGNAL vwrite_1, delay_1 : std_logic;

BEGIN
	R1 : PROCESS
	BEGIN
		WAIT UNTIL falling_edge(clk);
		reg_data <= store;
		reg_addr <= addr;
	END PROCESS R1;

	R2 : PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		IF reset = '1' THEN
			state <= mx;
		ELSE
			state <= nstate;
		END IF;
	END PROCESS R2;

	FSM : PROCESS(state, start)
	BEGIN
		vwrite_1 <= '0';
		delay_1  <= '0';
		CASE state IS
			WHEN mx =>
				IF start = '1' THEN
					nstate <= m1;
					vaddr  <= slv(addr);
				ELSE
					nstate <= mx;
				END IF;
			WHEN m1 =>
				delay_1 <= start;
				nstate  <= m2;
			WHEN m2 =>
				delay_1 <= start;
				nstate  <= m3;
				FOR i IN vdin'RANGE LOOP
					CASE store(i) IS
						WHEN psame   => vdin(i) <= vdout(i);
						WHEN pwhite  => vdin(i) <= '0';
						WHEN pblack  => vdin(i) <= '1';
						WHEN pinvert => vdin(i) <= (NOT vdout(i));
						WHEN OTHERS  => NULL;
					END CASE;
				END LOOP;
			WHEN m3 =>
				IF start = '1' THEN
					nstate <= m1;
					vaddr  <= slv(addr);
				ELSE
					nstate <= mx;
				END IF;
				vwrite_1 <= '1';
			WHEN OTHERS => NULL;
		END CASE;
	END PROCESS FSM;

	vwrite <= vwrite_1;
	delay  <= delay_1;

END ARCHITECTURE memory_interface;