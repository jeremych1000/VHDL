LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.pix_cache_pak.ALL;

ENTITY pix_word_cache IS
	PORT(
		clk, reset, wen_all, pw : IN  std_logic;
		pixopin                 : IN  pixop_t;
		pixnum                  : IN  std_logic_vector(3 downto 0);
		store                   : OUT store_t;
		is_same                 : OUT std_logic
	);

END ENTITY pix_word_cache;

ARCHITECTURE func OF pix_word_cache IS
	SIGNAL rdin1, rdout1 : pixop_t;
	SIGNAL rdout_par     : store_t;
	SIGNAL wen_concac    : std_logic_vector(1 DOWNTO 0);
 
	ALIAS usgn IS unsigned;

	--function has return value, procedure does not
	--procedure ~ void

	PROCEDURE write_ram(SIGNAL rdout_par : OUT store_t; comp_each : std_logic; index_in : INTEGER) IS
	BEGIN
		FOR i IN rdout_par'RANGE LOOP
			IF comp_each = '0' THEN     --if comp_each is 0, just write all
				rdout_par(i) <= psame;
			ELSE
				IF i /= index_in THEN
					rdout_par(i) <= psame;
				ELSE
					rdout_par(i) <= rdin1;
				END IF;
			END IF;
		END LOOP;
	END PROCEDURE write_ram;

	FUNCTION check_same(rdout_par : store_t) RETURN std_logic IS
	BEGIN
		FOR i IN rdout_par'RANGE LOOP
			IF rdout_par(i) /= psame THEN
				RETURN '0';             --if not same, then break and return
			END IF;
		END LOOP;
		--else all same
		RETURN '1';
	END FUNCTION check_same;

BEGIN
	CHANGE : PROCESS(pw, wen_all, rdout1, pixopin)
	BEGIN
		--rdout1 -> opram
		--opout -> rdin1
		IF wen_all = '0' THEN
			CASE rdout1 IS
				WHEN psame =>
					rdin1 <= pixopin;
				WHEN pblack =>
					CASE pixopin(0) IS
						WHEN '0' =>
							rdin1 <= pblack;
						WHEN '1' =>
							rdin1 <= pwhite;
						WHEN OTHERS => NULL;
					END CASE;
				WHEN pwhite =>
					CASE pixopin(1) IS
						WHEN '0' =>
							rdin1 <= pwhite;
						WHEN '1' =>
							rdin1 <= pblack;
						WHEN OTHERS => NULL;
					END CASE;
				WHEN pinvert =>
					IF (pixopin(1) XOR pixopin(0)) = '1' THEN
						rdin1 <= pixopin;
					ELSIF (pixopin(0) = '0') THEN
						rdin1 <= pinvert;
					ELSIF (pixopin(0) = '1') THEN
						rdin1 <= psame;
					ELSE
						NULL;
					END IF;
				WHEN OTHERS => NULL;
			END CASE;
		ELSIF pw = '0' THEN
			rdin1 <= psame;
		ELSE
			rdin1 <= pixopin;
		END IF;
	END PROCESS CHANGE;

	wen_concac <= wen_all & pw;

	STORE_RAM : PROCESS
	BEGIN
		--pixnum -> raddr1
		WAIT UNTIL rising_edge(clk);
		IF reset = '1' THEN
			write_ram(rdout_par, '0', 0);
		ELSE
			IF wen_concac(1) = '1' THEN
				write_ram(rdout_par, wen_concac(0), to_integer(usgn(pixnum)));
			ELSIF wen_concac(0) = '1' THEN
				rdout_par(to_integer(usgn(pixnum))) <= rdin1;
			ELSE
				NULL;
			END IF;
		END IF;
	END PROCESS STORE_RAM;

	--propogate signal stuff
	store   <= rdout_par;
	is_same <= check_same(rdout_par);
	rdout1  <= rdout_par(to_integer(usgn(pixnum)));

END ARCHITECTURE func;
