USE WORK.config_pack.ALL;
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE project_pack IS
	CONSTANT RAM_WORD_SIZE : INTEGER := 16; -- fixed for this project could be changed by other applications
	SUBTYPE hostop_t is std_logic_vector(1 downto 0);
	SUBTYPE hostpen_t is std_logic_vector(1 downto 0);
	constant MovePen     : hostop_t  := "00";
	constant DrawLine    : hostop_t  := "01";
	constant ClearScreen : hostop_t  := "10";
	constant Unused      : hostop_t  := "11";
	constant Notused     : hostpen_t := "00";
	constant White       : hostpen_t := "01";
	constant Black       : hostpen_t := "10";
	constant Invert      : hostpen_t := "11";
	TYPE db_2_rcb IS RECORD             -- possible type for interface from DB to RCD. Change as required
		X, Y     : std_logic_vector(VSIZE - 1 DOWNTO 0);
		rcb_cmd  : std_logic_vector(2 DOWNTO 0);
		startcmd : std_logic;
	END RECORD;

END PACKAGE project_pack;