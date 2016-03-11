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

	SIGNAL reg_data  : store_t;
	SIGNAL reg_addr : slv(7 DOWNTO 0);

BEGIN
	vwrite <= '0';
	delay  <= '0';

	R1 : PROCESS
	BEGIN
		WAIT UNTIL falling_edge(clk);
		reg_data  <= store;
		reg_addr <= addr;
	END PROCESS R1;

	R2 : PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		state <= nstate;
		IF reset = '1' THEN
			state <= mx;
		END IF;
	END PROCESS R2;

	FSM : PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		--should've put this in a function but too lazy
		CASE state IS
			WHEN mx =>
				IF start = '1' THEN
					nstate <= m1;
					vaddr  <= slv(addr);
				ELSE
					nstate <= mx;
				END IF;
			WHEN m1 =>
				delay  <= start;
				nstate <= m2;
			WHEN m2 =>
				delay  <= start;
				nstate <= m3;
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
				vwrite <= '1';
				IF start = '1' THEN
					nstate <= m1;
					vaddr  <= slv(addr);
				ELSE
					nstate <= mx;
				END IF;
		END CASE;
	END PROCESS FSM;

END ARCHITECTURE memory_interface;