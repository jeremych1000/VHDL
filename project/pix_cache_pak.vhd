LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- This package contains types and constants for use by the pix_word_cache block
-- pix_op_t is an array type used for the block ports, so this package must be
-- used by any architecture instantiated pix_word_cache.

-- Note that although the pixop_t array is similar to std_logic_vector(1 DOWNTO
-- 0) the two cannot be directly assigned. In practice pixop_t will always be
-- used via the constants defined in this package, with CASE statements to
-- detect values or generate values as required.

-- store_t is the array type based on pixop_t that stores pixel operations.
-- Again it is used in a port of pix_word_cache, so architectures instantiating
-- it will need to use this type.

PACKAGE pix_cache_pak IS
	TYPE pixop_t IS ARRAY (1 DOWNTO 0) OF std_logic;
	SUBTYPE hostop_t is std_logic_vector(1 downto 0);
	constant MovePen     : hostop_t := "00";
	constant DrawLine    : hostop_t := "01";
	constant ClearScreen : hostop_t := "10";
	constant Unused      : hostop_t := "11";
	CONSTANT psame       : pixop_t  := "00";
	CONSTANT pblack      : pixop_t  := "10";
	CONSTANT pwhite      : pixop_t  := "01";
	CONSTANT pinvert     : pixop_t  := "11";
	TYPE store_t IS ARRAY (0 TO 15) OF pixop_t;
	function slv(input : pixop_t) return std_logic_vector;
	function pixop(input : std_logic_vector(1 downto 0)) return pixop_t;
END PACKAGE pix_cache_pak;

package body pix_cache_pak is
	function slv(input : pixop_t) return std_logic_vector is
		variable result : std_logic_vector(1 downto 0);
	begin
		case input is
			when psame   => result := "00";
			when pblack  => result := "10";
			when pwhite  => result := "01";
			when pinvert => result := "11";
			when others  => NULL;
		end case;
		return result;
	end slv;

	function pixop(input : std_logic_vector(1 downto 0)) return pixop_t is
		variable result : pixop_t;
	begin
		case input is
			when "00"   => result := psame;
			when "10"   => result := pblack;
			when "01"   => result := pwhite;
			when "11"   => result := pinvert;
			when others => NULL;
		end case;
		return result;
	end pixop;
end package body pix_cache_pak;