LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.all;

ENTITY wrapper IS PORT (
		clk      : IN  std_logic;
		reset    : IN  std_logic;
		-- bus from host
		hdb      : IN  STD_LOGIC_VECTOR(12 + 3 DOWNTO 0);
		dav      : IN  STD_LOGIC;
		hdb_busy : OUT STD_LOGIC;

		-- bus to VRAM
		vdin     : OUT STD_LOGIC_VECTOR(16 - 1 DOWNTO 0);
		vdout    : IN  STD_LOGIC_VECTOR(16 - 1 DOWNTO 0);
		vaddr    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- open port, exact size depends on VSIZE
		vwrite   : OUT STD_LOGIC;

		-- to testbench
		finish   : OUT std_logic
		);
		
		END ENTITY wrapper;
		
		
		ARCHITECTURE test OF wrapper IS 
		BEGIN
		
		a: ENTITY vdp PORT MAP (
			clk, reset, hdb, dav, hdb_busy, vdin, vdout, vaddr, vwrite, finish
		);
		
		END ARCHITECTURE test;