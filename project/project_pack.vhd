USE WORK.config_pack.ALL;
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE project_pack IS
	CONSTANT RAM_WORD_SIZE : INTEGER := 16; -- fixed for this project could be changed by other applications

	SUBTYPE hostop_t is std_logic_vector(1 downto 0);
	SUBTYPE hostpen_t is std_logic_vector(1 downto 0);
	SUBTYPE rcb_cmd_t IS std_logic_vector(2 DOWNTO 0);

	constant MovePen     : hostop_t := "00";
	constant DrawLine    : hostop_t := "01";
	constant ClearScreen : hostop_t := "10";
	constant Unused      : hostop_t := "11";

	constant Notused : hostpen_t := "00";
	constant White   : hostpen_t := "01";
	constant Black   : hostpen_t := "10";
	constant Invert  : hostpen_t := "11";

	CONSTANT rcb_unused       : rcb_cmd_t := "100";
	CONSTANT rcb_draw_white   : rcb_cmd_t := "001";
	CONSTANT rcb_draw_black   : rcb_cmd_t := "010";
	CONSTANT rcb_draw_invert  : rcb_cmd_t := "011";
	CONSTANT rcb_move         : rcb_cmd_t := "000";
	CONSTANT rcb_clear_white  : rcb_cmd_t := "101";
	CONSTANT rcb_clear_black  : rcb_cmd_t := "110";
	CONSTANT rcb_clear_invert : rcb_cmd_t := "111";

	CONSTANT rcb_flush_latency          : INTEGER := 30;
	CONSTANT rcb_flush_latency_slv_size : INTEGER := 8;

	TYPE db_2_rcb IS RECORD             -- possible type for interface from DB to RCD. Change as required
		X, Y     : std_logic_vector(VSIZE - 1 DOWNTO 0);
		rcb_cmd  : std_logic_vector(2 DOWNTO 0);
		startcmd : std_logic;
	END RECORD;

END PACKAGE project_pack;
