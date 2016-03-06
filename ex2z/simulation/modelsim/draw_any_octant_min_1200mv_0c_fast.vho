-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/16/2016 18:44:17"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	draw_any_octant IS
    PORT (
	clk : IN std_logic;
	init : IN std_logic;
	draw : IN std_logic;
	xbias : IN std_logic;
	disable : IN std_logic;
	xin : IN std_logic_vector(11 DOWNTO 0);
	yin : IN std_logic_vector(11 DOWNTO 0);
	done : OUT std_logic;
	x : OUT std_logic_vector(11 DOWNTO 0);
	y : OUT std_logic_vector(11 DOWNTO 0);
	swapxy : IN std_logic;
	negx : IN std_logic;
	negy : IN std_logic
	);
END draw_any_octant;

-- Design Ports Information
-- done	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[10]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[11]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- init	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- draw	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- swapxy	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- negx	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disable	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[6]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[7]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[8]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[9]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[9]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yin[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- negy	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xbias	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF draw_any_octant IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_init : std_logic;
SIGNAL ww_draw : std_logic;
SIGNAL ww_xbias : std_logic;
SIGNAL ww_disable : std_logic;
SIGNAL ww_xin : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_yin : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL ww_x : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_swapxy : std_logic;
SIGNAL ww_negx : std_logic;
SIGNAL ww_negy : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~output_o\ : std_logic;
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[4]~output_o\ : std_logic;
SIGNAL \x[5]~output_o\ : std_logic;
SIGNAL \x[6]~output_o\ : std_logic;
SIGNAL \x[7]~output_o\ : std_logic;
SIGNAL \x[8]~output_o\ : std_logic;
SIGNAL \x[9]~output_o\ : std_logic;
SIGNAL \x[10]~output_o\ : std_logic;
SIGNAL \x[11]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \y[8]~output_o\ : std_logic;
SIGNAL \y[9]~output_o\ : std_logic;
SIGNAL \y[10]~output_o\ : std_logic;
SIGNAL \y[11]~output_o\ : std_logic;
SIGNAL \draw~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \xin[7]~input_o\ : std_logic;
SIGNAL \yin[7]~input_o\ : std_logic;
SIGNAL \swapxy~input_o\ : std_logic;
SIGNAL \negy~input_o\ : std_logic;
SIGNAL \i2|data_out[7]~7_combout\ : std_logic;
SIGNAL \disable~input_o\ : std_logic;
SIGNAL \init~input_o\ : std_logic;
SIGNAL \d1|xnew[11]~0_combout\ : std_logic;
SIGNAL \d1|y1[0]~12_combout\ : std_logic;
SIGNAL \yin[0]~input_o\ : std_logic;
SIGNAL \xin[0]~input_o\ : std_logic;
SIGNAL \i2|data_out[0]~0_combout\ : std_logic;
SIGNAL \d1|y1[11]~16_combout\ : std_logic;
SIGNAL \d1|error[12]~0_combout\ : std_logic;
SIGNAL \yin[2]~input_o\ : std_logic;
SIGNAL \xin[2]~input_o\ : std_logic;
SIGNAL \i2|data_out[2]~2_combout\ : std_logic;
SIGNAL \xin[1]~input_o\ : std_logic;
SIGNAL \yin[1]~input_o\ : std_logic;
SIGNAL \i2|data_out[1]~1_combout\ : std_logic;
SIGNAL \d1|yincr[0]~13\ : std_logic;
SIGNAL \d1|yincr[1]~15\ : std_logic;
SIGNAL \d1|yincr[2]~16_combout\ : std_logic;
SIGNAL \negx~input_o\ : std_logic;
SIGNAL \i1|data_out[2]~2_combout\ : std_logic;
SIGNAL \d1|x1[0]~12_combout\ : std_logic;
SIGNAL \i1|data_out[0]~0_combout\ : std_logic;
SIGNAL \d1|x1[11]~16_combout\ : std_logic;
SIGNAL \d1|x1[0]~13\ : std_logic;
SIGNAL \d1|x1[1]~14_combout\ : std_logic;
SIGNAL \i1|data_out[1]~1_combout\ : std_logic;
SIGNAL \d1|x1[1]~15\ : std_logic;
SIGNAL \d1|x1[2]~17_combout\ : std_logic;
SIGNAL \d1|xincr[0]~13\ : std_logic;
SIGNAL \d1|xincr[1]~15\ : std_logic;
SIGNAL \d1|xincr[2]~16_combout\ : std_logic;
SIGNAL \d1|xincr[1]~14_combout\ : std_logic;
SIGNAL \d1|xincr[0]~12_combout\ : std_logic;
SIGNAL \d1|yincr[0]~12_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[0]~0_combout\ : std_logic;
SIGNAL \d1|error[0]~3_combout\ : std_logic;
SIGNAL \d1|error[0]~2_combout\ : std_logic;
SIGNAL \d1|Add0~0_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[0]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[1]~0_combout\ : std_logic;
SIGNAL \d1|error[1]~1_combout\ : std_logic;
SIGNAL \d1|yincr[1]~14_combout\ : std_logic;
SIGNAL \d1|Add0~1\ : std_logic;
SIGNAL \d1|Add0~2_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[1]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[2]~0_combout\ : std_logic;
SIGNAL \d1|error[2]~14_combout\ : std_logic;
SIGNAL \d1|Add0~3\ : std_logic;
SIGNAL \d1|Add0~4_combout\ : std_logic;
SIGNAL \d1|Add2~1_cout\ : std_logic;
SIGNAL \d1|Add2~3\ : std_logic;
SIGNAL \d1|Add2~5_combout\ : std_logic;
SIGNAL \d1|Add2~7_combout\ : std_logic;
SIGNAL \d1|Add2~2_combout\ : std_logic;
SIGNAL \d1|Add2~4_combout\ : std_logic;
SIGNAL \d1|Add3~1_cout\ : std_logic;
SIGNAL \d1|Add3~2_combout\ : std_logic;
SIGNAL \d1|Add3~7_combout\ : std_logic;
SIGNAL \d1|Add3~3\ : std_logic;
SIGNAL \d1|Add3~4_combout\ : std_logic;
SIGNAL \d1|Add3~6_combout\ : std_logic;
SIGNAL \d1|Equal2~0_combout\ : std_logic;
SIGNAL \yin[6]~input_o\ : std_logic;
SIGNAL \xin[6]~input_o\ : std_logic;
SIGNAL \i1|data_out[6]~6_combout\ : std_logic;
SIGNAL \d1|x1[2]~18\ : std_logic;
SIGNAL \d1|x1[3]~19_combout\ : std_logic;
SIGNAL \yin[3]~input_o\ : std_logic;
SIGNAL \xin[3]~input_o\ : std_logic;
SIGNAL \i1|data_out[3]~3_combout\ : std_logic;
SIGNAL \d1|x1[3]~20\ : std_logic;
SIGNAL \d1|x1[4]~21_combout\ : std_logic;
SIGNAL \xin[4]~input_o\ : std_logic;
SIGNAL \yin[4]~input_o\ : std_logic;
SIGNAL \i1|data_out[4]~4_combout\ : std_logic;
SIGNAL \d1|x1[4]~22\ : std_logic;
SIGNAL \d1|x1[5]~23_combout\ : std_logic;
SIGNAL \yin[5]~input_o\ : std_logic;
SIGNAL \xin[5]~input_o\ : std_logic;
SIGNAL \i1|data_out[5]~5_combout\ : std_logic;
SIGNAL \d1|x1[5]~24\ : std_logic;
SIGNAL \d1|x1[6]~25_combout\ : std_logic;
SIGNAL \d1|xincr[2]~17\ : std_logic;
SIGNAL \d1|xincr[3]~19\ : std_logic;
SIGNAL \d1|xincr[4]~21\ : std_logic;
SIGNAL \d1|xincr[5]~23\ : std_logic;
SIGNAL \d1|xincr[6]~24_combout\ : std_logic;
SIGNAL \d1|error[6]~10_combout\ : std_logic;
SIGNAL \i2|data_out[6]~6_combout\ : std_logic;
SIGNAL \i2|data_out[5]~5_combout\ : std_logic;
SIGNAL \i2|data_out[4]~4_combout\ : std_logic;
SIGNAL \i2|data_out[3]~3_combout\ : std_logic;
SIGNAL \d1|yincr[2]~17\ : std_logic;
SIGNAL \d1|yincr[3]~19\ : std_logic;
SIGNAL \d1|yincr[4]~21\ : std_logic;
SIGNAL \d1|yincr[5]~23\ : std_logic;
SIGNAL \d1|yincr[6]~24_combout\ : std_logic;
SIGNAL \d1|yincr[5]~22_combout\ : std_logic;
SIGNAL \d1|yincr[4]~20_combout\ : std_logic;
SIGNAL \d1|yincr[3]~18_combout\ : std_logic;
SIGNAL \d1|Add0~5\ : std_logic;
SIGNAL \d1|Add0~6_combout\ : std_logic;
SIGNAL \d1|xincr[3]~18_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[2]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[3]~0_combout\ : std_logic;
SIGNAL \d1|error[3]~13_combout\ : std_logic;
SIGNAL \d1|Add0~7\ : std_logic;
SIGNAL \d1|Add0~8_combout\ : std_logic;
SIGNAL \d1|xincr[4]~20_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[3]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[4]~0_combout\ : std_logic;
SIGNAL \d1|error[4]~12_combout\ : std_logic;
SIGNAL \d1|Add0~9\ : std_logic;
SIGNAL \d1|Add0~10_combout\ : std_logic;
SIGNAL \d1|xincr[5]~22_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[4]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[5]~0_combout\ : std_logic;
SIGNAL \d1|error[5]~11_combout\ : std_logic;
SIGNAL \d1|Add0~11\ : std_logic;
SIGNAL \d1|Add0~12_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[5]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[6]~0_combout\ : std_logic;
SIGNAL \d1|Add3~5\ : std_logic;
SIGNAL \d1|Add3~9\ : std_logic;
SIGNAL \d1|Add3~11\ : std_logic;
SIGNAL \d1|Add3~15\ : std_logic;
SIGNAL \d1|Add3~16_combout\ : std_logic;
SIGNAL \d1|Add3~18_combout\ : std_logic;
SIGNAL \d1|Add2~6\ : std_logic;
SIGNAL \d1|Add2~9\ : std_logic;
SIGNAL \d1|Add2~12\ : std_logic;
SIGNAL \d1|Add2~15\ : std_logic;
SIGNAL \d1|Add2~17_combout\ : std_logic;
SIGNAL \d1|Add2~19_combout\ : std_logic;
SIGNAL \d1|Add3~14_combout\ : std_logic;
SIGNAL \d1|Add3~19_combout\ : std_logic;
SIGNAL \d1|Add2~14_combout\ : std_logic;
SIGNAL \d1|Add2~16_combout\ : std_logic;
SIGNAL \d1|Equal2~2_combout\ : std_logic;
SIGNAL \xin[8]~input_o\ : std_logic;
SIGNAL \yin[8]~input_o\ : std_logic;
SIGNAL \i2|data_out[8]~8_combout\ : std_logic;
SIGNAL \d1|y1[6]~28\ : std_logic;
SIGNAL \d1|y1[7]~29_combout\ : std_logic;
SIGNAL \d1|y1[7]~30\ : std_logic;
SIGNAL \d1|y1[8]~31_combout\ : std_logic;
SIGNAL \d1|yincr[6]~25\ : std_logic;
SIGNAL \d1|yincr[7]~27\ : std_logic;
SIGNAL \d1|yincr[8]~28_combout\ : std_logic;
SIGNAL \i1|data_out[8]~8_combout\ : std_logic;
SIGNAL \d1|x1[6]~26\ : std_logic;
SIGNAL \d1|x1[7]~27_combout\ : std_logic;
SIGNAL \i1|data_out[7]~7_combout\ : std_logic;
SIGNAL \d1|x1[7]~28\ : std_logic;
SIGNAL \d1|x1[8]~29_combout\ : std_logic;
SIGNAL \d1|xincr[6]~25\ : std_logic;
SIGNAL \d1|xincr[7]~27\ : std_logic;
SIGNAL \d1|xincr[8]~28_combout\ : std_logic;
SIGNAL \d1|xincr[7]~26_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[6]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[7]~0_combout\ : std_logic;
SIGNAL \d1|error[7]~9_combout\ : std_logic;
SIGNAL \d1|yincr[7]~26_combout\ : std_logic;
SIGNAL \d1|Add0~13\ : std_logic;
SIGNAL \d1|Add0~14_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[7]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[8]~0_combout\ : std_logic;
SIGNAL \d1|error[8]~8_combout\ : std_logic;
SIGNAL \d1|Add0~15\ : std_logic;
SIGNAL \d1|Add0~16_combout\ : std_logic;
SIGNAL \d1|Add2~18\ : std_logic;
SIGNAL \d1|Add2~21\ : std_logic;
SIGNAL \d1|Add2~23_combout\ : std_logic;
SIGNAL \d1|Add2~25_combout\ : std_logic;
SIGNAL \d1|Add2~20_combout\ : std_logic;
SIGNAL \d1|Add2~22_combout\ : std_logic;
SIGNAL \d1|Add3~17\ : std_logic;
SIGNAL \d1|Add3~20_combout\ : std_logic;
SIGNAL \d1|Add3~25_combout\ : std_logic;
SIGNAL \d1|Add3~21\ : std_logic;
SIGNAL \d1|Add3~22_combout\ : std_logic;
SIGNAL \d1|Add3~24_combout\ : std_logic;
SIGNAL \d1|Equal2~3_combout\ : std_logic;
SIGNAL \d1|Add3~10_combout\ : std_logic;
SIGNAL \d1|Add3~12_combout\ : std_logic;
SIGNAL \d1|Add2~8_combout\ : std_logic;
SIGNAL \d1|Add2~10_combout\ : std_logic;
SIGNAL \d1|Add3~8_combout\ : std_logic;
SIGNAL \d1|Add3~13_combout\ : std_logic;
SIGNAL \d1|Add2~11_combout\ : std_logic;
SIGNAL \d1|Add2~13_combout\ : std_logic;
SIGNAL \d1|Equal2~1_combout\ : std_logic;
SIGNAL \d1|Equal2~4_combout\ : std_logic;
SIGNAL \xbias~input_o\ : std_logic;
SIGNAL \xbias_in~combout\ : std_logic;
SIGNAL \xin[11]~input_o\ : std_logic;
SIGNAL \yin[11]~input_o\ : std_logic;
SIGNAL \i1|data_out[11]~11_combout\ : std_logic;
SIGNAL \d1|x1[8]~30\ : std_logic;
SIGNAL \d1|x1[9]~31_combout\ : std_logic;
SIGNAL \xin[9]~input_o\ : std_logic;
SIGNAL \yin[9]~input_o\ : std_logic;
SIGNAL \i1|data_out[9]~9_combout\ : std_logic;
SIGNAL \d1|x1[9]~32\ : std_logic;
SIGNAL \d1|x1[10]~33_combout\ : std_logic;
SIGNAL \yin[10]~input_o\ : std_logic;
SIGNAL \xin[10]~input_o\ : std_logic;
SIGNAL \i1|data_out[10]~10_combout\ : std_logic;
SIGNAL \d1|x1[10]~34\ : std_logic;
SIGNAL \d1|x1[11]~35_combout\ : std_logic;
SIGNAL \d1|xincr[8]~29\ : std_logic;
SIGNAL \d1|xincr[9]~31\ : std_logic;
SIGNAL \d1|xincr[10]~33\ : std_logic;
SIGNAL \d1|xincr[11]~34_combout\ : std_logic;
SIGNAL \i2|data_out[11]~11_combout\ : std_logic;
SIGNAL \d1|y1[8]~32\ : std_logic;
SIGNAL \d1|y1[9]~33_combout\ : std_logic;
SIGNAL \i2|data_out[9]~9_combout\ : std_logic;
SIGNAL \d1|y1[9]~34\ : std_logic;
SIGNAL \d1|y1[10]~35_combout\ : std_logic;
SIGNAL \i2|data_out[10]~10_combout\ : std_logic;
SIGNAL \d1|y1[10]~36\ : std_logic;
SIGNAL \d1|y1[11]~37_combout\ : std_logic;
SIGNAL \d1|yincr[8]~29\ : std_logic;
SIGNAL \d1|yincr[9]~31\ : std_logic;
SIGNAL \d1|yincr[10]~33\ : std_logic;
SIGNAL \d1|yincr[11]~34_combout\ : std_logic;
SIGNAL \d1|error[11]~5_combout\ : std_logic;
SIGNAL \d1|yincr[10]~32_combout\ : std_logic;
SIGNAL \d1|xincr[9]~30_combout\ : std_logic;
SIGNAL \d1|yincr[9]~30_combout\ : std_logic;
SIGNAL \d1|Add0~17\ : std_logic;
SIGNAL \d1|Add0~18_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[8]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[9]~0_combout\ : std_logic;
SIGNAL \d1|error[9]~7_combout\ : std_logic;
SIGNAL \d1|Add0~19\ : std_logic;
SIGNAL \d1|Add0~20_combout\ : std_logic;
SIGNAL \d1|xincr[10]~32_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[9]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[10]~0_combout\ : std_logic;
SIGNAL \d1|error[10]~6_combout\ : std_logic;
SIGNAL \d1|Add0~21\ : std_logic;
SIGNAL \d1|Add0~22_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[10]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[11]~0_combout\ : std_logic;
SIGNAL \d1|Add3~23\ : std_logic;
SIGNAL \d1|Add3~27\ : std_logic;
SIGNAL \d1|Add3~29\ : std_logic;
SIGNAL \d1|Add3~33\ : std_logic;
SIGNAL \d1|Add3~34_combout\ : std_logic;
SIGNAL \d1|Add3~37_combout\ : std_logic;
SIGNAL \d1|Add2~24\ : std_logic;
SIGNAL \d1|Add2~27\ : std_logic;
SIGNAL \d1|Add2~30\ : std_logic;
SIGNAL \d1|Add2~33\ : std_logic;
SIGNAL \d1|Add2~34_combout\ : std_logic;
SIGNAL \d1|Add2~36_combout\ : std_logic;
SIGNAL \d1|Add2~32_combout\ : std_logic;
SIGNAL \d1|Add2~37_combout\ : std_logic;
SIGNAL \d1|Add3~28_combout\ : std_logic;
SIGNAL \d1|Add3~30_combout\ : std_logic;
SIGNAL \d1|Add2~29_combout\ : std_logic;
SIGNAL \d1|Add2~31_combout\ : std_logic;
SIGNAL \d1|Add3~26_combout\ : std_logic;
SIGNAL \d1|Add3~31_combout\ : std_logic;
SIGNAL \d1|Add2~26_combout\ : std_logic;
SIGNAL \d1|Add2~28_combout\ : std_logic;
SIGNAL \d1|LessThan0~1_cout\ : std_logic;
SIGNAL \d1|LessThan0~3_cout\ : std_logic;
SIGNAL \d1|LessThan0~5_cout\ : std_logic;
SIGNAL \d1|LessThan0~7_cout\ : std_logic;
SIGNAL \d1|LessThan0~9_cout\ : std_logic;
SIGNAL \d1|LessThan0~11_cout\ : std_logic;
SIGNAL \d1|LessThan0~13_cout\ : std_logic;
SIGNAL \d1|LessThan0~15_cout\ : std_logic;
SIGNAL \d1|LessThan0~17_cout\ : std_logic;
SIGNAL \d1|LessThan0~19_cout\ : std_logic;
SIGNAL \d1|LessThan0~21_cout\ : std_logic;
SIGNAL \d1|LessThan0~23_cout\ : std_logic;
SIGNAL \d1|LessThan0~24_combout\ : std_logic;
SIGNAL \d1|y1[0]~39_combout\ : std_logic;
SIGNAL \d1|error[12]~4_combout\ : std_logic;
SIGNAL \d1|Add0~23\ : std_logic;
SIGNAL \d1|Add0~24_combout\ : std_logic;
SIGNAL \d1|C1:err2_v[11]~1\ : std_logic;
SIGNAL \d1|C1:err2_v[12]~0_combout\ : std_logic;
SIGNAL \d1|Add3~32_combout\ : std_logic;
SIGNAL \d1|Add3~36_combout\ : std_logic;
SIGNAL \d1|Equal2~6_combout\ : std_logic;
SIGNAL \d1|Equal2~7_combout\ : std_logic;
SIGNAL \d1|Equal2~5_combout\ : std_logic;
SIGNAL \d1|Equal2~8_combout\ : std_logic;
SIGNAL \d1|y1[11]~17_combout\ : std_logic;
SIGNAL \d1|y1[11]~18_combout\ : std_logic;
SIGNAL \d1|y1[0]~13\ : std_logic;
SIGNAL \d1|y1[1]~14_combout\ : std_logic;
SIGNAL \d1|y1[1]~15\ : std_logic;
SIGNAL \d1|y1[2]~19_combout\ : std_logic;
SIGNAL \d1|y1[2]~20\ : std_logic;
SIGNAL \d1|y1[3]~21_combout\ : std_logic;
SIGNAL \d1|y1[3]~22\ : std_logic;
SIGNAL \d1|y1[4]~23_combout\ : std_logic;
SIGNAL \d1|y1[4]~24\ : std_logic;
SIGNAL \d1|y1[5]~25_combout\ : std_logic;
SIGNAL \d1|y1[5]~26\ : std_logic;
SIGNAL \d1|y1[6]~27_combout\ : std_logic;
SIGNAL \d1|C1~11_combout\ : std_logic;
SIGNAL \d1|C1~10_combout\ : std_logic;
SIGNAL \d1|C1~13_combout\ : std_logic;
SIGNAL \d1|ynew[9]~feeder_combout\ : std_logic;
SIGNAL \d1|C1~12_combout\ : std_logic;
SIGNAL \d1|C1~14_combout\ : std_logic;
SIGNAL \d1|xnew[11]~feeder_combout\ : std_logic;
SIGNAL \d1|C1~6_combout\ : std_logic;
SIGNAL \d1|C1~7_combout\ : std_logic;
SIGNAL \d1|C1~5_combout\ : std_logic;
SIGNAL \d1|C1~8_combout\ : std_logic;
SIGNAL \d1|C1~9_combout\ : std_logic;
SIGNAL \d1|C1~3_combout\ : std_logic;
SIGNAL \d1|C1~2_combout\ : std_logic;
SIGNAL \d1|C1~0_combout\ : std_logic;
SIGNAL \d1|xnew[3]~feeder_combout\ : std_logic;
SIGNAL \d1|C1~1_combout\ : std_logic;
SIGNAL \d1|C1~4_combout\ : std_logic;
SIGNAL \d1|C1~15_combout\ : std_logic;
SIGNAL \d1|done~combout\ : std_logic;
SIGNAL \rd1|swapxy_out_temp~0_combout\ : std_logic;
SIGNAL \rd1|swapxy_out_temp~q\ : std_logic;
SIGNAL \rd1|negx_out_temp~0_combout\ : std_logic;
SIGNAL \rd1|negx_out_temp~q\ : std_logic;
SIGNAL \i3|data_out[0]~0_combout\ : std_logic;
SIGNAL \rd1|negy_out_temp~0_combout\ : std_logic;
SIGNAL \rd1|negy_out_temp~q\ : std_logic;
SIGNAL \s2|xout[0]~0_combout\ : std_logic;
SIGNAL \i3|data_out[1]~1_combout\ : std_logic;
SIGNAL \s2|xout[1]~1_combout\ : std_logic;
SIGNAL \i3|data_out[2]~2_combout\ : std_logic;
SIGNAL \s2|xout[2]~2_combout\ : std_logic;
SIGNAL \i3|data_out[3]~3_combout\ : std_logic;
SIGNAL \s2|xout[3]~3_combout\ : std_logic;
SIGNAL \i3|data_out[4]~4_combout\ : std_logic;
SIGNAL \s2|xout[4]~4_combout\ : std_logic;
SIGNAL \i3|data_out[5]~5_combout\ : std_logic;
SIGNAL \s2|xout[5]~5_combout\ : std_logic;
SIGNAL \i3|data_out[6]~6_combout\ : std_logic;
SIGNAL \s2|xout[6]~6_combout\ : std_logic;
SIGNAL \i3|data_out[7]~7_combout\ : std_logic;
SIGNAL \s2|xout[7]~7_combout\ : std_logic;
SIGNAL \i3|data_out[8]~8_combout\ : std_logic;
SIGNAL \s2|xout[8]~8_combout\ : std_logic;
SIGNAL \i3|data_out[9]~9_combout\ : std_logic;
SIGNAL \s2|xout[9]~9_combout\ : std_logic;
SIGNAL \i3|data_out[10]~10_combout\ : std_logic;
SIGNAL \s2|xout[10]~10_combout\ : std_logic;
SIGNAL \i3|data_out[11]~11_combout\ : std_logic;
SIGNAL \s2|xout[11]~11_combout\ : std_logic;
SIGNAL \s2|yout[0]~0_combout\ : std_logic;
SIGNAL \s2|yout[1]~1_combout\ : std_logic;
SIGNAL \s2|yout[2]~2_combout\ : std_logic;
SIGNAL \s2|yout[3]~3_combout\ : std_logic;
SIGNAL \s2|yout[4]~4_combout\ : std_logic;
SIGNAL \s2|yout[5]~5_combout\ : std_logic;
SIGNAL \s2|yout[6]~6_combout\ : std_logic;
SIGNAL \s2|yout[7]~7_combout\ : std_logic;
SIGNAL \s2|yout[8]~8_combout\ : std_logic;
SIGNAL \s2|yout[9]~9_combout\ : std_logic;
SIGNAL \s2|yout[10]~10_combout\ : std_logic;
SIGNAL \s2|yout[11]~11_combout\ : std_logic;
SIGNAL \d1|ynew\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \d1|yincr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \d1|y1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \d1|xnew\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \d1|xincr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \d1|x1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \d1|error\ : std_logic_vector(12 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_init <= init;
ww_draw <= draw;
ww_xbias <= xbias;
ww_disable <= disable;
ww_xin <= xin;
ww_yin <= yin;
done <= ww_done;
x <= ww_x;
y <= ww_y;
ww_swapxy <= swapxy;
ww_negx <= negx;
ww_negy <= negy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X50_Y41_N2
\done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|done~combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\x[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[0]~0_combout\,
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\x[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[1]~1_combout\,
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\x[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[2]~2_combout\,
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\x[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[3]~3_combout\,
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\x[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[4]~4_combout\,
	devoe => ww_devoe,
	o => \x[4]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\x[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[5]~5_combout\,
	devoe => ww_devoe,
	o => \x[5]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\x[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[6]~6_combout\,
	devoe => ww_devoe,
	o => \x[6]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\x[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[7]~7_combout\,
	devoe => ww_devoe,
	o => \x[7]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\x[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[8]~8_combout\,
	devoe => ww_devoe,
	o => \x[8]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\x[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[9]~9_combout\,
	devoe => ww_devoe,
	o => \x[9]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\x[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[10]~10_combout\,
	devoe => ww_devoe,
	o => \x[10]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\x[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|xout[11]~11_combout\,
	devoe => ww_devoe,
	o => \x[11]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[0]~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[1]~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[2]~2_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[3]~3_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\y[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[4]~4_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\y[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[5]~5_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\y[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[6]~6_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\y[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[7]~7_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\y[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[8]~8_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\y[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[9]~9_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\y[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[10]~10_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\y[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|yout[11]~11_combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOIBUF_X48_Y41_N1
\draw~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_draw,
	o => \draw~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y41_N15
\xin[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(7),
	o => \xin[7]~input_o\);

-- Location: IOIBUF_X52_Y21_N8
\yin[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(7),
	o => \yin[7]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\swapxy~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_swapxy,
	o => \swapxy~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\negy~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_negy,
	o => \negy~input_o\);

-- Location: LCCOMB_X42_Y39_N24
\i2|data_out[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[7]~7_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & (\xin[7]~input_o\)) # (!\swapxy~input_o\ & ((\yin[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[7]~input_o\,
	datab => \yin[7]~input_o\,
	datac => \swapxy~input_o\,
	datad => \negy~input_o\,
	combout => \i2|data_out[7]~7_combout\);

-- Location: IOIBUF_X46_Y41_N22
\disable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_disable,
	o => \disable~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\init~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_init,
	o => \init~input_o\);

-- Location: LCCOMB_X47_Y39_N20
\d1|xnew[11]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xnew[11]~0_combout\ = (!\disable~input_o\ & ((\init~input_o\) # (\draw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disable~input_o\,
	datac => \init~input_o\,
	datad => \draw~input_o\,
	combout => \d1|xnew[11]~0_combout\);

-- Location: FF_X42_Y39_N25
\d1|ynew[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|data_out[7]~7_combout\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(7));

-- Location: LCCOMB_X49_Y38_N8
\d1|y1[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[0]~12_combout\ = \d1|y1\(0) $ (VCC)
-- \d1|y1[0]~13\ = CARRY(\d1|y1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|y1\(0),
	datad => VCC,
	combout => \d1|y1[0]~12_combout\,
	cout => \d1|y1[0]~13\);

-- Location: IOIBUF_X52_Y16_N8
\yin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(0),
	o => \yin[0]~input_o\);

-- Location: IOIBUF_X52_Y30_N1
\xin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(0),
	o => \xin[0]~input_o\);

-- Location: LCCOMB_X48_Y39_N22
\i2|data_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[0]~0_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & ((\xin[0]~input_o\))) # (!\swapxy~input_o\ & (\yin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yin[0]~input_o\,
	datab => \negy~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[0]~input_o\,
	combout => \i2|data_out[0]~0_combout\);

-- Location: LCCOMB_X47_Y39_N28
\d1|y1[11]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[11]~16_combout\ = (\disable~input_o\) # ((!\init~input_o\ & \draw~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disable~input_o\,
	datac => \init~input_o\,
	datad => \draw~input_o\,
	combout => \d1|y1[11]~16_combout\);

-- Location: LCCOMB_X46_Y38_N14
\d1|error[12]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[12]~0_combout\ = (!\draw~input_o\ & (!\init~input_o\ & !\d1|C1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw~input_o\,
	datac => \init~input_o\,
	datad => \d1|C1~15_combout\,
	combout => \d1|error[12]~0_combout\);

-- Location: IOIBUF_X25_Y41_N1
\yin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(2),
	o => \yin[2]~input_o\);

-- Location: IOIBUF_X50_Y41_N8
\xin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(2),
	o => \xin[2]~input_o\);

-- Location: LCCOMB_X48_Y39_N30
\i2|data_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[2]~2_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & ((\xin[2]~input_o\))) # (!\swapxy~input_o\ & (\yin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yin[2]~input_o\,
	datab => \negy~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[2]~input_o\,
	combout => \i2|data_out[2]~2_combout\);

-- Location: IOIBUF_X46_Y41_N15
\xin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(1),
	o => \xin[1]~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\yin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(1),
	o => \yin[1]~input_o\);

-- Location: LCCOMB_X48_Y39_N8
\i2|data_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[1]~1_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & (\xin[1]~input_o\)) # (!\swapxy~input_o\ & ((\yin[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[1]~input_o\,
	datab => \negy~input_o\,
	datac => \swapxy~input_o\,
	datad => \yin[1]~input_o\,
	combout => \i2|data_out[1]~1_combout\);

-- Location: LCCOMB_X41_Y38_N4
\d1|yincr[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[0]~12_combout\ = (\d1|y1\(0) & (\i2|data_out[0]~0_combout\ $ (VCC))) # (!\d1|y1\(0) & ((\i2|data_out[0]~0_combout\) # (GND)))
-- \d1|yincr[0]~13\ = CARRY((\i2|data_out[0]~0_combout\) # (!\d1|y1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(0),
	datab => \i2|data_out[0]~0_combout\,
	datad => VCC,
	combout => \d1|yincr[0]~12_combout\,
	cout => \d1|yincr[0]~13\);

-- Location: LCCOMB_X41_Y38_N6
\d1|yincr[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[1]~14_combout\ = (\i2|data_out[1]~1_combout\ & ((\d1|y1\(1) & (!\d1|yincr[0]~13\)) # (!\d1|y1\(1) & (\d1|yincr[0]~13\ & VCC)))) # (!\i2|data_out[1]~1_combout\ & ((\d1|y1\(1) & ((\d1|yincr[0]~13\) # (GND))) # (!\d1|y1\(1) & (!\d1|yincr[0]~13\))))
-- \d1|yincr[1]~15\ = CARRY((\i2|data_out[1]~1_combout\ & (\d1|y1\(1) & !\d1|yincr[0]~13\)) # (!\i2|data_out[1]~1_combout\ & ((\d1|y1\(1)) # (!\d1|yincr[0]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|data_out[1]~1_combout\,
	datab => \d1|y1\(1),
	datad => VCC,
	cin => \d1|yincr[0]~13\,
	combout => \d1|yincr[1]~14_combout\,
	cout => \d1|yincr[1]~15\);

-- Location: LCCOMB_X41_Y38_N8
\d1|yincr[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[2]~16_combout\ = ((\d1|y1\(2) $ (\i2|data_out[2]~2_combout\ $ (\d1|yincr[1]~15\)))) # (GND)
-- \d1|yincr[2]~17\ = CARRY((\d1|y1\(2) & (\i2|data_out[2]~2_combout\ & !\d1|yincr[1]~15\)) # (!\d1|y1\(2) & ((\i2|data_out[2]~2_combout\) # (!\d1|yincr[1]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(2),
	datab => \i2|data_out[2]~2_combout\,
	datad => VCC,
	cin => \d1|yincr[1]~15\,
	combout => \d1|yincr[2]~16_combout\,
	cout => \d1|yincr[2]~17\);

-- Location: FF_X42_Y38_N11
\d1|yincr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[2]~16_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(2));

-- Location: IOIBUF_X46_Y41_N1
\negx~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_negx,
	o => \negx~input_o\);

-- Location: LCCOMB_X48_Y39_N2
\i1|data_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[2]~2_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & (\yin[2]~input_o\)) # (!\swapxy~input_o\ & ((\xin[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yin[2]~input_o\,
	datab => \negx~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[2]~input_o\,
	combout => \i1|data_out[2]~2_combout\);

-- Location: LCCOMB_X44_Y39_N0
\d1|x1[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[0]~12_combout\ = \d1|x1\(0) $ (VCC)
-- \d1|x1[0]~13\ = CARRY(\d1|x1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(0),
	datad => VCC,
	combout => \d1|x1[0]~12_combout\,
	cout => \d1|x1[0]~13\);

-- Location: LCCOMB_X48_Y39_N14
\i1|data_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[0]~0_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & (\yin[0]~input_o\)) # (!\swapxy~input_o\ & ((\xin[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yin[0]~input_o\,
	datab => \negx~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[0]~input_o\,
	combout => \i1|data_out[0]~0_combout\);

-- Location: LCCOMB_X47_Y39_N10
\d1|x1[11]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[11]~16_combout\ = (!\disable~input_o\ & ((\init~input_o\) # ((!\draw~input_o\ & !\d1|C1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disable~input_o\,
	datab => \draw~input_o\,
	datac => \init~input_o\,
	datad => \d1|C1~15_combout\,
	combout => \d1|x1[11]~16_combout\);

-- Location: FF_X44_Y39_N1
\d1|x1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[0]~12_combout\,
	asdata => \i1|data_out[0]~0_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(0));

-- Location: LCCOMB_X44_Y39_N2
\d1|x1[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[1]~14_combout\ = (\d1|x1\(1) & (!\d1|x1[0]~13\)) # (!\d1|x1\(1) & ((\d1|x1[0]~13\) # (GND)))
-- \d1|x1[1]~15\ = CARRY((!\d1|x1[0]~13\) # (!\d1|x1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(1),
	datad => VCC,
	cin => \d1|x1[0]~13\,
	combout => \d1|x1[1]~14_combout\,
	cout => \d1|x1[1]~15\);

-- Location: LCCOMB_X48_Y39_N4
\i1|data_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[1]~1_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & ((\yin[1]~input_o\))) # (!\swapxy~input_o\ & (\xin[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[1]~input_o\,
	datab => \negx~input_o\,
	datac => \swapxy~input_o\,
	datad => \yin[1]~input_o\,
	combout => \i1|data_out[1]~1_combout\);

-- Location: FF_X44_Y39_N3
\d1|x1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[1]~14_combout\,
	asdata => \i1|data_out[1]~1_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(1));

-- Location: LCCOMB_X44_Y39_N4
\d1|x1[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[2]~17_combout\ = (\d1|x1\(2) & (\d1|x1[1]~15\ $ (GND))) # (!\d1|x1\(2) & (!\d1|x1[1]~15\ & VCC))
-- \d1|x1[2]~18\ = CARRY((\d1|x1\(2) & !\d1|x1[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(2),
	datad => VCC,
	cin => \d1|x1[1]~15\,
	combout => \d1|x1[2]~17_combout\,
	cout => \d1|x1[2]~18\);

-- Location: FF_X44_Y39_N5
\d1|x1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[2]~17_combout\,
	asdata => \i1|data_out[2]~2_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(2));

-- Location: LCCOMB_X43_Y39_N8
\d1|xincr[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[0]~12_combout\ = (\i1|data_out[0]~0_combout\ & ((GND) # (!\d1|x1\(0)))) # (!\i1|data_out[0]~0_combout\ & (\d1|x1\(0) $ (GND)))
-- \d1|xincr[0]~13\ = CARRY((\i1|data_out[0]~0_combout\) # (!\d1|x1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|data_out[0]~0_combout\,
	datab => \d1|x1\(0),
	datad => VCC,
	combout => \d1|xincr[0]~12_combout\,
	cout => \d1|xincr[0]~13\);

-- Location: LCCOMB_X43_Y39_N10
\d1|xincr[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[1]~14_combout\ = (\d1|x1\(1) & ((\i1|data_out[1]~1_combout\ & (!\d1|xincr[0]~13\)) # (!\i1|data_out[1]~1_combout\ & ((\d1|xincr[0]~13\) # (GND))))) # (!\d1|x1\(1) & ((\i1|data_out[1]~1_combout\ & (\d1|xincr[0]~13\ & VCC)) # 
-- (!\i1|data_out[1]~1_combout\ & (!\d1|xincr[0]~13\))))
-- \d1|xincr[1]~15\ = CARRY((\d1|x1\(1) & ((!\d1|xincr[0]~13\) # (!\i1|data_out[1]~1_combout\))) # (!\d1|x1\(1) & (!\i1|data_out[1]~1_combout\ & !\d1|xincr[0]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(1),
	datab => \i1|data_out[1]~1_combout\,
	datad => VCC,
	cin => \d1|xincr[0]~13\,
	combout => \d1|xincr[1]~14_combout\,
	cout => \d1|xincr[1]~15\);

-- Location: LCCOMB_X43_Y39_N12
\d1|xincr[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[2]~16_combout\ = ((\i1|data_out[2]~2_combout\ $ (\d1|x1\(2) $ (\d1|xincr[1]~15\)))) # (GND)
-- \d1|xincr[2]~17\ = CARRY((\i1|data_out[2]~2_combout\ & ((!\d1|xincr[1]~15\) # (!\d1|x1\(2)))) # (!\i1|data_out[2]~2_combout\ & (!\d1|x1\(2) & !\d1|xincr[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|data_out[2]~2_combout\,
	datab => \d1|x1\(2),
	datad => VCC,
	cin => \d1|xincr[1]~15\,
	combout => \d1|xincr[2]~16_combout\,
	cout => \d1|xincr[2]~17\);

-- Location: FF_X43_Y39_N13
\d1|xincr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[2]~16_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(2));

-- Location: FF_X43_Y39_N11
\d1|xincr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[1]~14_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(1));

-- Location: FF_X43_Y38_N5
\d1|xincr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|xincr[0]~12_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(0));

-- Location: FF_X42_Y38_N7
\d1|yincr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[0]~12_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(0));

-- Location: LCCOMB_X43_Y38_N4
\d1|C1:err2_v[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[0]~0_combout\ = (\d1|xincr\(0) & (\d1|Add0~0_combout\ $ (VCC))) # (!\d1|xincr\(0) & ((\d1|Add0~0_combout\) # (GND)))
-- \d1|C1:err2_v[0]~1\ = CARRY((\d1|Add0~0_combout\) # (!\d1|xincr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|xincr\(0),
	datab => \d1|Add0~0_combout\,
	datad => VCC,
	combout => \d1|C1:err2_v[0]~0_combout\,
	cout => \d1|C1:err2_v[0]~1\);

-- Location: LCCOMB_X47_Y38_N6
\d1|error[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[0]~3_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & ((\d1|Add0~0_combout\))) # (!\d1|y1[0]~39_combout\ & (\d1|C1:err2_v[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error[12]~0_combout\,
	datab => \d1|C1:err2_v[0]~0_combout\,
	datac => \d1|Add0~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[0]~3_combout\);

-- Location: LCCOMB_X47_Y39_N30
\d1|error[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[0]~2_combout\ = (!\disable~input_o\ & ((\draw~input_o\) # (!\d1|C1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw~input_o\,
	datac => \disable~input_o\,
	datad => \d1|C1~15_combout\,
	combout => \d1|error[0]~2_combout\);

-- Location: FF_X47_Y38_N7
\d1|error[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[0]~3_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(0));

-- Location: LCCOMB_X42_Y38_N6
\d1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~0_combout\ = (\d1|yincr\(0) & (\d1|error\(0) $ (VCC))) # (!\d1|yincr\(0) & (\d1|error\(0) & VCC))
-- \d1|Add0~1\ = CARRY((\d1|yincr\(0) & \d1|error\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|yincr\(0),
	datab => \d1|error\(0),
	datad => VCC,
	combout => \d1|Add0~0_combout\,
	cout => \d1|Add0~1\);

-- Location: LCCOMB_X43_Y38_N6
\d1|C1:err2_v[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[1]~0_combout\ = (\d1|Add0~2_combout\ & ((\d1|xincr\(1) & (!\d1|C1:err2_v[0]~1\)) # (!\d1|xincr\(1) & (\d1|C1:err2_v[0]~1\ & VCC)))) # (!\d1|Add0~2_combout\ & ((\d1|xincr\(1) & ((\d1|C1:err2_v[0]~1\) # (GND))) # (!\d1|xincr\(1) & 
-- (!\d1|C1:err2_v[0]~1\))))
-- \d1|C1:err2_v[1]~1\ = CARRY((\d1|Add0~2_combout\ & (\d1|xincr\(1) & !\d1|C1:err2_v[0]~1\)) # (!\d1|Add0~2_combout\ & ((\d1|xincr\(1)) # (!\d1|C1:err2_v[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~2_combout\,
	datab => \d1|xincr\(1),
	datad => VCC,
	cin => \d1|C1:err2_v[0]~1\,
	combout => \d1|C1:err2_v[1]~0_combout\,
	cout => \d1|C1:err2_v[1]~1\);

-- Location: LCCOMB_X47_Y38_N24
\d1|error[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[1]~1_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & (\d1|Add0~2_combout\)) # (!\d1|y1[0]~39_combout\ & ((\d1|C1:err2_v[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error[12]~0_combout\,
	datab => \d1|Add0~2_combout\,
	datac => \d1|C1:err2_v[1]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[1]~1_combout\);

-- Location: FF_X47_Y38_N25
\d1|error[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[1]~1_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(1));

-- Location: FF_X42_Y38_N9
\d1|yincr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[1]~14_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(1));

-- Location: LCCOMB_X42_Y38_N8
\d1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~2_combout\ = (\d1|error\(1) & ((\d1|yincr\(1) & (\d1|Add0~1\ & VCC)) # (!\d1|yincr\(1) & (!\d1|Add0~1\)))) # (!\d1|error\(1) & ((\d1|yincr\(1) & (!\d1|Add0~1\)) # (!\d1|yincr\(1) & ((\d1|Add0~1\) # (GND)))))
-- \d1|Add0~3\ = CARRY((\d1|error\(1) & (!\d1|yincr\(1) & !\d1|Add0~1\)) # (!\d1|error\(1) & ((!\d1|Add0~1\) # (!\d1|yincr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error\(1),
	datab => \d1|yincr\(1),
	datad => VCC,
	cin => \d1|Add0~1\,
	combout => \d1|Add0~2_combout\,
	cout => \d1|Add0~3\);

-- Location: LCCOMB_X43_Y38_N8
\d1|C1:err2_v[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[2]~0_combout\ = ((\d1|Add0~4_combout\ $ (\d1|xincr\(2) $ (\d1|C1:err2_v[1]~1\)))) # (GND)
-- \d1|C1:err2_v[2]~1\ = CARRY((\d1|Add0~4_combout\ & ((!\d1|C1:err2_v[1]~1\) # (!\d1|xincr\(2)))) # (!\d1|Add0~4_combout\ & (!\d1|xincr\(2) & !\d1|C1:err2_v[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~4_combout\,
	datab => \d1|xincr\(2),
	datad => VCC,
	cin => \d1|C1:err2_v[1]~1\,
	combout => \d1|C1:err2_v[2]~0_combout\,
	cout => \d1|C1:err2_v[2]~1\);

-- Location: LCCOMB_X47_Y38_N14
\d1|error[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[2]~14_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & (\d1|Add0~4_combout\)) # (!\d1|y1[0]~39_combout\ & ((\d1|C1:err2_v[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~4_combout\,
	datab => \d1|C1:err2_v[2]~0_combout\,
	datac => \d1|error[12]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[2]~14_combout\);

-- Location: FF_X47_Y38_N15
\d1|error[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[2]~14_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(2));

-- Location: LCCOMB_X42_Y38_N10
\d1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~4_combout\ = ((\d1|yincr\(2) $ (\d1|error\(2) $ (!\d1|Add0~3\)))) # (GND)
-- \d1|Add0~5\ = CARRY((\d1|yincr\(2) & ((\d1|error\(2)) # (!\d1|Add0~3\))) # (!\d1|yincr\(2) & (\d1|error\(2) & !\d1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|yincr\(2),
	datab => \d1|error\(2),
	datad => VCC,
	cin => \d1|Add0~3\,
	combout => \d1|Add0~4_combout\,
	cout => \d1|Add0~5\);

-- Location: LCCOMB_X51_Y38_N4
\d1|Add2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~1_cout\ = CARRY(!\d1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~0_combout\,
	datad => VCC,
	cout => \d1|Add2~1_cout\);

-- Location: LCCOMB_X51_Y38_N6
\d1|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~2_combout\ = (\d1|Add0~2_combout\ & ((\d1|Add2~1_cout\) # (GND))) # (!\d1|Add0~2_combout\ & (!\d1|Add2~1_cout\))
-- \d1|Add2~3\ = CARRY((\d1|Add0~2_combout\) # (!\d1|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~2_combout\,
	datad => VCC,
	cin => \d1|Add2~1_cout\,
	combout => \d1|Add2~2_combout\,
	cout => \d1|Add2~3\);

-- Location: LCCOMB_X51_Y38_N8
\d1|Add2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~5_combout\ = (\d1|Add0~4_combout\ & (!\d1|Add2~3\ & VCC)) # (!\d1|Add0~4_combout\ & (\d1|Add2~3\ $ (GND)))
-- \d1|Add2~6\ = CARRY((!\d1|Add0~4_combout\ & !\d1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~4_combout\,
	datad => VCC,
	cin => \d1|Add2~3\,
	combout => \d1|Add2~5_combout\,
	cout => \d1|Add2~6\);

-- Location: LCCOMB_X47_Y38_N10
\d1|Add2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~7_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~5_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~4_combout\,
	datac => \d1|Add0~24_combout\,
	datad => \d1|Add2~5_combout\,
	combout => \d1|Add2~7_combout\);

-- Location: LCCOMB_X47_Y38_N28
\d1|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~4_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~2_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~2_combout\,
	datac => \d1|Add0~24_combout\,
	datad => \d1|Add2~2_combout\,
	combout => \d1|Add2~4_combout\);

-- Location: LCCOMB_X44_Y38_N2
\d1|Add3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~1_cout\ = CARRY(!\d1|C1:err2_v[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[0]~0_combout\,
	datad => VCC,
	cout => \d1|Add3~1_cout\);

-- Location: LCCOMB_X44_Y38_N4
\d1|Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~2_combout\ = (\d1|C1:err2_v[1]~0_combout\ & ((\d1|Add3~1_cout\) # (GND))) # (!\d1|C1:err2_v[1]~0_combout\ & (!\d1|Add3~1_cout\))
-- \d1|Add3~3\ = CARRY((\d1|C1:err2_v[1]~0_combout\) # (!\d1|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[1]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~1_cout\,
	combout => \d1|Add3~2_combout\,
	cout => \d1|Add3~3\);

-- Location: LCCOMB_X43_Y38_N0
\d1|Add3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~7_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~2_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[1]~0_combout\,
	datac => \d1|Add3~2_combout\,
	datad => \d1|C1:err2_v[12]~0_combout\,
	combout => \d1|Add3~7_combout\);

-- Location: LCCOMB_X44_Y38_N6
\d1|Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~4_combout\ = (\d1|C1:err2_v[2]~0_combout\ & (!\d1|Add3~3\ & VCC)) # (!\d1|C1:err2_v[2]~0_combout\ & (\d1|Add3~3\ $ (GND)))
-- \d1|Add3~5\ = CARRY((!\d1|C1:err2_v[2]~0_combout\ & !\d1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[2]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~3\,
	combout => \d1|Add3~4_combout\,
	cout => \d1|Add3~5\);

-- Location: LCCOMB_X47_Y38_N0
\d1|Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~6_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~4_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[2]~0_combout\,
	datac => \d1|Add3~4_combout\,
	datad => \d1|C1:err2_v[12]~0_combout\,
	combout => \d1|Add3~6_combout\);

-- Location: LCCOMB_X47_Y38_N22
\d1|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~0_combout\ = (\d1|Add2~7_combout\ & (\d1|Add3~6_combout\ & (\d1|Add2~4_combout\ $ (!\d1|Add3~7_combout\)))) # (!\d1|Add2~7_combout\ & (!\d1|Add3~6_combout\ & (\d1|Add2~4_combout\ $ (!\d1|Add3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add2~7_combout\,
	datab => \d1|Add2~4_combout\,
	datac => \d1|Add3~7_combout\,
	datad => \d1|Add3~6_combout\,
	combout => \d1|Equal2~0_combout\);

-- Location: IOIBUF_X52_Y21_N15
\yin[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(6),
	o => \yin[6]~input_o\);

-- Location: IOIBUF_X52_Y21_N22
\xin[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(6),
	o => \xin[6]~input_o\);

-- Location: LCCOMB_X46_Y39_N6
\i1|data_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[6]~6_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & (\yin[6]~input_o\)) # (!\swapxy~input_o\ & ((\xin[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \negx~input_o\,
	datab => \yin[6]~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[6]~input_o\,
	combout => \i1|data_out[6]~6_combout\);

-- Location: LCCOMB_X44_Y39_N6
\d1|x1[3]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[3]~19_combout\ = (\d1|x1\(3) & (!\d1|x1[2]~18\)) # (!\d1|x1\(3) & ((\d1|x1[2]~18\) # (GND)))
-- \d1|x1[3]~20\ = CARRY((!\d1|x1[2]~18\) # (!\d1|x1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(3),
	datad => VCC,
	cin => \d1|x1[2]~18\,
	combout => \d1|x1[3]~19_combout\,
	cout => \d1|x1[3]~20\);

-- Location: IOIBUF_X48_Y41_N8
\yin[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(3),
	o => \yin[3]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\xin[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(3),
	o => \xin[3]~input_o\);

-- Location: LCCOMB_X48_Y39_N28
\i1|data_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[3]~3_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & (\yin[3]~input_o\)) # (!\swapxy~input_o\ & ((\xin[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yin[3]~input_o\,
	datab => \negx~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[3]~input_o\,
	combout => \i1|data_out[3]~3_combout\);

-- Location: FF_X44_Y39_N7
\d1|x1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[3]~19_combout\,
	asdata => \i1|data_out[3]~3_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(3));

-- Location: LCCOMB_X44_Y39_N8
\d1|x1[4]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[4]~21_combout\ = (\d1|x1\(4) & (\d1|x1[3]~20\ $ (GND))) # (!\d1|x1\(4) & (!\d1|x1[3]~20\ & VCC))
-- \d1|x1[4]~22\ = CARRY((\d1|x1\(4) & !\d1|x1[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(4),
	datad => VCC,
	cin => \d1|x1[3]~20\,
	combout => \d1|x1[4]~21_combout\,
	cout => \d1|x1[4]~22\);

-- Location: IOIBUF_X38_Y41_N8
\xin[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(4),
	o => \xin[4]~input_o\);

-- Location: IOIBUF_X25_Y41_N8
\yin[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(4),
	o => \yin[4]~input_o\);

-- Location: LCCOMB_X46_Y39_N4
\i1|data_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[4]~4_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & ((\yin[4]~input_o\))) # (!\swapxy~input_o\ & (\xin[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[4]~input_o\,
	datab => \swapxy~input_o\,
	datac => \negx~input_o\,
	datad => \yin[4]~input_o\,
	combout => \i1|data_out[4]~4_combout\);

-- Location: FF_X44_Y39_N9
\d1|x1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[4]~21_combout\,
	asdata => \i1|data_out[4]~4_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(4));

-- Location: LCCOMB_X44_Y39_N10
\d1|x1[5]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[5]~23_combout\ = (\d1|x1\(5) & (!\d1|x1[4]~22\)) # (!\d1|x1\(5) & ((\d1|x1[4]~22\) # (GND)))
-- \d1|x1[5]~24\ = CARRY((!\d1|x1[4]~22\) # (!\d1|x1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(5),
	datad => VCC,
	cin => \d1|x1[4]~22\,
	combout => \d1|x1[5]~23_combout\,
	cout => \d1|x1[5]~24\);

-- Location: IOIBUF_X52_Y30_N8
\yin[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(5),
	o => \yin[5]~input_o\);

-- Location: IOIBUF_X52_Y15_N1
\xin[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(5),
	o => \xin[5]~input_o\);

-- Location: LCCOMB_X50_Y37_N12
\i1|data_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[5]~5_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & (\yin[5]~input_o\)) # (!\swapxy~input_o\ & ((\xin[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \negx~input_o\,
	datab => \yin[5]~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[5]~input_o\,
	combout => \i1|data_out[5]~5_combout\);

-- Location: FF_X44_Y39_N11
\d1|x1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[5]~23_combout\,
	asdata => \i1|data_out[5]~5_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(5));

-- Location: LCCOMB_X44_Y39_N12
\d1|x1[6]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[6]~25_combout\ = (\d1|x1\(6) & (\d1|x1[5]~24\ $ (GND))) # (!\d1|x1\(6) & (!\d1|x1[5]~24\ & VCC))
-- \d1|x1[6]~26\ = CARRY((\d1|x1\(6) & !\d1|x1[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(6),
	datad => VCC,
	cin => \d1|x1[5]~24\,
	combout => \d1|x1[6]~25_combout\,
	cout => \d1|x1[6]~26\);

-- Location: FF_X44_Y39_N13
\d1|x1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[6]~25_combout\,
	asdata => \i1|data_out[6]~6_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(6));

-- Location: LCCOMB_X43_Y39_N14
\d1|xincr[3]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[3]~18_combout\ = (\d1|x1\(3) & ((\i1|data_out[3]~3_combout\ & (!\d1|xincr[2]~17\)) # (!\i1|data_out[3]~3_combout\ & ((\d1|xincr[2]~17\) # (GND))))) # (!\d1|x1\(3) & ((\i1|data_out[3]~3_combout\ & (\d1|xincr[2]~17\ & VCC)) # 
-- (!\i1|data_out[3]~3_combout\ & (!\d1|xincr[2]~17\))))
-- \d1|xincr[3]~19\ = CARRY((\d1|x1\(3) & ((!\d1|xincr[2]~17\) # (!\i1|data_out[3]~3_combout\))) # (!\d1|x1\(3) & (!\i1|data_out[3]~3_combout\ & !\d1|xincr[2]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(3),
	datab => \i1|data_out[3]~3_combout\,
	datad => VCC,
	cin => \d1|xincr[2]~17\,
	combout => \d1|xincr[3]~18_combout\,
	cout => \d1|xincr[3]~19\);

-- Location: LCCOMB_X43_Y39_N16
\d1|xincr[4]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[4]~20_combout\ = ((\i1|data_out[4]~4_combout\ $ (\d1|x1\(4) $ (\d1|xincr[3]~19\)))) # (GND)
-- \d1|xincr[4]~21\ = CARRY((\i1|data_out[4]~4_combout\ & ((!\d1|xincr[3]~19\) # (!\d1|x1\(4)))) # (!\i1|data_out[4]~4_combout\ & (!\d1|x1\(4) & !\d1|xincr[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|data_out[4]~4_combout\,
	datab => \d1|x1\(4),
	datad => VCC,
	cin => \d1|xincr[3]~19\,
	combout => \d1|xincr[4]~20_combout\,
	cout => \d1|xincr[4]~21\);

-- Location: LCCOMB_X43_Y39_N18
\d1|xincr[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[5]~22_combout\ = (\d1|x1\(5) & ((\i1|data_out[5]~5_combout\ & (!\d1|xincr[4]~21\)) # (!\i1|data_out[5]~5_combout\ & ((\d1|xincr[4]~21\) # (GND))))) # (!\d1|x1\(5) & ((\i1|data_out[5]~5_combout\ & (\d1|xincr[4]~21\ & VCC)) # 
-- (!\i1|data_out[5]~5_combout\ & (!\d1|xincr[4]~21\))))
-- \d1|xincr[5]~23\ = CARRY((\d1|x1\(5) & ((!\d1|xincr[4]~21\) # (!\i1|data_out[5]~5_combout\))) # (!\d1|x1\(5) & (!\i1|data_out[5]~5_combout\ & !\d1|xincr[4]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(5),
	datab => \i1|data_out[5]~5_combout\,
	datad => VCC,
	cin => \d1|xincr[4]~21\,
	combout => \d1|xincr[5]~22_combout\,
	cout => \d1|xincr[5]~23\);

-- Location: LCCOMB_X43_Y39_N20
\d1|xincr[6]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[6]~24_combout\ = ((\i1|data_out[6]~6_combout\ $ (\d1|x1\(6) $ (\d1|xincr[5]~23\)))) # (GND)
-- \d1|xincr[6]~25\ = CARRY((\i1|data_out[6]~6_combout\ & ((!\d1|xincr[5]~23\) # (!\d1|x1\(6)))) # (!\i1|data_out[6]~6_combout\ & (!\d1|x1\(6) & !\d1|xincr[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|data_out[6]~6_combout\,
	datab => \d1|x1\(6),
	datad => VCC,
	cin => \d1|xincr[5]~23\,
	combout => \d1|xincr[6]~24_combout\,
	cout => \d1|xincr[6]~25\);

-- Location: FF_X43_Y39_N21
\d1|xincr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[6]~24_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(6));

-- Location: LCCOMB_X46_Y38_N0
\d1|error[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[6]~10_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & ((\d1|Add0~12_combout\))) # (!\d1|y1[0]~39_combout\ & (\d1|C1:err2_v[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[6]~0_combout\,
	datab => \d1|error[12]~0_combout\,
	datac => \d1|Add0~12_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[6]~10_combout\);

-- Location: FF_X46_Y38_N1
\d1|error[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[6]~10_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(6));

-- Location: LCCOMB_X46_Y39_N30
\i2|data_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[6]~6_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & ((\xin[6]~input_o\))) # (!\swapxy~input_o\ & (\yin[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \negy~input_o\,
	datab => \yin[6]~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[6]~input_o\,
	combout => \i2|data_out[6]~6_combout\);

-- Location: LCCOMB_X50_Y37_N28
\i2|data_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[5]~5_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & (\xin[5]~input_o\)) # (!\swapxy~input_o\ & ((\yin[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[5]~input_o\,
	datab => \negy~input_o\,
	datac => \swapxy~input_o\,
	datad => \yin[5]~input_o\,
	combout => \i2|data_out[5]~5_combout\);

-- Location: LCCOMB_X46_Y39_N28
\i2|data_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[4]~4_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & (\xin[4]~input_o\)) # (!\swapxy~input_o\ & ((\yin[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[4]~input_o\,
	datab => \swapxy~input_o\,
	datac => \negy~input_o\,
	datad => \yin[4]~input_o\,
	combout => \i2|data_out[4]~4_combout\);

-- Location: LCCOMB_X48_Y39_N0
\i2|data_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[3]~3_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & ((\xin[3]~input_o\))) # (!\swapxy~input_o\ & (\yin[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yin[3]~input_o\,
	datab => \negy~input_o\,
	datac => \swapxy~input_o\,
	datad => \xin[3]~input_o\,
	combout => \i2|data_out[3]~3_combout\);

-- Location: LCCOMB_X41_Y38_N10
\d1|yincr[3]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[3]~18_combout\ = (\i2|data_out[3]~3_combout\ & ((\d1|y1\(3) & (!\d1|yincr[2]~17\)) # (!\d1|y1\(3) & (\d1|yincr[2]~17\ & VCC)))) # (!\i2|data_out[3]~3_combout\ & ((\d1|y1\(3) & ((\d1|yincr[2]~17\) # (GND))) # (!\d1|y1\(3) & (!\d1|yincr[2]~17\))))
-- \d1|yincr[3]~19\ = CARRY((\i2|data_out[3]~3_combout\ & (\d1|y1\(3) & !\d1|yincr[2]~17\)) # (!\i2|data_out[3]~3_combout\ & ((\d1|y1\(3)) # (!\d1|yincr[2]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|data_out[3]~3_combout\,
	datab => \d1|y1\(3),
	datad => VCC,
	cin => \d1|yincr[2]~17\,
	combout => \d1|yincr[3]~18_combout\,
	cout => \d1|yincr[3]~19\);

-- Location: LCCOMB_X41_Y38_N12
\d1|yincr[4]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[4]~20_combout\ = ((\d1|y1\(4) $ (\i2|data_out[4]~4_combout\ $ (\d1|yincr[3]~19\)))) # (GND)
-- \d1|yincr[4]~21\ = CARRY((\d1|y1\(4) & (\i2|data_out[4]~4_combout\ & !\d1|yincr[3]~19\)) # (!\d1|y1\(4) & ((\i2|data_out[4]~4_combout\) # (!\d1|yincr[3]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(4),
	datab => \i2|data_out[4]~4_combout\,
	datad => VCC,
	cin => \d1|yincr[3]~19\,
	combout => \d1|yincr[4]~20_combout\,
	cout => \d1|yincr[4]~21\);

-- Location: LCCOMB_X41_Y38_N14
\d1|yincr[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[5]~22_combout\ = (\i2|data_out[5]~5_combout\ & ((\d1|y1\(5) & (!\d1|yincr[4]~21\)) # (!\d1|y1\(5) & (\d1|yincr[4]~21\ & VCC)))) # (!\i2|data_out[5]~5_combout\ & ((\d1|y1\(5) & ((\d1|yincr[4]~21\) # (GND))) # (!\d1|y1\(5) & (!\d1|yincr[4]~21\))))
-- \d1|yincr[5]~23\ = CARRY((\i2|data_out[5]~5_combout\ & (\d1|y1\(5) & !\d1|yincr[4]~21\)) # (!\i2|data_out[5]~5_combout\ & ((\d1|y1\(5)) # (!\d1|yincr[4]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|data_out[5]~5_combout\,
	datab => \d1|y1\(5),
	datad => VCC,
	cin => \d1|yincr[4]~21\,
	combout => \d1|yincr[5]~22_combout\,
	cout => \d1|yincr[5]~23\);

-- Location: LCCOMB_X41_Y38_N16
\d1|yincr[6]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[6]~24_combout\ = ((\d1|y1\(6) $ (\i2|data_out[6]~6_combout\ $ (\d1|yincr[5]~23\)))) # (GND)
-- \d1|yincr[6]~25\ = CARRY((\d1|y1\(6) & (\i2|data_out[6]~6_combout\ & !\d1|yincr[5]~23\)) # (!\d1|y1\(6) & ((\i2|data_out[6]~6_combout\) # (!\d1|yincr[5]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(6),
	datab => \i2|data_out[6]~6_combout\,
	datad => VCC,
	cin => \d1|yincr[5]~23\,
	combout => \d1|yincr[6]~24_combout\,
	cout => \d1|yincr[6]~25\);

-- Location: FF_X42_Y38_N19
\d1|yincr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[6]~24_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(6));

-- Location: FF_X42_Y38_N17
\d1|yincr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[5]~22_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(5));

-- Location: FF_X42_Y38_N15
\d1|yincr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[4]~20_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(4));

-- Location: FF_X42_Y38_N13
\d1|yincr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[3]~18_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(3));

-- Location: LCCOMB_X42_Y38_N12
\d1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~6_combout\ = (\d1|yincr\(3) & ((\d1|error\(3) & (\d1|Add0~5\ & VCC)) # (!\d1|error\(3) & (!\d1|Add0~5\)))) # (!\d1|yincr\(3) & ((\d1|error\(3) & (!\d1|Add0~5\)) # (!\d1|error\(3) & ((\d1|Add0~5\) # (GND)))))
-- \d1|Add0~7\ = CARRY((\d1|yincr\(3) & (!\d1|error\(3) & !\d1|Add0~5\)) # (!\d1|yincr\(3) & ((!\d1|Add0~5\) # (!\d1|error\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|yincr\(3),
	datab => \d1|error\(3),
	datad => VCC,
	cin => \d1|Add0~5\,
	combout => \d1|Add0~6_combout\,
	cout => \d1|Add0~7\);

-- Location: FF_X43_Y39_N15
\d1|xincr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[3]~18_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(3));

-- Location: LCCOMB_X43_Y38_N10
\d1|C1:err2_v[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[3]~0_combout\ = (\d1|Add0~6_combout\ & ((\d1|xincr\(3) & (!\d1|C1:err2_v[2]~1\)) # (!\d1|xincr\(3) & (\d1|C1:err2_v[2]~1\ & VCC)))) # (!\d1|Add0~6_combout\ & ((\d1|xincr\(3) & ((\d1|C1:err2_v[2]~1\) # (GND))) # (!\d1|xincr\(3) & 
-- (!\d1|C1:err2_v[2]~1\))))
-- \d1|C1:err2_v[3]~1\ = CARRY((\d1|Add0~6_combout\ & (\d1|xincr\(3) & !\d1|C1:err2_v[2]~1\)) # (!\d1|Add0~6_combout\ & ((\d1|xincr\(3)) # (!\d1|C1:err2_v[2]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~6_combout\,
	datab => \d1|xincr\(3),
	datad => VCC,
	cin => \d1|C1:err2_v[2]~1\,
	combout => \d1|C1:err2_v[3]~0_combout\,
	cout => \d1|C1:err2_v[3]~1\);

-- Location: LCCOMB_X47_Y38_N4
\d1|error[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[3]~13_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & (\d1|Add0~6_combout\)) # (!\d1|y1[0]~39_combout\ & ((\d1|C1:err2_v[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error[12]~0_combout\,
	datab => \d1|Add0~6_combout\,
	datac => \d1|C1:err2_v[3]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[3]~13_combout\);

-- Location: FF_X47_Y38_N5
\d1|error[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[3]~13_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(3));

-- Location: LCCOMB_X42_Y38_N14
\d1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~8_combout\ = ((\d1|error\(4) $ (\d1|yincr\(4) $ (!\d1|Add0~7\)))) # (GND)
-- \d1|Add0~9\ = CARRY((\d1|error\(4) & ((\d1|yincr\(4)) # (!\d1|Add0~7\))) # (!\d1|error\(4) & (\d1|yincr\(4) & !\d1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error\(4),
	datab => \d1|yincr\(4),
	datad => VCC,
	cin => \d1|Add0~7\,
	combout => \d1|Add0~8_combout\,
	cout => \d1|Add0~9\);

-- Location: FF_X43_Y39_N17
\d1|xincr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[4]~20_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(4));

-- Location: LCCOMB_X43_Y38_N12
\d1|C1:err2_v[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[4]~0_combout\ = ((\d1|Add0~8_combout\ $ (\d1|xincr\(4) $ (\d1|C1:err2_v[3]~1\)))) # (GND)
-- \d1|C1:err2_v[4]~1\ = CARRY((\d1|Add0~8_combout\ & ((!\d1|C1:err2_v[3]~1\) # (!\d1|xincr\(4)))) # (!\d1|Add0~8_combout\ & (!\d1|xincr\(4) & !\d1|C1:err2_v[3]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~8_combout\,
	datab => \d1|xincr\(4),
	datad => VCC,
	cin => \d1|C1:err2_v[3]~1\,
	combout => \d1|C1:err2_v[4]~0_combout\,
	cout => \d1|C1:err2_v[4]~1\);

-- Location: LCCOMB_X47_Y38_N26
\d1|error[4]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[4]~12_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & (\d1|Add0~8_combout\)) # (!\d1|y1[0]~39_combout\ & ((\d1|C1:err2_v[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~8_combout\,
	datab => \d1|error[12]~0_combout\,
	datac => \d1|C1:err2_v[4]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[4]~12_combout\);

-- Location: FF_X47_Y38_N27
\d1|error[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[4]~12_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(4));

-- Location: LCCOMB_X42_Y38_N16
\d1|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~10_combout\ = (\d1|error\(5) & ((\d1|yincr\(5) & (\d1|Add0~9\ & VCC)) # (!\d1|yincr\(5) & (!\d1|Add0~9\)))) # (!\d1|error\(5) & ((\d1|yincr\(5) & (!\d1|Add0~9\)) # (!\d1|yincr\(5) & ((\d1|Add0~9\) # (GND)))))
-- \d1|Add0~11\ = CARRY((\d1|error\(5) & (!\d1|yincr\(5) & !\d1|Add0~9\)) # (!\d1|error\(5) & ((!\d1|Add0~9\) # (!\d1|yincr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error\(5),
	datab => \d1|yincr\(5),
	datad => VCC,
	cin => \d1|Add0~9\,
	combout => \d1|Add0~10_combout\,
	cout => \d1|Add0~11\);

-- Location: FF_X43_Y39_N19
\d1|xincr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[5]~22_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(5));

-- Location: LCCOMB_X43_Y38_N14
\d1|C1:err2_v[5]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[5]~0_combout\ = (\d1|Add0~10_combout\ & ((\d1|xincr\(5) & (!\d1|C1:err2_v[4]~1\)) # (!\d1|xincr\(5) & (\d1|C1:err2_v[4]~1\ & VCC)))) # (!\d1|Add0~10_combout\ & ((\d1|xincr\(5) & ((\d1|C1:err2_v[4]~1\) # (GND))) # (!\d1|xincr\(5) & 
-- (!\d1|C1:err2_v[4]~1\))))
-- \d1|C1:err2_v[5]~1\ = CARRY((\d1|Add0~10_combout\ & (\d1|xincr\(5) & !\d1|C1:err2_v[4]~1\)) # (!\d1|Add0~10_combout\ & ((\d1|xincr\(5)) # (!\d1|C1:err2_v[4]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~10_combout\,
	datab => \d1|xincr\(5),
	datad => VCC,
	cin => \d1|C1:err2_v[4]~1\,
	combout => \d1|C1:err2_v[5]~0_combout\,
	cout => \d1|C1:err2_v[5]~1\);

-- Location: LCCOMB_X46_Y38_N30
\d1|error[5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[5]~11_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & (\d1|Add0~10_combout\)) # (!\d1|y1[0]~39_combout\ & ((\d1|C1:err2_v[5]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~10_combout\,
	datab => \d1|error[12]~0_combout\,
	datac => \d1|C1:err2_v[5]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[5]~11_combout\);

-- Location: FF_X46_Y38_N31
\d1|error[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[5]~11_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(5));

-- Location: LCCOMB_X42_Y38_N18
\d1|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~12_combout\ = ((\d1|error\(6) $ (\d1|yincr\(6) $ (!\d1|Add0~11\)))) # (GND)
-- \d1|Add0~13\ = CARRY((\d1|error\(6) & ((\d1|yincr\(6)) # (!\d1|Add0~11\))) # (!\d1|error\(6) & (\d1|yincr\(6) & !\d1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error\(6),
	datab => \d1|yincr\(6),
	datad => VCC,
	cin => \d1|Add0~11\,
	combout => \d1|Add0~12_combout\,
	cout => \d1|Add0~13\);

-- Location: LCCOMB_X43_Y38_N16
\d1|C1:err2_v[6]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[6]~0_combout\ = ((\d1|xincr\(6) $ (\d1|Add0~12_combout\ $ (\d1|C1:err2_v[5]~1\)))) # (GND)
-- \d1|C1:err2_v[6]~1\ = CARRY((\d1|xincr\(6) & (\d1|Add0~12_combout\ & !\d1|C1:err2_v[5]~1\)) # (!\d1|xincr\(6) & ((\d1|Add0~12_combout\) # (!\d1|C1:err2_v[5]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|xincr\(6),
	datab => \d1|Add0~12_combout\,
	datad => VCC,
	cin => \d1|C1:err2_v[5]~1\,
	combout => \d1|C1:err2_v[6]~0_combout\,
	cout => \d1|C1:err2_v[6]~1\);

-- Location: LCCOMB_X44_Y38_N8
\d1|Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~8_combout\ = (\d1|C1:err2_v[3]~0_combout\ & ((\d1|Add3~5\) # (GND))) # (!\d1|C1:err2_v[3]~0_combout\ & (!\d1|Add3~5\))
-- \d1|Add3~9\ = CARRY((\d1|C1:err2_v[3]~0_combout\) # (!\d1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[3]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~5\,
	combout => \d1|Add3~8_combout\,
	cout => \d1|Add3~9\);

-- Location: LCCOMB_X44_Y38_N10
\d1|Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~10_combout\ = (\d1|C1:err2_v[4]~0_combout\ & (!\d1|Add3~9\ & VCC)) # (!\d1|C1:err2_v[4]~0_combout\ & (\d1|Add3~9\ $ (GND)))
-- \d1|Add3~11\ = CARRY((!\d1|C1:err2_v[4]~0_combout\ & !\d1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[4]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~9\,
	combout => \d1|Add3~10_combout\,
	cout => \d1|Add3~11\);

-- Location: LCCOMB_X44_Y38_N12
\d1|Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~14_combout\ = (\d1|C1:err2_v[5]~0_combout\ & ((\d1|Add3~11\) # (GND))) # (!\d1|C1:err2_v[5]~0_combout\ & (!\d1|Add3~11\))
-- \d1|Add3~15\ = CARRY((\d1|C1:err2_v[5]~0_combout\) # (!\d1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[5]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~11\,
	combout => \d1|Add3~14_combout\,
	cout => \d1|Add3~15\);

-- Location: LCCOMB_X44_Y38_N14
\d1|Add3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~16_combout\ = (\d1|C1:err2_v[6]~0_combout\ & (!\d1|Add3~15\ & VCC)) # (!\d1|C1:err2_v[6]~0_combout\ & (\d1|Add3~15\ $ (GND)))
-- \d1|Add3~17\ = CARRY((!\d1|C1:err2_v[6]~0_combout\ & !\d1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[6]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~15\,
	combout => \d1|Add3~16_combout\,
	cout => \d1|Add3~17\);

-- Location: LCCOMB_X46_Y38_N6
\d1|Add3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~18_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~16_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[6]~0_combout\,
	datac => \d1|C1:err2_v[12]~0_combout\,
	datad => \d1|Add3~16_combout\,
	combout => \d1|Add3~18_combout\);

-- Location: LCCOMB_X51_Y38_N10
\d1|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~8_combout\ = (\d1|Add0~6_combout\ & ((\d1|Add2~6\) # (GND))) # (!\d1|Add0~6_combout\ & (!\d1|Add2~6\))
-- \d1|Add2~9\ = CARRY((\d1|Add0~6_combout\) # (!\d1|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~6_combout\,
	datad => VCC,
	cin => \d1|Add2~6\,
	combout => \d1|Add2~8_combout\,
	cout => \d1|Add2~9\);

-- Location: LCCOMB_X51_Y38_N12
\d1|Add2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~11_combout\ = (\d1|Add0~8_combout\ & (!\d1|Add2~9\ & VCC)) # (!\d1|Add0~8_combout\ & (\d1|Add2~9\ $ (GND)))
-- \d1|Add2~12\ = CARRY((!\d1|Add0~8_combout\ & !\d1|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~8_combout\,
	datad => VCC,
	cin => \d1|Add2~9\,
	combout => \d1|Add2~11_combout\,
	cout => \d1|Add2~12\);

-- Location: LCCOMB_X51_Y38_N14
\d1|Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~14_combout\ = (\d1|Add0~10_combout\ & ((\d1|Add2~12\) # (GND))) # (!\d1|Add0~10_combout\ & (!\d1|Add2~12\))
-- \d1|Add2~15\ = CARRY((\d1|Add0~10_combout\) # (!\d1|Add2~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~10_combout\,
	datad => VCC,
	cin => \d1|Add2~12\,
	combout => \d1|Add2~14_combout\,
	cout => \d1|Add2~15\);

-- Location: LCCOMB_X51_Y38_N16
\d1|Add2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~17_combout\ = (\d1|Add0~12_combout\ & (!\d1|Add2~15\ & VCC)) # (!\d1|Add0~12_combout\ & (\d1|Add2~15\ $ (GND)))
-- \d1|Add2~18\ = CARRY((!\d1|Add0~12_combout\ & !\d1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~12_combout\,
	datad => VCC,
	cin => \d1|Add2~15\,
	combout => \d1|Add2~17_combout\,
	cout => \d1|Add2~18\);

-- Location: LCCOMB_X46_Y38_N20
\d1|Add2~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~19_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~17_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~12_combout\,
	datab => \d1|Add0~24_combout\,
	datad => \d1|Add2~17_combout\,
	combout => \d1|Add2~19_combout\);

-- Location: LCCOMB_X46_Y38_N4
\d1|Add3~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~19_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~14_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[5]~0_combout\,
	datac => \d1|C1:err2_v[12]~0_combout\,
	datad => \d1|Add3~14_combout\,
	combout => \d1|Add3~19_combout\);

-- Location: LCCOMB_X46_Y38_N12
\d1|Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~16_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~14_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~10_combout\,
	datab => \d1|Add0~24_combout\,
	datad => \d1|Add2~14_combout\,
	combout => \d1|Add2~16_combout\);

-- Location: LCCOMB_X46_Y38_N26
\d1|Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~2_combout\ = (\d1|Add3~18_combout\ & (\d1|Add2~19_combout\ & (\d1|Add3~19_combout\ $ (!\d1|Add2~16_combout\)))) # (!\d1|Add3~18_combout\ & (!\d1|Add2~19_combout\ & (\d1|Add3~19_combout\ $ (!\d1|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~18_combout\,
	datab => \d1|Add2~19_combout\,
	datac => \d1|Add3~19_combout\,
	datad => \d1|Add2~16_combout\,
	combout => \d1|Equal2~2_combout\);

-- Location: IOIBUF_X52_Y21_N1
\xin[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(8),
	o => \xin[8]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\yin[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(8),
	o => \yin[8]~input_o\);

-- Location: LCCOMB_X46_Y39_N8
\i2|data_out[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[8]~8_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & (\xin[8]~input_o\)) # (!\swapxy~input_o\ & ((\yin[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \negy~input_o\,
	datab => \swapxy~input_o\,
	datac => \xin[8]~input_o\,
	datad => \yin[8]~input_o\,
	combout => \i2|data_out[8]~8_combout\);

-- Location: LCCOMB_X49_Y38_N20
\d1|y1[6]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[6]~27_combout\ = (\d1|y1\(6) & (\d1|y1[5]~26\ $ (GND))) # (!\d1|y1\(6) & (!\d1|y1[5]~26\ & VCC))
-- \d1|y1[6]~28\ = CARRY((\d1|y1\(6) & !\d1|y1[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|y1\(6),
	datad => VCC,
	cin => \d1|y1[5]~26\,
	combout => \d1|y1[6]~27_combout\,
	cout => \d1|y1[6]~28\);

-- Location: LCCOMB_X49_Y38_N22
\d1|y1[7]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[7]~29_combout\ = (\d1|y1\(7) & (!\d1|y1[6]~28\)) # (!\d1|y1\(7) & ((\d1|y1[6]~28\) # (GND)))
-- \d1|y1[7]~30\ = CARRY((!\d1|y1[6]~28\) # (!\d1|y1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|y1\(7),
	datad => VCC,
	cin => \d1|y1[6]~28\,
	combout => \d1|y1[7]~29_combout\,
	cout => \d1|y1[7]~30\);

-- Location: FF_X49_Y38_N23
\d1|y1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[7]~29_combout\,
	asdata => \i2|data_out[7]~7_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(7));

-- Location: LCCOMB_X49_Y38_N24
\d1|y1[8]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[8]~31_combout\ = (\d1|y1\(8) & (\d1|y1[7]~30\ $ (GND))) # (!\d1|y1\(8) & (!\d1|y1[7]~30\ & VCC))
-- \d1|y1[8]~32\ = CARRY((\d1|y1\(8) & !\d1|y1[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|y1\(8),
	datad => VCC,
	cin => \d1|y1[7]~30\,
	combout => \d1|y1[8]~31_combout\,
	cout => \d1|y1[8]~32\);

-- Location: FF_X49_Y38_N25
\d1|y1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[8]~31_combout\,
	asdata => \i2|data_out[8]~8_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(8));

-- Location: LCCOMB_X41_Y38_N18
\d1|yincr[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[7]~26_combout\ = (\i2|data_out[7]~7_combout\ & ((\d1|y1\(7) & (!\d1|yincr[6]~25\)) # (!\d1|y1\(7) & (\d1|yincr[6]~25\ & VCC)))) # (!\i2|data_out[7]~7_combout\ & ((\d1|y1\(7) & ((\d1|yincr[6]~25\) # (GND))) # (!\d1|y1\(7) & (!\d1|yincr[6]~25\))))
-- \d1|yincr[7]~27\ = CARRY((\i2|data_out[7]~7_combout\ & (\d1|y1\(7) & !\d1|yincr[6]~25\)) # (!\i2|data_out[7]~7_combout\ & ((\d1|y1\(7)) # (!\d1|yincr[6]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|data_out[7]~7_combout\,
	datab => \d1|y1\(7),
	datad => VCC,
	cin => \d1|yincr[6]~25\,
	combout => \d1|yincr[7]~26_combout\,
	cout => \d1|yincr[7]~27\);

-- Location: LCCOMB_X41_Y38_N20
\d1|yincr[8]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[8]~28_combout\ = ((\i2|data_out[8]~8_combout\ $ (\d1|y1\(8) $ (\d1|yincr[7]~27\)))) # (GND)
-- \d1|yincr[8]~29\ = CARRY((\i2|data_out[8]~8_combout\ & ((!\d1|yincr[7]~27\) # (!\d1|y1\(8)))) # (!\i2|data_out[8]~8_combout\ & (!\d1|y1\(8) & !\d1|yincr[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|data_out[8]~8_combout\,
	datab => \d1|y1\(8),
	datad => VCC,
	cin => \d1|yincr[7]~27\,
	combout => \d1|yincr[8]~28_combout\,
	cout => \d1|yincr[8]~29\);

-- Location: FF_X42_Y38_N23
\d1|yincr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[8]~28_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(8));

-- Location: LCCOMB_X46_Y39_N16
\i1|data_out[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[8]~8_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & ((\yin[8]~input_o\))) # (!\swapxy~input_o\ & (\xin[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \negx~input_o\,
	datab => \swapxy~input_o\,
	datac => \xin[8]~input_o\,
	datad => \yin[8]~input_o\,
	combout => \i1|data_out[8]~8_combout\);

-- Location: LCCOMB_X44_Y39_N14
\d1|x1[7]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[7]~27_combout\ = (\d1|x1\(7) & (!\d1|x1[6]~26\)) # (!\d1|x1\(7) & ((\d1|x1[6]~26\) # (GND)))
-- \d1|x1[7]~28\ = CARRY((!\d1|x1[6]~26\) # (!\d1|x1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(7),
	datad => VCC,
	cin => \d1|x1[6]~26\,
	combout => \d1|x1[7]~27_combout\,
	cout => \d1|x1[7]~28\);

-- Location: LCCOMB_X42_Y39_N22
\i1|data_out[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[7]~7_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & ((\yin[7]~input_o\))) # (!\swapxy~input_o\ & (\xin[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[7]~input_o\,
	datab => \yin[7]~input_o\,
	datac => \swapxy~input_o\,
	datad => \negx~input_o\,
	combout => \i1|data_out[7]~7_combout\);

-- Location: FF_X44_Y39_N15
\d1|x1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[7]~27_combout\,
	asdata => \i1|data_out[7]~7_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(7));

-- Location: LCCOMB_X44_Y39_N16
\d1|x1[8]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[8]~29_combout\ = (\d1|x1\(8) & (\d1|x1[7]~28\ $ (GND))) # (!\d1|x1\(8) & (!\d1|x1[7]~28\ & VCC))
-- \d1|x1[8]~30\ = CARRY((\d1|x1\(8) & !\d1|x1[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(8),
	datad => VCC,
	cin => \d1|x1[7]~28\,
	combout => \d1|x1[8]~29_combout\,
	cout => \d1|x1[8]~30\);

-- Location: FF_X44_Y39_N17
\d1|x1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[8]~29_combout\,
	asdata => \i1|data_out[8]~8_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(8));

-- Location: LCCOMB_X43_Y39_N22
\d1|xincr[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[7]~26_combout\ = (\d1|x1\(7) & ((\i1|data_out[7]~7_combout\ & (!\d1|xincr[6]~25\)) # (!\i1|data_out[7]~7_combout\ & ((\d1|xincr[6]~25\) # (GND))))) # (!\d1|x1\(7) & ((\i1|data_out[7]~7_combout\ & (\d1|xincr[6]~25\ & VCC)) # 
-- (!\i1|data_out[7]~7_combout\ & (!\d1|xincr[6]~25\))))
-- \d1|xincr[7]~27\ = CARRY((\d1|x1\(7) & ((!\d1|xincr[6]~25\) # (!\i1|data_out[7]~7_combout\))) # (!\d1|x1\(7) & (!\i1|data_out[7]~7_combout\ & !\d1|xincr[6]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(7),
	datab => \i1|data_out[7]~7_combout\,
	datad => VCC,
	cin => \d1|xincr[6]~25\,
	combout => \d1|xincr[7]~26_combout\,
	cout => \d1|xincr[7]~27\);

-- Location: LCCOMB_X43_Y39_N24
\d1|xincr[8]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[8]~28_combout\ = ((\i1|data_out[8]~8_combout\ $ (\d1|x1\(8) $ (\d1|xincr[7]~27\)))) # (GND)
-- \d1|xincr[8]~29\ = CARRY((\i1|data_out[8]~8_combout\ & ((!\d1|xincr[7]~27\) # (!\d1|x1\(8)))) # (!\i1|data_out[8]~8_combout\ & (!\d1|x1\(8) & !\d1|xincr[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|data_out[8]~8_combout\,
	datab => \d1|x1\(8),
	datad => VCC,
	cin => \d1|xincr[7]~27\,
	combout => \d1|xincr[8]~28_combout\,
	cout => \d1|xincr[8]~29\);

-- Location: FF_X43_Y39_N25
\d1|xincr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[8]~28_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(8));

-- Location: FF_X43_Y39_N23
\d1|xincr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[7]~26_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(7));

-- Location: LCCOMB_X43_Y38_N18
\d1|C1:err2_v[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[7]~0_combout\ = (\d1|xincr\(7) & ((\d1|Add0~14_combout\ & (!\d1|C1:err2_v[6]~1\)) # (!\d1|Add0~14_combout\ & ((\d1|C1:err2_v[6]~1\) # (GND))))) # (!\d1|xincr\(7) & ((\d1|Add0~14_combout\ & (\d1|C1:err2_v[6]~1\ & VCC)) # 
-- (!\d1|Add0~14_combout\ & (!\d1|C1:err2_v[6]~1\))))
-- \d1|C1:err2_v[7]~1\ = CARRY((\d1|xincr\(7) & ((!\d1|C1:err2_v[6]~1\) # (!\d1|Add0~14_combout\))) # (!\d1|xincr\(7) & (!\d1|Add0~14_combout\ & !\d1|C1:err2_v[6]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|xincr\(7),
	datab => \d1|Add0~14_combout\,
	datad => VCC,
	cin => \d1|C1:err2_v[6]~1\,
	combout => \d1|C1:err2_v[7]~0_combout\,
	cout => \d1|C1:err2_v[7]~1\);

-- Location: LCCOMB_X47_Y38_N8
\d1|error[7]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[7]~9_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & (\d1|Add0~14_combout\)) # (!\d1|y1[0]~39_combout\ & ((\d1|C1:err2_v[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error[12]~0_combout\,
	datab => \d1|Add0~14_combout\,
	datac => \d1|C1:err2_v[7]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[7]~9_combout\);

-- Location: FF_X47_Y38_N9
\d1|error[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[7]~9_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(7));

-- Location: FF_X42_Y38_N21
\d1|yincr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d1|yincr[7]~26_combout\,
	sclr => \init~input_o\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(7));

-- Location: LCCOMB_X42_Y38_N20
\d1|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~14_combout\ = (\d1|error\(7) & ((\d1|yincr\(7) & (\d1|Add0~13\ & VCC)) # (!\d1|yincr\(7) & (!\d1|Add0~13\)))) # (!\d1|error\(7) & ((\d1|yincr\(7) & (!\d1|Add0~13\)) # (!\d1|yincr\(7) & ((\d1|Add0~13\) # (GND)))))
-- \d1|Add0~15\ = CARRY((\d1|error\(7) & (!\d1|yincr\(7) & !\d1|Add0~13\)) # (!\d1|error\(7) & ((!\d1|Add0~13\) # (!\d1|yincr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error\(7),
	datab => \d1|yincr\(7),
	datad => VCC,
	cin => \d1|Add0~13\,
	combout => \d1|Add0~14_combout\,
	cout => \d1|Add0~15\);

-- Location: LCCOMB_X43_Y38_N20
\d1|C1:err2_v[8]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[8]~0_combout\ = ((\d1|xincr\(8) $ (\d1|Add0~16_combout\ $ (\d1|C1:err2_v[7]~1\)))) # (GND)
-- \d1|C1:err2_v[8]~1\ = CARRY((\d1|xincr\(8) & (\d1|Add0~16_combout\ & !\d1|C1:err2_v[7]~1\)) # (!\d1|xincr\(8) & ((\d1|Add0~16_combout\) # (!\d1|C1:err2_v[7]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|xincr\(8),
	datab => \d1|Add0~16_combout\,
	datad => VCC,
	cin => \d1|C1:err2_v[7]~1\,
	combout => \d1|C1:err2_v[8]~0_combout\,
	cout => \d1|C1:err2_v[8]~1\);

-- Location: LCCOMB_X46_Y38_N22
\d1|error[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[8]~8_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & ((\d1|Add0~16_combout\))) # (!\d1|y1[0]~39_combout\ & (\d1|C1:err2_v[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[8]~0_combout\,
	datab => \d1|Add0~16_combout\,
	datac => \d1|error[12]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[8]~8_combout\);

-- Location: FF_X46_Y38_N23
\d1|error[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[8]~8_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(8));

-- Location: LCCOMB_X42_Y38_N22
\d1|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~16_combout\ = ((\d1|yincr\(8) $ (\d1|error\(8) $ (!\d1|Add0~15\)))) # (GND)
-- \d1|Add0~17\ = CARRY((\d1|yincr\(8) & ((\d1|error\(8)) # (!\d1|Add0~15\))) # (!\d1|yincr\(8) & (\d1|error\(8) & !\d1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|yincr\(8),
	datab => \d1|error\(8),
	datad => VCC,
	cin => \d1|Add0~15\,
	combout => \d1|Add0~16_combout\,
	cout => \d1|Add0~17\);

-- Location: LCCOMB_X51_Y38_N18
\d1|Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~20_combout\ = (\d1|Add0~14_combout\ & ((\d1|Add2~18\) # (GND))) # (!\d1|Add0~14_combout\ & (!\d1|Add2~18\))
-- \d1|Add2~21\ = CARRY((\d1|Add0~14_combout\) # (!\d1|Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~14_combout\,
	datad => VCC,
	cin => \d1|Add2~18\,
	combout => \d1|Add2~20_combout\,
	cout => \d1|Add2~21\);

-- Location: LCCOMB_X51_Y38_N20
\d1|Add2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~23_combout\ = (\d1|Add0~16_combout\ & (!\d1|Add2~21\ & VCC)) # (!\d1|Add0~16_combout\ & (\d1|Add2~21\ $ (GND)))
-- \d1|Add2~24\ = CARRY((!\d1|Add0~16_combout\ & !\d1|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~16_combout\,
	datad => VCC,
	cin => \d1|Add2~21\,
	combout => \d1|Add2~23_combout\,
	cout => \d1|Add2~24\);

-- Location: LCCOMB_X46_Y38_N10
\d1|Add2~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~25_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~23_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~16_combout\,
	datac => \d1|Add2~23_combout\,
	datad => \d1|Add0~24_combout\,
	combout => \d1|Add2~25_combout\);

-- Location: LCCOMB_X46_Y38_N24
\d1|Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~22_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~20_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~24_combout\,
	datac => \d1|Add0~14_combout\,
	datad => \d1|Add2~20_combout\,
	combout => \d1|Add2~22_combout\);

-- Location: LCCOMB_X44_Y38_N16
\d1|Add3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~20_combout\ = (\d1|C1:err2_v[7]~0_combout\ & ((\d1|Add3~17\) # (GND))) # (!\d1|C1:err2_v[7]~0_combout\ & (!\d1|Add3~17\))
-- \d1|Add3~21\ = CARRY((\d1|C1:err2_v[7]~0_combout\) # (!\d1|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[7]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~17\,
	combout => \d1|Add3~20_combout\,
	cout => \d1|Add3~21\);

-- Location: LCCOMB_X44_Y38_N28
\d1|Add3~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~25_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~20_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[7]~0_combout\,
	datac => \d1|C1:err2_v[12]~0_combout\,
	datad => \d1|Add3~20_combout\,
	combout => \d1|Add3~25_combout\);

-- Location: LCCOMB_X44_Y38_N18
\d1|Add3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~22_combout\ = (\d1|C1:err2_v[8]~0_combout\ & (!\d1|Add3~21\ & VCC)) # (!\d1|C1:err2_v[8]~0_combout\ & (\d1|Add3~21\ $ (GND)))
-- \d1|Add3~23\ = CARRY((!\d1|C1:err2_v[8]~0_combout\ & !\d1|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[8]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~21\,
	combout => \d1|Add3~22_combout\,
	cout => \d1|Add3~23\);

-- Location: LCCOMB_X46_Y38_N16
\d1|Add3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~24_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~22_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[8]~0_combout\,
	datac => \d1|C1:err2_v[12]~0_combout\,
	datad => \d1|Add3~22_combout\,
	combout => \d1|Add3~24_combout\);

-- Location: LCCOMB_X46_Y38_N2
\d1|Equal2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~3_combout\ = (\d1|Add2~25_combout\ & (\d1|Add3~24_combout\ & (\d1|Add2~22_combout\ $ (!\d1|Add3~25_combout\)))) # (!\d1|Add2~25_combout\ & (!\d1|Add3~24_combout\ & (\d1|Add2~22_combout\ $ (!\d1|Add3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add2~25_combout\,
	datab => \d1|Add2~22_combout\,
	datac => \d1|Add3~25_combout\,
	datad => \d1|Add3~24_combout\,
	combout => \d1|Equal2~3_combout\);

-- Location: LCCOMB_X47_Y38_N16
\d1|Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~12_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~10_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[12]~0_combout\,
	datac => \d1|C1:err2_v[4]~0_combout\,
	datad => \d1|Add3~10_combout\,
	combout => \d1|Add3~12_combout\);

-- Location: LCCOMB_X47_Y38_N20
\d1|Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~10_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~8_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~6_combout\,
	datac => \d1|Add0~24_combout\,
	datad => \d1|Add2~8_combout\,
	combout => \d1|Add2~10_combout\);

-- Location: LCCOMB_X48_Y38_N30
\d1|Add3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~13_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~8_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[3]~0_combout\,
	datac => \d1|C1:err2_v[12]~0_combout\,
	datad => \d1|Add3~8_combout\,
	combout => \d1|Add3~13_combout\);

-- Location: LCCOMB_X47_Y38_N18
\d1|Add2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~13_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~11_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~8_combout\,
	datac => \d1|Add0~24_combout\,
	datad => \d1|Add2~11_combout\,
	combout => \d1|Add2~13_combout\);

-- Location: LCCOMB_X48_Y38_N28
\d1|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~1_combout\ = (\d1|Add3~12_combout\ & (\d1|Add2~13_combout\ & (\d1|Add2~10_combout\ $ (!\d1|Add3~13_combout\)))) # (!\d1|Add3~12_combout\ & (!\d1|Add2~13_combout\ & (\d1|Add2~10_combout\ $ (!\d1|Add3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~12_combout\,
	datab => \d1|Add2~10_combout\,
	datac => \d1|Add3~13_combout\,
	datad => \d1|Add2~13_combout\,
	combout => \d1|Equal2~1_combout\);

-- Location: LCCOMB_X49_Y38_N4
\d1|Equal2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~4_combout\ = (\d1|Equal2~0_combout\ & (\d1|Equal2~2_combout\ & (\d1|Equal2~3_combout\ & \d1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Equal2~0_combout\,
	datab => \d1|Equal2~2_combout\,
	datac => \d1|Equal2~3_combout\,
	datad => \d1|Equal2~1_combout\,
	combout => \d1|Equal2~4_combout\);

-- Location: IOIBUF_X31_Y41_N1
\xbias~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xbias,
	o => \xbias~input_o\);

-- Location: LCCOMB_X39_Y38_N8
xbias_in : cycloneiv_lcell_comb
-- Equation(s):
-- \xbias_in~combout\ = \xbias~input_o\ $ (\swapxy~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xbias~input_o\,
	datad => \swapxy~input_o\,
	combout => \xbias_in~combout\);

-- Location: IOIBUF_X41_Y41_N15
\xin[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(11),
	o => \xin[11]~input_o\);

-- Location: IOIBUF_X31_Y41_N22
\yin[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(11),
	o => \yin[11]~input_o\);

-- Location: LCCOMB_X42_Y39_N16
\i1|data_out[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[11]~11_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & ((\yin[11]~input_o\))) # (!\swapxy~input_o\ & (\xin[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[11]~input_o\,
	datab => \yin[11]~input_o\,
	datac => \swapxy~input_o\,
	datad => \negx~input_o\,
	combout => \i1|data_out[11]~11_combout\);

-- Location: LCCOMB_X44_Y39_N18
\d1|x1[9]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[9]~31_combout\ = (\d1|x1\(9) & (!\d1|x1[8]~30\)) # (!\d1|x1\(9) & ((\d1|x1[8]~30\) # (GND)))
-- \d1|x1[9]~32\ = CARRY((!\d1|x1[8]~30\) # (!\d1|x1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(9),
	datad => VCC,
	cin => \d1|x1[8]~30\,
	combout => \d1|x1[9]~31_combout\,
	cout => \d1|x1[9]~32\);

-- Location: IOIBUF_X52_Y18_N1
\xin[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(9),
	o => \xin[9]~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\yin[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(9),
	o => \yin[9]~input_o\);

-- Location: LCCOMB_X50_Y37_N26
\i1|data_out[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[9]~9_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & ((\yin[9]~input_o\))) # (!\swapxy~input_o\ & (\xin[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \negx~input_o\,
	datab => \swapxy~input_o\,
	datac => \xin[9]~input_o\,
	datad => \yin[9]~input_o\,
	combout => \i1|data_out[9]~9_combout\);

-- Location: FF_X44_Y39_N19
\d1|x1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[9]~31_combout\,
	asdata => \i1|data_out[9]~9_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(9));

-- Location: LCCOMB_X44_Y39_N20
\d1|x1[10]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[10]~33_combout\ = (\d1|x1\(10) & (\d1|x1[9]~32\ $ (GND))) # (!\d1|x1\(10) & (!\d1|x1[9]~32\ & VCC))
-- \d1|x1[10]~34\ = CARRY((\d1|x1\(10) & !\d1|x1[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(10),
	datad => VCC,
	cin => \d1|x1[9]~32\,
	combout => \d1|x1[10]~33_combout\,
	cout => \d1|x1[10]~34\);

-- Location: IOIBUF_X46_Y41_N8
\yin[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yin(10),
	o => \yin[10]~input_o\);

-- Location: IOIBUF_X31_Y41_N8
\xin[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(10),
	o => \xin[10]~input_o\);

-- Location: LCCOMB_X46_Y39_N18
\i1|data_out[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i1|data_out[10]~10_combout\ = \negx~input_o\ $ (((\swapxy~input_o\ & (\yin[10]~input_o\)) # (!\swapxy~input_o\ & ((\xin[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \negx~input_o\,
	datab => \swapxy~input_o\,
	datac => \yin[10]~input_o\,
	datad => \xin[10]~input_o\,
	combout => \i1|data_out[10]~10_combout\);

-- Location: FF_X44_Y39_N21
\d1|x1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[10]~33_combout\,
	asdata => \i1|data_out[10]~10_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(10));

-- Location: LCCOMB_X44_Y39_N22
\d1|x1[11]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|x1[11]~35_combout\ = \d1|x1\(11) $ (\d1|x1[10]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(11),
	cin => \d1|x1[10]~34\,
	combout => \d1|x1[11]~35_combout\);

-- Location: FF_X44_Y39_N23
\d1|x1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|x1[11]~35_combout\,
	asdata => \i1|data_out[11]~11_combout\,
	sload => \init~input_o\,
	ena => \d1|x1[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|x1\(11));

-- Location: LCCOMB_X43_Y39_N26
\d1|xincr[9]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[9]~30_combout\ = (\i1|data_out[9]~9_combout\ & ((\d1|x1\(9) & (!\d1|xincr[8]~29\)) # (!\d1|x1\(9) & (\d1|xincr[8]~29\ & VCC)))) # (!\i1|data_out[9]~9_combout\ & ((\d1|x1\(9) & ((\d1|xincr[8]~29\) # (GND))) # (!\d1|x1\(9) & (!\d1|xincr[8]~29\))))
-- \d1|xincr[9]~31\ = CARRY((\i1|data_out[9]~9_combout\ & (\d1|x1\(9) & !\d1|xincr[8]~29\)) # (!\i1|data_out[9]~9_combout\ & ((\d1|x1\(9)) # (!\d1|xincr[8]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|data_out[9]~9_combout\,
	datab => \d1|x1\(9),
	datad => VCC,
	cin => \d1|xincr[8]~29\,
	combout => \d1|xincr[9]~30_combout\,
	cout => \d1|xincr[9]~31\);

-- Location: LCCOMB_X43_Y39_N28
\d1|xincr[10]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[10]~32_combout\ = ((\d1|x1\(10) $ (\i1|data_out[10]~10_combout\ $ (\d1|xincr[9]~31\)))) # (GND)
-- \d1|xincr[10]~33\ = CARRY((\d1|x1\(10) & (\i1|data_out[10]~10_combout\ & !\d1|xincr[9]~31\)) # (!\d1|x1\(10) & ((\i1|data_out[10]~10_combout\) # (!\d1|xincr[9]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(10),
	datab => \i1|data_out[10]~10_combout\,
	datad => VCC,
	cin => \d1|xincr[9]~31\,
	combout => \d1|xincr[10]~32_combout\,
	cout => \d1|xincr[10]~33\);

-- Location: LCCOMB_X43_Y39_N30
\d1|xincr[11]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xincr[11]~34_combout\ = \i1|data_out[11]~11_combout\ $ (\d1|xincr[10]~33\ $ (!\d1|x1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|data_out[11]~11_combout\,
	datad => \d1|x1\(11),
	cin => \d1|xincr[10]~33\,
	combout => \d1|xincr[11]~34_combout\);

-- Location: FF_X43_Y39_N31
\d1|xincr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[11]~34_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(11));

-- Location: LCCOMB_X42_Y39_N30
\i2|data_out[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[11]~11_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & (\xin[11]~input_o\)) # (!\swapxy~input_o\ & ((\yin[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[11]~input_o\,
	datab => \yin[11]~input_o\,
	datac => \swapxy~input_o\,
	datad => \negy~input_o\,
	combout => \i2|data_out[11]~11_combout\);

-- Location: LCCOMB_X49_Y38_N26
\d1|y1[9]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[9]~33_combout\ = (\d1|y1\(9) & (!\d1|y1[8]~32\)) # (!\d1|y1\(9) & ((\d1|y1[8]~32\) # (GND)))
-- \d1|y1[9]~34\ = CARRY((!\d1|y1[8]~32\) # (!\d1|y1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(9),
	datad => VCC,
	cin => \d1|y1[8]~32\,
	combout => \d1|y1[9]~33_combout\,
	cout => \d1|y1[9]~34\);

-- Location: LCCOMB_X50_Y37_N22
\i2|data_out[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[9]~9_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & (\xin[9]~input_o\)) # (!\swapxy~input_o\ & ((\yin[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xin[9]~input_o\,
	datab => \negy~input_o\,
	datac => \swapxy~input_o\,
	datad => \yin[9]~input_o\,
	combout => \i2|data_out[9]~9_combout\);

-- Location: FF_X49_Y38_N27
\d1|y1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[9]~33_combout\,
	asdata => \i2|data_out[9]~9_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(9));

-- Location: LCCOMB_X49_Y38_N28
\d1|y1[10]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[10]~35_combout\ = (\d1|y1\(10) & (\d1|y1[9]~34\ $ (GND))) # (!\d1|y1\(10) & (!\d1|y1[9]~34\ & VCC))
-- \d1|y1[10]~36\ = CARRY((\d1|y1\(10) & !\d1|y1[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|y1\(10),
	datad => VCC,
	cin => \d1|y1[9]~34\,
	combout => \d1|y1[10]~35_combout\,
	cout => \d1|y1[10]~36\);

-- Location: LCCOMB_X46_Y39_N2
\i2|data_out[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2|data_out[10]~10_combout\ = \negy~input_o\ $ (((\swapxy~input_o\ & ((\xin[10]~input_o\))) # (!\swapxy~input_o\ & (\yin[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \negy~input_o\,
	datab => \swapxy~input_o\,
	datac => \yin[10]~input_o\,
	datad => \xin[10]~input_o\,
	combout => \i2|data_out[10]~10_combout\);

-- Location: FF_X49_Y38_N29
\d1|y1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[10]~35_combout\,
	asdata => \i2|data_out[10]~10_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(10));

-- Location: LCCOMB_X49_Y38_N30
\d1|y1[11]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[11]~37_combout\ = \d1|y1\(11) $ (\d1|y1[10]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(11),
	cin => \d1|y1[10]~36\,
	combout => \d1|y1[11]~37_combout\);

-- Location: FF_X49_Y38_N31
\d1|y1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[11]~37_combout\,
	asdata => \i2|data_out[11]~11_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(11));

-- Location: LCCOMB_X41_Y38_N22
\d1|yincr[9]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[9]~30_combout\ = (\d1|y1\(9) & ((\i2|data_out[9]~9_combout\ & (!\d1|yincr[8]~29\)) # (!\i2|data_out[9]~9_combout\ & ((\d1|yincr[8]~29\) # (GND))))) # (!\d1|y1\(9) & ((\i2|data_out[9]~9_combout\ & (\d1|yincr[8]~29\ & VCC)) # 
-- (!\i2|data_out[9]~9_combout\ & (!\d1|yincr[8]~29\))))
-- \d1|yincr[9]~31\ = CARRY((\d1|y1\(9) & ((!\d1|yincr[8]~29\) # (!\i2|data_out[9]~9_combout\))) # (!\d1|y1\(9) & (!\i2|data_out[9]~9_combout\ & !\d1|yincr[8]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(9),
	datab => \i2|data_out[9]~9_combout\,
	datad => VCC,
	cin => \d1|yincr[8]~29\,
	combout => \d1|yincr[9]~30_combout\,
	cout => \d1|yincr[9]~31\);

-- Location: LCCOMB_X41_Y38_N24
\d1|yincr[10]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[10]~32_combout\ = ((\i2|data_out[10]~10_combout\ $ (\d1|y1\(10) $ (\d1|yincr[9]~31\)))) # (GND)
-- \d1|yincr[10]~33\ = CARRY((\i2|data_out[10]~10_combout\ & ((!\d1|yincr[9]~31\) # (!\d1|y1\(10)))) # (!\i2|data_out[10]~10_combout\ & (!\d1|y1\(10) & !\d1|yincr[9]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|data_out[10]~10_combout\,
	datab => \d1|y1\(10),
	datad => VCC,
	cin => \d1|yincr[9]~31\,
	combout => \d1|yincr[10]~32_combout\,
	cout => \d1|yincr[10]~33\);

-- Location: LCCOMB_X41_Y38_N26
\d1|yincr[11]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|yincr[11]~34_combout\ = \i2|data_out[11]~11_combout\ $ (\d1|yincr[10]~33\ $ (!\d1|y1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|data_out[11]~11_combout\,
	datad => \d1|y1\(11),
	cin => \d1|yincr[10]~33\,
	combout => \d1|yincr[11]~34_combout\);

-- Location: FF_X41_Y38_N27
\d1|yincr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|yincr[11]~34_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(11));

-- Location: LCCOMB_X46_Y38_N18
\d1|error[11]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[11]~5_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & (\d1|Add0~22_combout\)) # (!\d1|y1[0]~39_combout\ & ((\d1|C1:err2_v[11]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~22_combout\,
	datab => \d1|C1:err2_v[11]~0_combout\,
	datac => \d1|error[12]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[11]~5_combout\);

-- Location: FF_X46_Y38_N19
\d1|error[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[11]~5_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(11));

-- Location: FF_X41_Y38_N25
\d1|yincr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|yincr[10]~32_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(10));

-- Location: FF_X43_Y39_N27
\d1|xincr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[9]~30_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(9));

-- Location: FF_X41_Y38_N23
\d1|yincr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|yincr[9]~30_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|yincr\(9));

-- Location: LCCOMB_X42_Y38_N24
\d1|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~18_combout\ = (\d1|error\(9) & ((\d1|yincr\(9) & (\d1|Add0~17\ & VCC)) # (!\d1|yincr\(9) & (!\d1|Add0~17\)))) # (!\d1|error\(9) & ((\d1|yincr\(9) & (!\d1|Add0~17\)) # (!\d1|yincr\(9) & ((\d1|Add0~17\) # (GND)))))
-- \d1|Add0~19\ = CARRY((\d1|error\(9) & (!\d1|yincr\(9) & !\d1|Add0~17\)) # (!\d1|error\(9) & ((!\d1|Add0~17\) # (!\d1|yincr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error\(9),
	datab => \d1|yincr\(9),
	datad => VCC,
	cin => \d1|Add0~17\,
	combout => \d1|Add0~18_combout\,
	cout => \d1|Add0~19\);

-- Location: LCCOMB_X43_Y38_N22
\d1|C1:err2_v[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[9]~0_combout\ = (\d1|xincr\(9) & ((\d1|Add0~18_combout\ & (!\d1|C1:err2_v[8]~1\)) # (!\d1|Add0~18_combout\ & ((\d1|C1:err2_v[8]~1\) # (GND))))) # (!\d1|xincr\(9) & ((\d1|Add0~18_combout\ & (\d1|C1:err2_v[8]~1\ & VCC)) # 
-- (!\d1|Add0~18_combout\ & (!\d1|C1:err2_v[8]~1\))))
-- \d1|C1:err2_v[9]~1\ = CARRY((\d1|xincr\(9) & ((!\d1|C1:err2_v[8]~1\) # (!\d1|Add0~18_combout\))) # (!\d1|xincr\(9) & (!\d1|Add0~18_combout\ & !\d1|C1:err2_v[8]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|xincr\(9),
	datab => \d1|Add0~18_combout\,
	datad => VCC,
	cin => \d1|C1:err2_v[8]~1\,
	combout => \d1|C1:err2_v[9]~0_combout\,
	cout => \d1|C1:err2_v[9]~1\);

-- Location: LCCOMB_X46_Y38_N8
\d1|error[9]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[9]~7_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & ((\d1|Add0~18_combout\))) # (!\d1|y1[0]~39_combout\ & (\d1|C1:err2_v[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[9]~0_combout\,
	datab => \d1|Add0~18_combout\,
	datac => \d1|error[12]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[9]~7_combout\);

-- Location: FF_X46_Y38_N9
\d1|error[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[9]~7_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(9));

-- Location: LCCOMB_X42_Y38_N26
\d1|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~20_combout\ = ((\d1|error\(10) $ (\d1|yincr\(10) $ (!\d1|Add0~19\)))) # (GND)
-- \d1|Add0~21\ = CARRY((\d1|error\(10) & ((\d1|yincr\(10)) # (!\d1|Add0~19\))) # (!\d1|error\(10) & (\d1|yincr\(10) & !\d1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error\(10),
	datab => \d1|yincr\(10),
	datad => VCC,
	cin => \d1|Add0~19\,
	combout => \d1|Add0~20_combout\,
	cout => \d1|Add0~21\);

-- Location: FF_X43_Y39_N29
\d1|xincr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xincr[10]~32_combout\,
	sclr => \init~input_o\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xincr\(10));

-- Location: LCCOMB_X43_Y38_N24
\d1|C1:err2_v[10]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[10]~0_combout\ = ((\d1|Add0~20_combout\ $ (\d1|xincr\(10) $ (\d1|C1:err2_v[9]~1\)))) # (GND)
-- \d1|C1:err2_v[10]~1\ = CARRY((\d1|Add0~20_combout\ & ((!\d1|C1:err2_v[9]~1\) # (!\d1|xincr\(10)))) # (!\d1|Add0~20_combout\ & (!\d1|xincr\(10) & !\d1|C1:err2_v[9]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~20_combout\,
	datab => \d1|xincr\(10),
	datad => VCC,
	cin => \d1|C1:err2_v[9]~1\,
	combout => \d1|C1:err2_v[10]~0_combout\,
	cout => \d1|C1:err2_v[10]~1\);

-- Location: LCCOMB_X47_Y38_N30
\d1|error[10]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[10]~6_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & (\d1|Add0~20_combout\)) # (!\d1|y1[0]~39_combout\ & ((\d1|C1:err2_v[10]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error[12]~0_combout\,
	datab => \d1|Add0~20_combout\,
	datac => \d1|C1:err2_v[10]~0_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[10]~6_combout\);

-- Location: FF_X47_Y38_N31
\d1|error[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[10]~6_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(10));

-- Location: LCCOMB_X42_Y38_N28
\d1|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~22_combout\ = (\d1|yincr\(11) & ((\d1|error\(11) & (\d1|Add0~21\ & VCC)) # (!\d1|error\(11) & (!\d1|Add0~21\)))) # (!\d1|yincr\(11) & ((\d1|error\(11) & (!\d1|Add0~21\)) # (!\d1|error\(11) & ((\d1|Add0~21\) # (GND)))))
-- \d1|Add0~23\ = CARRY((\d1|yincr\(11) & (!\d1|error\(11) & !\d1|Add0~21\)) # (!\d1|yincr\(11) & ((!\d1|Add0~21\) # (!\d1|error\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|yincr\(11),
	datab => \d1|error\(11),
	datad => VCC,
	cin => \d1|Add0~21\,
	combout => \d1|Add0~22_combout\,
	cout => \d1|Add0~23\);

-- Location: LCCOMB_X43_Y38_N26
\d1|C1:err2_v[11]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[11]~0_combout\ = (\d1|xincr\(11) & ((\d1|Add0~22_combout\ & (!\d1|C1:err2_v[10]~1\)) # (!\d1|Add0~22_combout\ & ((\d1|C1:err2_v[10]~1\) # (GND))))) # (!\d1|xincr\(11) & ((\d1|Add0~22_combout\ & (\d1|C1:err2_v[10]~1\ & VCC)) # 
-- (!\d1|Add0~22_combout\ & (!\d1|C1:err2_v[10]~1\))))
-- \d1|C1:err2_v[11]~1\ = CARRY((\d1|xincr\(11) & ((!\d1|C1:err2_v[10]~1\) # (!\d1|Add0~22_combout\))) # (!\d1|xincr\(11) & (!\d1|Add0~22_combout\ & !\d1|C1:err2_v[10]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|xincr\(11),
	datab => \d1|Add0~22_combout\,
	datad => VCC,
	cin => \d1|C1:err2_v[10]~1\,
	combout => \d1|C1:err2_v[11]~0_combout\,
	cout => \d1|C1:err2_v[11]~1\);

-- Location: LCCOMB_X44_Y38_N20
\d1|Add3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~26_combout\ = (\d1|C1:err2_v[9]~0_combout\ & ((\d1|Add3~23\) # (GND))) # (!\d1|C1:err2_v[9]~0_combout\ & (!\d1|Add3~23\))
-- \d1|Add3~27\ = CARRY((\d1|C1:err2_v[9]~0_combout\) # (!\d1|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[9]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~23\,
	combout => \d1|Add3~26_combout\,
	cout => \d1|Add3~27\);

-- Location: LCCOMB_X44_Y38_N22
\d1|Add3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~28_combout\ = (\d1|C1:err2_v[10]~0_combout\ & (!\d1|Add3~27\ & VCC)) # (!\d1|C1:err2_v[10]~0_combout\ & (\d1|Add3~27\ $ (GND)))
-- \d1|Add3~29\ = CARRY((!\d1|C1:err2_v[10]~0_combout\ & !\d1|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[10]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~27\,
	combout => \d1|Add3~28_combout\,
	cout => \d1|Add3~29\);

-- Location: LCCOMB_X44_Y38_N24
\d1|Add3~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~32_combout\ = (\d1|C1:err2_v[11]~0_combout\ & ((\d1|Add3~29\) # (GND))) # (!\d1|C1:err2_v[11]~0_combout\ & (!\d1|Add3~29\))
-- \d1|Add3~33\ = CARRY((\d1|C1:err2_v[11]~0_combout\) # (!\d1|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[11]~0_combout\,
	datad => VCC,
	cin => \d1|Add3~29\,
	combout => \d1|Add3~32_combout\,
	cout => \d1|Add3~33\);

-- Location: LCCOMB_X44_Y38_N26
\d1|Add3~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~34_combout\ = \d1|Add3~33\ $ (\d1|C1:err2_v[12]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|C1:err2_v[12]~0_combout\,
	cin => \d1|Add3~33\,
	combout => \d1|Add3~34_combout\);

-- Location: LCCOMB_X48_Y38_N26
\d1|Add3~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~37_combout\ = (\d1|C1:err2_v[12]~0_combout\ & \d1|Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|C1:err2_v[12]~0_combout\,
	datad => \d1|Add3~34_combout\,
	combout => \d1|Add3~37_combout\);

-- Location: LCCOMB_X51_Y38_N22
\d1|Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~26_combout\ = (\d1|Add0~18_combout\ & ((\d1|Add2~24\) # (GND))) # (!\d1|Add0~18_combout\ & (!\d1|Add2~24\))
-- \d1|Add2~27\ = CARRY((\d1|Add0~18_combout\) # (!\d1|Add2~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~18_combout\,
	datad => VCC,
	cin => \d1|Add2~24\,
	combout => \d1|Add2~26_combout\,
	cout => \d1|Add2~27\);

-- Location: LCCOMB_X51_Y38_N24
\d1|Add2~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~29_combout\ = (\d1|Add0~20_combout\ & (!\d1|Add2~27\ & VCC)) # (!\d1|Add0~20_combout\ & (\d1|Add2~27\ $ (GND)))
-- \d1|Add2~30\ = CARRY((!\d1|Add0~20_combout\ & !\d1|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~20_combout\,
	datad => VCC,
	cin => \d1|Add2~27\,
	combout => \d1|Add2~29_combout\,
	cout => \d1|Add2~30\);

-- Location: LCCOMB_X51_Y38_N26
\d1|Add2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~32_combout\ = (\d1|Add0~22_combout\ & ((\d1|Add2~30\) # (GND))) # (!\d1|Add0~22_combout\ & (!\d1|Add2~30\))
-- \d1|Add2~33\ = CARRY((\d1|Add0~22_combout\) # (!\d1|Add2~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~22_combout\,
	datad => VCC,
	cin => \d1|Add2~30\,
	combout => \d1|Add2~32_combout\,
	cout => \d1|Add2~33\);

-- Location: LCCOMB_X51_Y38_N28
\d1|Add2~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~34_combout\ = \d1|Add2~33\ $ (\d1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|Add0~24_combout\,
	cin => \d1|Add2~33\,
	combout => \d1|Add2~34_combout\);

-- Location: LCCOMB_X51_Y38_N30
\d1|Add2~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~36_combout\ = (\d1|Add0~24_combout\ & \d1|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~24_combout\,
	datad => \d1|Add2~34_combout\,
	combout => \d1|Add2~36_combout\);

-- Location: LCCOMB_X51_Y38_N2
\d1|Add2~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~37_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~32_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~22_combout\,
	datac => \d1|Add2~32_combout\,
	datad => \d1|Add0~24_combout\,
	combout => \d1|Add2~37_combout\);

-- Location: LCCOMB_X44_Y38_N0
\d1|Add3~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~30_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~28_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[10]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[10]~0_combout\,
	datac => \d1|Add3~28_combout\,
	datad => \d1|C1:err2_v[12]~0_combout\,
	combout => \d1|Add3~30_combout\);

-- Location: LCCOMB_X51_Y38_N0
\d1|Add2~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~31_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~29_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add0~24_combout\,
	datab => \d1|Add0~20_combout\,
	datad => \d1|Add2~29_combout\,
	combout => \d1|Add2~31_combout\);

-- Location: LCCOMB_X43_Y38_N30
\d1|Add3~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~31_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~26_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[9]~0_combout\,
	datac => \d1|Add3~26_combout\,
	datad => \d1|C1:err2_v[12]~0_combout\,
	combout => \d1|Add3~31_combout\);

-- Location: LCCOMB_X46_Y38_N28
\d1|Add2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add2~28_combout\ = (\d1|Add0~24_combout\ & ((\d1|Add2~26_combout\))) # (!\d1|Add0~24_combout\ & (\d1|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|Add0~24_combout\,
	datac => \d1|Add0~18_combout\,
	datad => \d1|Add2~26_combout\,
	combout => \d1|Add2~28_combout\);

-- Location: LCCOMB_X48_Y38_N0
\d1|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~1_cout\ = CARRY((\d1|C1:err2_v[0]~0_combout\ & !\d1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[0]~0_combout\,
	datab => \d1|Add0~0_combout\,
	datad => VCC,
	cout => \d1|LessThan0~1_cout\);

-- Location: LCCOMB_X48_Y38_N2
\d1|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~3_cout\ = CARRY((\d1|Add3~7_combout\ & (\d1|Add2~4_combout\ & !\d1|LessThan0~1_cout\)) # (!\d1|Add3~7_combout\ & ((\d1|Add2~4_combout\) # (!\d1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~7_combout\,
	datab => \d1|Add2~4_combout\,
	datad => VCC,
	cin => \d1|LessThan0~1_cout\,
	cout => \d1|LessThan0~3_cout\);

-- Location: LCCOMB_X48_Y38_N4
\d1|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~5_cout\ = CARRY((\d1|Add3~6_combout\ & ((!\d1|LessThan0~3_cout\) # (!\d1|Add2~7_combout\))) # (!\d1|Add3~6_combout\ & (!\d1|Add2~7_combout\ & !\d1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~6_combout\,
	datab => \d1|Add2~7_combout\,
	datad => VCC,
	cin => \d1|LessThan0~3_cout\,
	cout => \d1|LessThan0~5_cout\);

-- Location: LCCOMB_X48_Y38_N6
\d1|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~7_cout\ = CARRY((\d1|Add3~13_combout\ & (\d1|Add2~10_combout\ & !\d1|LessThan0~5_cout\)) # (!\d1|Add3~13_combout\ & ((\d1|Add2~10_combout\) # (!\d1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~13_combout\,
	datab => \d1|Add2~10_combout\,
	datad => VCC,
	cin => \d1|LessThan0~5_cout\,
	cout => \d1|LessThan0~7_cout\);

-- Location: LCCOMB_X48_Y38_N8
\d1|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~9_cout\ = CARRY((\d1|Add3~12_combout\ & ((!\d1|LessThan0~7_cout\) # (!\d1|Add2~13_combout\))) # (!\d1|Add3~12_combout\ & (!\d1|Add2~13_combout\ & !\d1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~12_combout\,
	datab => \d1|Add2~13_combout\,
	datad => VCC,
	cin => \d1|LessThan0~7_cout\,
	cout => \d1|LessThan0~9_cout\);

-- Location: LCCOMB_X48_Y38_N10
\d1|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~11_cout\ = CARRY((\d1|Add2~16_combout\ & ((!\d1|LessThan0~9_cout\) # (!\d1|Add3~19_combout\))) # (!\d1|Add2~16_combout\ & (!\d1|Add3~19_combout\ & !\d1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add2~16_combout\,
	datab => \d1|Add3~19_combout\,
	datad => VCC,
	cin => \d1|LessThan0~9_cout\,
	cout => \d1|LessThan0~11_cout\);

-- Location: LCCOMB_X48_Y38_N12
\d1|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~13_cout\ = CARRY((\d1|Add3~18_combout\ & ((!\d1|LessThan0~11_cout\) # (!\d1|Add2~19_combout\))) # (!\d1|Add3~18_combout\ & (!\d1|Add2~19_combout\ & !\d1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~18_combout\,
	datab => \d1|Add2~19_combout\,
	datad => VCC,
	cin => \d1|LessThan0~11_cout\,
	cout => \d1|LessThan0~13_cout\);

-- Location: LCCOMB_X48_Y38_N14
\d1|LessThan0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~15_cout\ = CARRY((\d1|Add3~25_combout\ & (\d1|Add2~22_combout\ & !\d1|LessThan0~13_cout\)) # (!\d1|Add3~25_combout\ & ((\d1|Add2~22_combout\) # (!\d1|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~25_combout\,
	datab => \d1|Add2~22_combout\,
	datad => VCC,
	cin => \d1|LessThan0~13_cout\,
	cout => \d1|LessThan0~15_cout\);

-- Location: LCCOMB_X48_Y38_N16
\d1|LessThan0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~17_cout\ = CARRY((\d1|Add3~24_combout\ & ((!\d1|LessThan0~15_cout\) # (!\d1|Add2~25_combout\))) # (!\d1|Add3~24_combout\ & (!\d1|Add2~25_combout\ & !\d1|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~24_combout\,
	datab => \d1|Add2~25_combout\,
	datad => VCC,
	cin => \d1|LessThan0~15_cout\,
	cout => \d1|LessThan0~17_cout\);

-- Location: LCCOMB_X48_Y38_N18
\d1|LessThan0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~19_cout\ = CARRY((\d1|Add3~31_combout\ & (\d1|Add2~28_combout\ & !\d1|LessThan0~17_cout\)) # (!\d1|Add3~31_combout\ & ((\d1|Add2~28_combout\) # (!\d1|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~31_combout\,
	datab => \d1|Add2~28_combout\,
	datad => VCC,
	cin => \d1|LessThan0~17_cout\,
	cout => \d1|LessThan0~19_cout\);

-- Location: LCCOMB_X48_Y38_N20
\d1|LessThan0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~21_cout\ = CARRY((\d1|Add3~30_combout\ & ((!\d1|LessThan0~19_cout\) # (!\d1|Add2~31_combout\))) # (!\d1|Add3~30_combout\ & (!\d1|Add2~31_combout\ & !\d1|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~30_combout\,
	datab => \d1|Add2~31_combout\,
	datad => VCC,
	cin => \d1|LessThan0~19_cout\,
	cout => \d1|LessThan0~21_cout\);

-- Location: LCCOMB_X48_Y38_N22
\d1|LessThan0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~23_cout\ = CARRY((\d1|Add3~36_combout\ & (\d1|Add2~37_combout\ & !\d1|LessThan0~21_cout\)) # (!\d1|Add3~36_combout\ & ((\d1|Add2~37_combout\) # (!\d1|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~36_combout\,
	datab => \d1|Add2~37_combout\,
	datad => VCC,
	cin => \d1|LessThan0~21_cout\,
	cout => \d1|LessThan0~23_cout\);

-- Location: LCCOMB_X48_Y38_N24
\d1|LessThan0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|LessThan0~24_combout\ = (\d1|Add3~37_combout\ & ((!\d1|LessThan0~23_cout\) # (!\d1|Add2~36_combout\))) # (!\d1|Add3~37_combout\ & (!\d1|Add2~36_combout\ & !\d1|LessThan0~23_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~37_combout\,
	datab => \d1|Add2~36_combout\,
	cin => \d1|LessThan0~23_cout\,
	combout => \d1|LessThan0~24_combout\);

-- Location: LCCOMB_X47_Y38_N2
\d1|y1[0]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[0]~39_combout\ = (\d1|Equal2~4_combout\ & ((\d1|Equal2~8_combout\ & (\xbias_in~combout\)) # (!\d1|Equal2~8_combout\ & ((\d1|LessThan0~24_combout\))))) # (!\d1|Equal2~4_combout\ & (((\d1|LessThan0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Equal2~4_combout\,
	datab => \xbias_in~combout\,
	datac => \d1|Equal2~8_combout\,
	datad => \d1|LessThan0~24_combout\,
	combout => \d1|y1[0]~39_combout\);

-- Location: LCCOMB_X47_Y38_N12
\d1|error[12]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|error[12]~4_combout\ = (\d1|error[12]~0_combout\ & ((\d1|y1[0]~39_combout\ & ((\d1|Add0~24_combout\))) # (!\d1|y1[0]~39_combout\ & (\d1|C1:err2_v[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|error[12]~0_combout\,
	datab => \d1|C1:err2_v[12]~0_combout\,
	datac => \d1|Add0~24_combout\,
	datad => \d1|y1[0]~39_combout\,
	combout => \d1|error[12]~4_combout\);

-- Location: FF_X47_Y38_N13
\d1|error[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|error[12]~4_combout\,
	ena => \d1|error[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|error\(12));

-- Location: LCCOMB_X42_Y38_N30
\d1|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add0~24_combout\ = \d1|Add0~23\ $ (!\d1|error\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|error\(12),
	cin => \d1|Add0~23\,
	combout => \d1|Add0~24_combout\);

-- Location: LCCOMB_X43_Y38_N28
\d1|C1:err2_v[12]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1:err2_v[12]~0_combout\ = \d1|C1:err2_v[11]~1\ $ (\d1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|Add0~24_combout\,
	cin => \d1|C1:err2_v[11]~1\,
	combout => \d1|C1:err2_v[12]~0_combout\);

-- Location: LCCOMB_X43_Y38_N2
\d1|Add3~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Add3~36_combout\ = (\d1|C1:err2_v[12]~0_combout\ & ((\d1|Add3~32_combout\))) # (!\d1|C1:err2_v[12]~0_combout\ & (\d1|C1:err2_v[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|C1:err2_v[12]~0_combout\,
	datac => \d1|C1:err2_v[11]~0_combout\,
	datad => \d1|Add3~32_combout\,
	combout => \d1|Add3~36_combout\);

-- Location: LCCOMB_X50_Y38_N0
\d1|Equal2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~6_combout\ = \d1|Add0~0_combout\ $ (\d1|C1:err2_v[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|Add0~0_combout\,
	datad => \d1|C1:err2_v[0]~0_combout\,
	combout => \d1|Equal2~6_combout\);

-- Location: LCCOMB_X50_Y38_N10
\d1|Equal2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~7_combout\ = (!\d1|Equal2~6_combout\ & (\d1|Add2~36_combout\ $ (((!\d1|Add3~34_combout\) # (!\d1|C1:err2_v[12]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1:err2_v[12]~0_combout\,
	datab => \d1|Equal2~6_combout\,
	datac => \d1|Add2~36_combout\,
	datad => \d1|Add3~34_combout\,
	combout => \d1|Equal2~7_combout\);

-- Location: LCCOMB_X44_Y38_N30
\d1|Equal2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~5_combout\ = (\d1|Add2~28_combout\ & (\d1|Add3~31_combout\ & (\d1|Add3~30_combout\ $ (!\d1|Add2~31_combout\)))) # (!\d1|Add2~28_combout\ & (!\d1|Add3~31_combout\ & (\d1|Add3~30_combout\ $ (!\d1|Add2~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add2~28_combout\,
	datab => \d1|Add3~30_combout\,
	datac => \d1|Add2~31_combout\,
	datad => \d1|Add3~31_combout\,
	combout => \d1|Equal2~5_combout\);

-- Location: LCCOMB_X49_Y38_N6
\d1|Equal2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|Equal2~8_combout\ = (\d1|Equal2~7_combout\ & (\d1|Equal2~5_combout\ & (\d1|Add3~36_combout\ $ (!\d1|Add2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Add3~36_combout\,
	datab => \d1|Add2~37_combout\,
	datac => \d1|Equal2~7_combout\,
	datad => \d1|Equal2~5_combout\,
	combout => \d1|Equal2~8_combout\);

-- Location: LCCOMB_X49_Y38_N0
\d1|y1[11]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[11]~17_combout\ = (\d1|Equal2~8_combout\ & ((\d1|Equal2~4_combout\ & (\xbias_in~combout\)) # (!\d1|Equal2~4_combout\ & ((\d1|LessThan0~24_combout\))))) # (!\d1|Equal2~8_combout\ & (((\d1|LessThan0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Equal2~8_combout\,
	datab => \xbias_in~combout\,
	datac => \d1|Equal2~4_combout\,
	datad => \d1|LessThan0~24_combout\,
	combout => \d1|y1[11]~17_combout\);

-- Location: LCCOMB_X49_Y38_N2
\d1|y1[11]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[11]~18_combout\ = (!\d1|y1[11]~16_combout\ & ((\init~input_o\) # ((!\d1|done~combout\ & !\d1|y1[11]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~input_o\,
	datab => \d1|y1[11]~16_combout\,
	datac => \d1|done~combout\,
	datad => \d1|y1[11]~17_combout\,
	combout => \d1|y1[11]~18_combout\);

-- Location: FF_X49_Y38_N9
\d1|y1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[0]~12_combout\,
	asdata => \i2|data_out[0]~0_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(0));

-- Location: LCCOMB_X49_Y38_N10
\d1|y1[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[1]~14_combout\ = (\d1|y1\(1) & (!\d1|y1[0]~13\)) # (!\d1|y1\(1) & ((\d1|y1[0]~13\) # (GND)))
-- \d1|y1[1]~15\ = CARRY((!\d1|y1[0]~13\) # (!\d1|y1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(1),
	datad => VCC,
	cin => \d1|y1[0]~13\,
	combout => \d1|y1[1]~14_combout\,
	cout => \d1|y1[1]~15\);

-- Location: FF_X49_Y38_N11
\d1|y1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[1]~14_combout\,
	asdata => \i2|data_out[1]~1_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(1));

-- Location: LCCOMB_X49_Y38_N12
\d1|y1[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[2]~19_combout\ = (\d1|y1\(2) & (\d1|y1[1]~15\ $ (GND))) # (!\d1|y1\(2) & (!\d1|y1[1]~15\ & VCC))
-- \d1|y1[2]~20\ = CARRY((\d1|y1\(2) & !\d1|y1[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(2),
	datad => VCC,
	cin => \d1|y1[1]~15\,
	combout => \d1|y1[2]~19_combout\,
	cout => \d1|y1[2]~20\);

-- Location: FF_X49_Y38_N13
\d1|y1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[2]~19_combout\,
	asdata => \i2|data_out[2]~2_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(2));

-- Location: LCCOMB_X49_Y38_N14
\d1|y1[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[3]~21_combout\ = (\d1|y1\(3) & (!\d1|y1[2]~20\)) # (!\d1|y1\(3) & ((\d1|y1[2]~20\) # (GND)))
-- \d1|y1[3]~22\ = CARRY((!\d1|y1[2]~20\) # (!\d1|y1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|y1\(3),
	datad => VCC,
	cin => \d1|y1[2]~20\,
	combout => \d1|y1[3]~21_combout\,
	cout => \d1|y1[3]~22\);

-- Location: FF_X49_Y38_N15
\d1|y1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[3]~21_combout\,
	asdata => \i2|data_out[3]~3_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(3));

-- Location: LCCOMB_X49_Y38_N16
\d1|y1[4]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[4]~23_combout\ = (\d1|y1\(4) & (\d1|y1[3]~22\ $ (GND))) # (!\d1|y1\(4) & (!\d1|y1[3]~22\ & VCC))
-- \d1|y1[4]~24\ = CARRY((\d1|y1\(4) & !\d1|y1[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|y1\(4),
	datad => VCC,
	cin => \d1|y1[3]~22\,
	combout => \d1|y1[4]~23_combout\,
	cout => \d1|y1[4]~24\);

-- Location: FF_X49_Y38_N17
\d1|y1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[4]~23_combout\,
	asdata => \i2|data_out[4]~4_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(4));

-- Location: LCCOMB_X49_Y38_N18
\d1|y1[5]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|y1[5]~25_combout\ = (\d1|y1\(5) & (!\d1|y1[4]~24\)) # (!\d1|y1\(5) & ((\d1|y1[4]~24\) # (GND)))
-- \d1|y1[5]~26\ = CARRY((!\d1|y1[4]~24\) # (!\d1|y1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|y1\(5),
	datad => VCC,
	cin => \d1|y1[4]~24\,
	combout => \d1|y1[5]~25_combout\,
	cout => \d1|y1[5]~26\);

-- Location: FF_X49_Y38_N19
\d1|y1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[5]~25_combout\,
	asdata => \i2|data_out[5]~5_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(5));

-- Location: FF_X49_Y38_N21
\d1|y1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|y1[6]~27_combout\,
	asdata => \i2|data_out[6]~6_combout\,
	sload => \init~input_o\,
	ena => \d1|y1[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|y1\(6));

-- Location: FF_X46_Y39_N23
\d1|ynew[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[6]~6_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(6));

-- Location: LCCOMB_X46_Y39_N22
\d1|C1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~11_combout\ = (\d1|ynew\(7) & (\d1|y1\(7) & (\d1|y1\(6) $ (!\d1|ynew\(6))))) # (!\d1|ynew\(7) & (!\d1|y1\(7) & (\d1|y1\(6) $ (!\d1|ynew\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|ynew\(7),
	datab => \d1|y1\(6),
	datac => \d1|ynew\(6),
	datad => \d1|y1\(7),
	combout => \d1|C1~11_combout\);

-- Location: FF_X46_Y38_N21
\d1|ynew[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[5]~5_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(5));

-- Location: FF_X46_Y39_N21
\d1|ynew[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[4]~4_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(4));

-- Location: LCCOMB_X46_Y39_N20
\d1|C1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~10_combout\ = (\d1|y1\(4) & (\d1|ynew\(4) & (\d1|ynew\(5) $ (!\d1|y1\(5))))) # (!\d1|y1\(4) & (!\d1|ynew\(4) & (\d1|ynew\(5) $ (!\d1|y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(4),
	datab => \d1|ynew\(5),
	datac => \d1|ynew\(4),
	datad => \d1|y1\(5),
	combout => \d1|C1~10_combout\);

-- Location: FF_X47_Y39_N5
\d1|ynew[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[11]~11_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(11));

-- Location: FF_X46_Y39_N27
\d1|ynew[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[10]~10_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(10));

-- Location: LCCOMB_X46_Y39_N26
\d1|C1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~13_combout\ = (\d1|ynew\(11) & (\d1|y1\(11) & (\d1|y1\(10) $ (!\d1|ynew\(10))))) # (!\d1|ynew\(11) & (!\d1|y1\(11) & (\d1|y1\(10) $ (!\d1|ynew\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|ynew\(11),
	datab => \d1|y1\(10),
	datac => \d1|ynew\(10),
	datad => \d1|y1\(11),
	combout => \d1|C1~13_combout\);

-- Location: LCCOMB_X44_Y39_N26
\d1|ynew[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|ynew[9]~feeder_combout\ = \i2|data_out[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2|data_out[9]~9_combout\,
	combout => \d1|ynew[9]~feeder_combout\);

-- Location: FF_X44_Y39_N27
\d1|ynew[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|ynew[9]~feeder_combout\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(9));

-- Location: FF_X46_Y39_N13
\d1|ynew[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[8]~8_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(8));

-- Location: LCCOMB_X46_Y39_N12
\d1|C1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~12_combout\ = (\d1|y1\(9) & (\d1|ynew\(9) & (\d1|ynew\(8) $ (!\d1|y1\(8))))) # (!\d1|y1\(9) & (!\d1|ynew\(9) & (\d1|ynew\(8) $ (!\d1|y1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(9),
	datab => \d1|ynew\(9),
	datac => \d1|ynew\(8),
	datad => \d1|y1\(8),
	combout => \d1|C1~12_combout\);

-- Location: LCCOMB_X46_Y39_N0
\d1|C1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~14_combout\ = (\d1|C1~11_combout\ & (\d1|C1~10_combout\ & (\d1|C1~13_combout\ & \d1|C1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1~11_combout\,
	datab => \d1|C1~10_combout\,
	datac => \d1|C1~13_combout\,
	datad => \d1|C1~12_combout\,
	combout => \d1|C1~14_combout\);

-- Location: LCCOMB_X44_Y39_N28
\d1|xnew[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xnew[11]~feeder_combout\ = \i1|data_out[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i1|data_out[11]~11_combout\,
	combout => \d1|xnew[11]~feeder_combout\);

-- Location: FF_X44_Y39_N29
\d1|xnew[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xnew[11]~feeder_combout\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(11));

-- Location: FF_X46_Y39_N15
\d1|xnew[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[10]~10_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(10));

-- Location: LCCOMB_X46_Y39_N14
\d1|C1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~6_combout\ = (\d1|xnew\(11) & (\d1|x1\(11) & (\d1|xnew\(10) $ (!\d1|x1\(10))))) # (!\d1|xnew\(11) & (!\d1|x1\(11) & (\d1|xnew\(10) $ (!\d1|x1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|xnew\(11),
	datab => \d1|x1\(11),
	datac => \d1|xnew\(10),
	datad => \d1|x1\(10),
	combout => \d1|C1~6_combout\);

-- Location: FF_X48_Y39_N27
\d1|ynew[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[0]~0_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(0));

-- Location: FF_X48_Y39_N21
\d1|ynew[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[1]~1_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(1));

-- Location: LCCOMB_X48_Y39_N26
\d1|C1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~7_combout\ = (\d1|y1\(1) & (\d1|ynew\(1) & (\d1|y1\(0) $ (!\d1|ynew\(0))))) # (!\d1|y1\(1) & (!\d1|ynew\(1) & (\d1|y1\(0) $ (!\d1|ynew\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(1),
	datab => \d1|y1\(0),
	datac => \d1|ynew\(0),
	datad => \d1|ynew\(1),
	combout => \d1|C1~7_combout\);

-- Location: FF_X47_Y39_N27
\d1|xnew[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[8]~8_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(8));

-- Location: FF_X47_Y39_N1
\d1|xnew[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[9]~9_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(9));

-- Location: LCCOMB_X47_Y39_N26
\d1|C1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~5_combout\ = (\d1|x1\(9) & (\d1|xnew\(9) & (\d1|x1\(8) $ (!\d1|xnew\(8))))) # (!\d1|x1\(9) & (!\d1|xnew\(9) & (\d1|x1\(8) $ (!\d1|xnew\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(9),
	datab => \d1|x1\(8),
	datac => \d1|xnew\(8),
	datad => \d1|xnew\(9),
	combout => \d1|C1~5_combout\);

-- Location: FF_X48_Y39_N11
\d1|ynew[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2|data_out[2]~2_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(2));

-- Location: FF_X48_Y39_N1
\d1|ynew[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2|data_out[3]~3_combout\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|ynew\(3));

-- Location: LCCOMB_X49_Y39_N12
\d1|C1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~8_combout\ = (\d1|ynew\(2) & (\d1|y1\(2) & (\d1|ynew\(3) $ (!\d1|y1\(3))))) # (!\d1|ynew\(2) & (!\d1|y1\(2) & (\d1|ynew\(3) $ (!\d1|y1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|ynew\(2),
	datab => \d1|y1\(2),
	datac => \d1|ynew\(3),
	datad => \d1|y1\(3),
	combout => \d1|C1~8_combout\);

-- Location: LCCOMB_X47_Y39_N14
\d1|C1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~9_combout\ = (\d1|C1~6_combout\ & (\d1|C1~7_combout\ & (\d1|C1~5_combout\ & \d1|C1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1~6_combout\,
	datab => \d1|C1~7_combout\,
	datac => \d1|C1~5_combout\,
	datad => \d1|C1~8_combout\,
	combout => \d1|C1~9_combout\);

-- Location: FF_X42_Y39_N23
\d1|xnew[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i1|data_out[7]~7_combout\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(7));

-- Location: FF_X42_Y39_N1
\d1|xnew[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[6]~6_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(6));

-- Location: LCCOMB_X42_Y39_N0
\d1|C1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~3_combout\ = (\d1|xnew\(7) & (\d1|x1\(7) & (\d1|xnew\(6) $ (!\d1|x1\(6))))) # (!\d1|xnew\(7) & (!\d1|x1\(7) & (\d1|xnew\(6) $ (!\d1|x1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|xnew\(7),
	datab => \d1|x1\(7),
	datac => \d1|xnew\(6),
	datad => \d1|x1\(6),
	combout => \d1|C1~3_combout\);

-- Location: FF_X46_Y39_N25
\d1|xnew[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[4]~4_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(4));

-- Location: FF_X47_Y39_N3
\d1|xnew[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[5]~5_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(5));

-- Location: LCCOMB_X46_Y39_N24
\d1|C1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~2_combout\ = (\d1|x1\(5) & (\d1|xnew\(5) & (\d1|x1\(4) $ (!\d1|xnew\(4))))) # (!\d1|x1\(5) & (!\d1|xnew\(5) & (\d1|x1\(4) $ (!\d1|xnew\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(5),
	datab => \d1|x1\(4),
	datac => \d1|xnew\(4),
	datad => \d1|xnew\(5),
	combout => \d1|C1~2_combout\);

-- Location: FF_X47_Y39_N9
\d1|xnew[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[0]~0_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(0));

-- Location: FF_X48_Y39_N17
\d1|xnew[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[1]~1_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(1));

-- Location: LCCOMB_X47_Y39_N8
\d1|C1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~0_combout\ = (\d1|x1\(0) & (\d1|xnew\(0) & (\d1|x1\(1) $ (!\d1|xnew\(1))))) # (!\d1|x1\(0) & (!\d1|xnew\(0) & (\d1|x1\(1) $ (!\d1|xnew\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(0),
	datab => \d1|x1\(1),
	datac => \d1|xnew\(0),
	datad => \d1|xnew\(1),
	combout => \d1|C1~0_combout\);

-- Location: FF_X48_Y39_N7
\d1|xnew[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i1|data_out[2]~2_combout\,
	sload => VCC,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(2));

-- Location: LCCOMB_X48_Y39_N24
\d1|xnew[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|xnew[3]~feeder_combout\ = \i1|data_out[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i1|data_out[3]~3_combout\,
	combout => \d1|xnew[3]~feeder_combout\);

-- Location: FF_X48_Y39_N25
\d1|xnew[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|xnew[3]~feeder_combout\,
	ena => \d1|xnew[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|xnew\(3));

-- Location: LCCOMB_X48_Y39_N6
\d1|C1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~1_combout\ = (\d1|x1\(3) & (\d1|xnew\(3) & (\d1|x1\(2) $ (!\d1|xnew\(2))))) # (!\d1|x1\(3) & (!\d1|xnew\(3) & (\d1|x1\(2) $ (!\d1|xnew\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(3),
	datab => \d1|x1\(2),
	datac => \d1|xnew\(2),
	datad => \d1|xnew\(3),
	combout => \d1|C1~1_combout\);

-- Location: LCCOMB_X47_Y39_N16
\d1|C1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~4_combout\ = (\d1|C1~3_combout\ & (\d1|C1~2_combout\ & (\d1|C1~0_combout\ & \d1|C1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1~3_combout\,
	datab => \d1|C1~2_combout\,
	datac => \d1|C1~0_combout\,
	datad => \d1|C1~1_combout\,
	combout => \d1|C1~4_combout\);

-- Location: LCCOMB_X47_Y39_N6
\d1|C1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|C1~15_combout\ = (\d1|C1~14_combout\ & (!\init~input_o\ & (\d1|C1~9_combout\ & \d1|C1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|C1~14_combout\,
	datab => \init~input_o\,
	datac => \d1|C1~9_combout\,
	datad => \d1|C1~4_combout\,
	combout => \d1|C1~15_combout\);

-- Location: LCCOMB_X47_Y39_N24
\d1|done\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d1|done~combout\ = (!\draw~input_o\ & \d1|C1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw~input_o\,
	datad => \d1|C1~15_combout\,
	combout => \d1|done~combout\);

-- Location: LCCOMB_X46_Y39_N10
\rd1|swapxy_out_temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd1|swapxy_out_temp~0_combout\ = (\swapxy~input_o\ & !\disable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \swapxy~input_o\,
	datad => \disable~input_o\,
	combout => \rd1|swapxy_out_temp~0_combout\);

-- Location: FF_X46_Y39_N11
\rd1|swapxy_out_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd1|swapxy_out_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rd1|swapxy_out_temp~q\);

-- Location: LCCOMB_X47_Y39_N22
\rd1|negx_out_temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd1|negx_out_temp~0_combout\ = (!\disable~input_o\ & \negx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disable~input_o\,
	datad => \negx~input_o\,
	combout => \rd1|negx_out_temp~0_combout\);

-- Location: FF_X47_Y39_N23
\rd1|negx_out_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd1|negx_out_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rd1|negx_out_temp~q\);

-- Location: LCCOMB_X47_Y39_N4
\i3|data_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[0]~0_combout\ = \d1|x1\(0) $ (\rd1|negx_out_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(0),
	datad => \rd1|negx_out_temp~q\,
	combout => \i3|data_out[0]~0_combout\);

-- Location: LCCOMB_X47_Y39_N12
\rd1|negy_out_temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd1|negy_out_temp~0_combout\ = (!\disable~input_o\ & \negy~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disable~input_o\,
	datac => \negy~input_o\,
	combout => \rd1|negy_out_temp~0_combout\);

-- Location: FF_X47_Y39_N13
\rd1|negy_out_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd1|negy_out_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rd1|negy_out_temp~q\);

-- Location: LCCOMB_X49_Y39_N2
\s2|xout[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[0]~0_combout\ = (\rd1|swapxy_out_temp~q\ & ((\d1|y1\(0) $ (\rd1|negy_out_temp~q\)))) # (!\rd1|swapxy_out_temp~q\ & (\i3|data_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \i3|data_out[0]~0_combout\,
	datac => \d1|y1\(0),
	datad => \rd1|negy_out_temp~q\,
	combout => \s2|xout[0]~0_combout\);

-- Location: LCCOMB_X47_Y39_N0
\i3|data_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[1]~1_combout\ = \d1|x1\(1) $ (\rd1|negx_out_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(1),
	datad => \rd1|negx_out_temp~q\,
	combout => \i3|data_out[1]~1_combout\);

-- Location: LCCOMB_X49_Y39_N20
\s2|xout[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[1]~1_combout\ = (\rd1|swapxy_out_temp~q\ & (\d1|y1\(1) $ ((\rd1|negy_out_temp~q\)))) # (!\rd1|swapxy_out_temp~q\ & (((\i3|data_out[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(1),
	datab => \rd1|negy_out_temp~q\,
	datac => \i3|data_out[1]~1_combout\,
	datad => \rd1|swapxy_out_temp~q\,
	combout => \s2|xout[1]~1_combout\);

-- Location: LCCOMB_X48_Y39_N10
\i3|data_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[2]~2_combout\ = \d1|x1\(2) $ (\rd1|negx_out_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(2),
	datad => \rd1|negx_out_temp~q\,
	combout => \i3|data_out[2]~2_combout\);

-- Location: LCCOMB_X49_Y39_N6
\s2|xout[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[2]~2_combout\ = (\rd1|swapxy_out_temp~q\ & ((\rd1|negy_out_temp~q\ $ (\d1|y1\(2))))) # (!\rd1|swapxy_out_temp~q\ & (\i3|data_out[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|data_out[2]~2_combout\,
	datab => \rd1|negy_out_temp~q\,
	datac => \d1|y1\(2),
	datad => \rd1|swapxy_out_temp~q\,
	combout => \s2|xout[2]~2_combout\);

-- Location: LCCOMB_X49_Y39_N16
\i3|data_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[3]~3_combout\ = \d1|x1\(3) $ (\rd1|negx_out_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|x1\(3),
	datad => \rd1|negx_out_temp~q\,
	combout => \i3|data_out[3]~3_combout\);

-- Location: LCCOMB_X49_Y39_N14
\s2|xout[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[3]~3_combout\ = (\rd1|swapxy_out_temp~q\ & (\d1|y1\(3) $ ((\rd1|negy_out_temp~q\)))) # (!\rd1|swapxy_out_temp~q\ & (((\i3|data_out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(3),
	datab => \rd1|negy_out_temp~q\,
	datac => \rd1|swapxy_out_temp~q\,
	datad => \i3|data_out[3]~3_combout\,
	combout => \s2|xout[3]~3_combout\);

-- Location: LCCOMB_X48_Y39_N18
\i3|data_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[4]~4_combout\ = \rd1|negx_out_temp~q\ $ (\d1|x1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd1|negx_out_temp~q\,
	datad => \d1|x1\(4),
	combout => \i3|data_out[4]~4_combout\);

-- Location: LCCOMB_X49_Y39_N4
\s2|xout[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[4]~4_combout\ = (\rd1|swapxy_out_temp~q\ & (\d1|y1\(4) $ ((\rd1|negy_out_temp~q\)))) # (!\rd1|swapxy_out_temp~q\ & (((\i3|data_out[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(4),
	datab => \rd1|negy_out_temp~q\,
	datac => \rd1|swapxy_out_temp~q\,
	datad => \i3|data_out[4]~4_combout\,
	combout => \s2|xout[4]~4_combout\);

-- Location: LCCOMB_X42_Y39_N18
\i3|data_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[5]~5_combout\ = \rd1|negx_out_temp~q\ $ (\d1|x1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd1|negx_out_temp~q\,
	datad => \d1|x1\(5),
	combout => \i3|data_out[5]~5_combout\);

-- Location: LCCOMB_X44_Y39_N24
\s2|xout[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[5]~5_combout\ = (\rd1|swapxy_out_temp~q\ & (\rd1|negy_out_temp~q\ $ (((\d1|y1\(5)))))) # (!\rd1|swapxy_out_temp~q\ & (((\i3|data_out[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|negy_out_temp~q\,
	datab => \i3|data_out[5]~5_combout\,
	datac => \d1|y1\(5),
	datad => \rd1|swapxy_out_temp~q\,
	combout => \s2|xout[5]~5_combout\);

-- Location: LCCOMB_X42_Y39_N8
\i3|data_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[6]~6_combout\ = \rd1|negx_out_temp~q\ $ (\d1|x1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd1|negx_out_temp~q\,
	datad => \d1|x1\(6),
	combout => \i3|data_out[6]~6_combout\);

-- Location: LCCOMB_X42_Y39_N14
\s2|xout[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[6]~6_combout\ = (\rd1|swapxy_out_temp~q\ & ((\rd1|negy_out_temp~q\ $ (\d1|y1\(6))))) # (!\rd1|swapxy_out_temp~q\ & (\i3|data_out[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \i3|data_out[6]~6_combout\,
	datac => \rd1|negy_out_temp~q\,
	datad => \d1|y1\(6),
	combout => \s2|xout[6]~6_combout\);

-- Location: LCCOMB_X42_Y39_N28
\i3|data_out[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[7]~7_combout\ = \d1|x1\(7) $ (\rd1|negx_out_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(7),
	datac => \rd1|negx_out_temp~q\,
	combout => \i3|data_out[7]~7_combout\);

-- Location: LCCOMB_X42_Y39_N2
\s2|xout[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[7]~7_combout\ = (\rd1|swapxy_out_temp~q\ & ((\rd1|negy_out_temp~q\ $ (\d1|y1\(7))))) # (!\rd1|swapxy_out_temp~q\ & (\i3|data_out[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \i3|data_out[7]~7_combout\,
	datac => \rd1|negy_out_temp~q\,
	datad => \d1|y1\(7),
	combout => \s2|xout[7]~7_combout\);

-- Location: LCCOMB_X49_Y39_N22
\i3|data_out[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[8]~8_combout\ = \d1|x1\(8) $ (\rd1|negx_out_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|x1\(8),
	datad => \rd1|negx_out_temp~q\,
	combout => \i3|data_out[8]~8_combout\);

-- Location: LCCOMB_X49_Y39_N24
\s2|xout[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[8]~8_combout\ = (\rd1|swapxy_out_temp~q\ & (\d1|y1\(8) $ ((\rd1|negy_out_temp~q\)))) # (!\rd1|swapxy_out_temp~q\ & (((\i3|data_out[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(8),
	datab => \rd1|negy_out_temp~q\,
	datac => \i3|data_out[8]~8_combout\,
	datad => \rd1|swapxy_out_temp~q\,
	combout => \s2|xout[8]~8_combout\);

-- Location: LCCOMB_X42_Y39_N12
\i3|data_out[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[9]~9_combout\ = \rd1|negx_out_temp~q\ $ (\d1|x1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd1|negx_out_temp~q\,
	datad => \d1|x1\(9),
	combout => \i3|data_out[9]~9_combout\);

-- Location: LCCOMB_X42_Y39_N6
\s2|xout[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[9]~9_combout\ = (\rd1|swapxy_out_temp~q\ & (\rd1|negy_out_temp~q\ $ ((\d1|y1\(9))))) # (!\rd1|swapxy_out_temp~q\ & (((\i3|data_out[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \rd1|negy_out_temp~q\,
	datac => \d1|y1\(9),
	datad => \i3|data_out[9]~9_combout\,
	combout => \s2|xout[9]~9_combout\);

-- Location: LCCOMB_X47_Y39_N2
\i3|data_out[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[10]~10_combout\ = \d1|x1\(10) $ (\rd1|negx_out_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(10),
	datad => \rd1|negx_out_temp~q\,
	combout => \i3|data_out[10]~10_combout\);

-- Location: LCCOMB_X47_Y39_N18
\s2|xout[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[10]~10_combout\ = (\rd1|swapxy_out_temp~q\ & (\rd1|negy_out_temp~q\ $ ((\d1|y1\(10))))) # (!\rd1|swapxy_out_temp~q\ & (((\i3|data_out[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|negy_out_temp~q\,
	datab => \rd1|swapxy_out_temp~q\,
	datac => \d1|y1\(10),
	datad => \i3|data_out[10]~10_combout\,
	combout => \s2|xout[10]~10_combout\);

-- Location: LCCOMB_X42_Y39_N4
\i3|data_out[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i3|data_out[11]~11_combout\ = \d1|x1\(11) $ (\rd1|negx_out_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|x1\(11),
	datac => \rd1|negx_out_temp~q\,
	combout => \i3|data_out[11]~11_combout\);

-- Location: LCCOMB_X49_Y39_N30
\s2|xout[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|xout[11]~11_combout\ = (\rd1|swapxy_out_temp~q\ & (\d1|y1\(11) $ (((\rd1|negy_out_temp~q\))))) # (!\rd1|swapxy_out_temp~q\ & (((\i3|data_out[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(11),
	datab => \rd1|swapxy_out_temp~q\,
	datac => \i3|data_out[11]~11_combout\,
	datad => \rd1|negy_out_temp~q\,
	combout => \s2|xout[11]~11_combout\);

-- Location: LCCOMB_X49_Y39_N8
\s2|yout[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[0]~0_combout\ = (\rd1|swapxy_out_temp~q\ & (\i3|data_out[0]~0_combout\)) # (!\rd1|swapxy_out_temp~q\ & ((\d1|y1\(0) $ (\rd1|negy_out_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \i3|data_out[0]~0_combout\,
	datac => \d1|y1\(0),
	datad => \rd1|negy_out_temp~q\,
	combout => \s2|yout[0]~0_combout\);

-- Location: LCCOMB_X49_Y39_N18
\s2|yout[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[1]~1_combout\ = (\rd1|swapxy_out_temp~q\ & (((\i3|data_out[1]~1_combout\)))) # (!\rd1|swapxy_out_temp~q\ & (\d1|y1\(1) $ ((\rd1|negy_out_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(1),
	datab => \rd1|negy_out_temp~q\,
	datac => \i3|data_out[1]~1_combout\,
	datad => \rd1|swapxy_out_temp~q\,
	combout => \s2|yout[1]~1_combout\);

-- Location: LCCOMB_X49_Y39_N28
\s2|yout[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[2]~2_combout\ = (\rd1|swapxy_out_temp~q\ & (\i3|data_out[2]~2_combout\)) # (!\rd1|swapxy_out_temp~q\ & ((\rd1|negy_out_temp~q\ $ (\d1|y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|data_out[2]~2_combout\,
	datab => \rd1|negy_out_temp~q\,
	datac => \d1|y1\(2),
	datad => \rd1|swapxy_out_temp~q\,
	combout => \s2|yout[2]~2_combout\);

-- Location: LCCOMB_X49_Y39_N26
\s2|yout[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[3]~3_combout\ = (\rd1|swapxy_out_temp~q\ & (((\i3|data_out[3]~3_combout\)))) # (!\rd1|swapxy_out_temp~q\ & (\d1|y1\(3) $ ((\rd1|negy_out_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(3),
	datab => \rd1|negy_out_temp~q\,
	datac => \rd1|swapxy_out_temp~q\,
	datad => \i3|data_out[3]~3_combout\,
	combout => \s2|yout[3]~3_combout\);

-- Location: LCCOMB_X49_Y39_N0
\s2|yout[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[4]~4_combout\ = (\rd1|swapxy_out_temp~q\ & (((\i3|data_out[4]~4_combout\)))) # (!\rd1|swapxy_out_temp~q\ & (\d1|y1\(4) $ ((\rd1|negy_out_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(4),
	datab => \rd1|negy_out_temp~q\,
	datac => \rd1|swapxy_out_temp~q\,
	datad => \i3|data_out[4]~4_combout\,
	combout => \s2|yout[4]~4_combout\);

-- Location: LCCOMB_X42_Y39_N26
\s2|yout[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[5]~5_combout\ = (\rd1|swapxy_out_temp~q\ & (\i3|data_out[5]~5_combout\)) # (!\rd1|swapxy_out_temp~q\ & ((\rd1|negy_out_temp~q\ $ (\d1|y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \i3|data_out[5]~5_combout\,
	datac => \rd1|negy_out_temp~q\,
	datad => \d1|y1\(5),
	combout => \s2|yout[5]~5_combout\);

-- Location: LCCOMB_X42_Y39_N20
\s2|yout[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[6]~6_combout\ = (\rd1|swapxy_out_temp~q\ & (\i3|data_out[6]~6_combout\)) # (!\rd1|swapxy_out_temp~q\ & ((\rd1|negy_out_temp~q\ $ (\d1|y1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \i3|data_out[6]~6_combout\,
	datac => \rd1|negy_out_temp~q\,
	datad => \d1|y1\(6),
	combout => \s2|yout[6]~6_combout\);

-- Location: LCCOMB_X48_Y39_N12
\s2|yout[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[7]~7_combout\ = (\rd1|swapxy_out_temp~q\ & (((\i3|data_out[7]~7_combout\)))) # (!\rd1|swapxy_out_temp~q\ & (\rd1|negy_out_temp~q\ $ (((\d1|y1\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \rd1|negy_out_temp~q\,
	datac => \i3|data_out[7]~7_combout\,
	datad => \d1|y1\(7),
	combout => \s2|yout[7]~7_combout\);

-- Location: LCCOMB_X49_Y39_N10
\s2|yout[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[8]~8_combout\ = (\rd1|swapxy_out_temp~q\ & (((\i3|data_out[8]~8_combout\)))) # (!\rd1|swapxy_out_temp~q\ & (\d1|y1\(8) $ ((\rd1|negy_out_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|y1\(8),
	datab => \rd1|negy_out_temp~q\,
	datac => \i3|data_out[8]~8_combout\,
	datad => \rd1|swapxy_out_temp~q\,
	combout => \s2|yout[8]~8_combout\);

-- Location: LCCOMB_X42_Y39_N10
\s2|yout[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[9]~9_combout\ = (\rd1|swapxy_out_temp~q\ & (((\i3|data_out[9]~9_combout\)))) # (!\rd1|swapxy_out_temp~q\ & (\rd1|negy_out_temp~q\ $ ((\d1|y1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \rd1|negy_out_temp~q\,
	datac => \d1|y1\(9),
	datad => \i3|data_out[9]~9_combout\,
	combout => \s2|yout[9]~9_combout\);

-- Location: LCCOMB_X43_Y39_N4
\s2|yout[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[10]~10_combout\ = (\rd1|swapxy_out_temp~q\ & (((\i3|data_out[10]~10_combout\)))) # (!\rd1|swapxy_out_temp~q\ & (\rd1|negy_out_temp~q\ $ ((\d1|y1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \rd1|negy_out_temp~q\,
	datac => \d1|y1\(10),
	datad => \i3|data_out[10]~10_combout\,
	combout => \s2|yout[10]~10_combout\);

-- Location: LCCOMB_X43_Y39_N6
\s2|yout[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2|yout[11]~11_combout\ = (\rd1|swapxy_out_temp~q\ & (((\i3|data_out[11]~11_combout\)))) # (!\rd1|swapxy_out_temp~q\ & (\rd1|negy_out_temp~q\ $ (((\d1|y1\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd1|swapxy_out_temp~q\,
	datab => \rd1|negy_out_temp~q\,
	datac => \i3|data_out[11]~11_combout\,
	datad => \d1|y1\(11),
	combout => \s2|yout[11]~11_combout\);

ww_done <= \done~output_o\;

ww_x(0) <= \x[0]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(4) <= \x[4]~output_o\;

ww_x(5) <= \x[5]~output_o\;

ww_x(6) <= \x[6]~output_o\;

ww_x(7) <= \x[7]~output_o\;

ww_x(8) <= \x[8]~output_o\;

ww_x(9) <= \x[9]~output_o\;

ww_x(10) <= \x[10]~output_o\;

ww_x(11) <= \x[11]~output_o\;

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;

ww_y(8) <= \y[8]~output_o\;

ww_y(9) <= \y[9]~output_o\;

ww_y(10) <= \y[10]~output_o\;

ww_y(11) <= \y[11]~output_o\;
END structure;


