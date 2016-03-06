LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;


PACKAGE hdb_pak IS
	SUBTYPE hostop_t is std_logic_vector(1 downto 0);
	SUBTYPE hostpen_t is std_logic_vector(1 downto 0);
	constant MovePen : hostop_t :="00";
	constant DrawLine : hostop_t :="01";
	constant ClearScreen : hostop_t :="10";
	constant Unused  : hostop_t :="11";
	constant Notused : hostpen_t:="00";
	constant White : hostpen_t:="01";
	constant Black : hostpen_t:="10";
	constant Invert : hostpen_t:="11";
END PACKAGE hdb_pak;
