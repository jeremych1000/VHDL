LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY shift_reg IS
GENERIC(
	shift_length : INTEGER := 130
);
PORT (
	clk			: IN std_logic;
	input	: IN std_logic;
	output	: OUT std_logic
);
END ENTITY shift_reg;

ARCHITECTURE func OF shift_reg IS
SIGNAL tmp 	: std_logic_vector(shift_length-1 DOWNTO 0);
BEGIN
P1: PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		output <= tmp(0);
		tmp <= input & tmp(tmp'length-1 DOWNTO 1);
	END PROCESS P1;
END ARCHITECTURE func;