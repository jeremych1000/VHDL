--
-- Written by Synplicity
-- Product Version "I-2013.09-SP1 "
-- Program "work Premier", Mapper "maprc, Build 1911R"
-- Fri Mar 18 12:07:09 2016
--

--
-- Written by work Premier version Build 1911R
-- Fri Mar 18 12:07:09 2016
--

--
library ieee, work;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.components.all;
use work.cycloneii_components.all;

entity draw_octant is
port(
  y1_5 :  out std_logic;
  y1_4 :  out std_logic;
  y1_3 :  out std_logic;
  y1_2 :  out std_logic;
  y1_1 :  out std_logic;
  y1_0 :  out std_logic;
  x1_5 :  out std_logic;
  x1_4 :  out std_logic;
  x1_3 :  out std_logic;
  x1_2 :  out std_logic;
  x1_1 :  out std_logic;
  x1_0 :  out std_logic;
  un61_xyin_i_6 :  in std_logic;
  un61_xyin_i_8 :  in std_logic;
  un61_xyin_i_9 :  in std_logic;
  un61_xyin_i_10 :  in std_logic;
  un61_xyin_i_11 :  in std_logic;
  un61_xyin_i_0 :  in std_logic;
  un61_xyin_i_1 :  in std_logic;
  un61_xyin_i_2 :  in std_logic;
  un61_xyin_i_3 :  in std_logic;
  un61_xyin_i_4 :  in std_logic;
  un61_xyin_i_5 :  in std_logic;
  rcb_state_i_0 :  in std_logic;
  state_1 :  in std_logic;
  state_0 :  in std_logic;
  xyoldReg_5 :  in std_logic;
  xyoldReg_0 :  in std_logic;
  xyoldReg_1 :  in std_logic;
  xyoldReg_4 :  in std_logic;
  xyoldReg_2 :  in std_logic;
  xyoldReg_3 :  in std_logic;
  xynewReg_5 :  in std_logic;
  xynewReg_0 :  in std_logic;
  xynewReg_1 :  in std_logic;
  xynewReg_4 :  in std_logic;
  xynewReg_2 :  in std_logic;
  xynewReg_3 :  in std_logic;
  x_in_draw_0 :  in std_logic;
  clk_c :  in std_logic;
  x1_e0_0_N_8_i_0_x4_0 :  out std_logic;
  lt5 :  in std_logic;
  x1_n1_0_151_x4_0 :  out std_logic;
  lt5_0 :  in std_logic;
  x1_n2_0_193_x4 :  out std_logic;
  x1_n5_0_341_x4 :  out std_logic;
  x1_n3_0_241_x4 :  out std_logic;
  x1_n4_0_291_x4 :  out std_logic;
  lt6 :  in std_logic;
  un3_x1 :  out std_logic;
  xbias_i :  in std_logic);
end draw_octant;

architecture beh of draw_octant is
  signal devclrn : std_logic := '1';
  signal devpor : std_logic := '1';
  signal devoe : std_logic := '0';
  signal ERROR : std_logic_vector(5 downto 0);
  signal YINCR : std_logic_vector(5 downto 0);
  signal XINCR : std_logic_vector(5 downto 0);
  signal YNEW : std_logic_vector(5 downto 0);
  signal XNEW : std_logic_vector(5 downto 0);
  signal INF_ABS1 : std_logic_vector(6 downto 1);
  signal INF_ABS0 : std_logic_vector(6 downto 1);
  signal UN4_0_A2 : std_logic_vector(5 downto 0);
  signal UN1_ERROR_2_V : std_logic_vector(5 downto 0);
  signal UN1_ERROR_2_V_0 : std_logic_vector(5 downto 0);
  signal Y1_E5_0_M5 : std_logic ;
  signal Y1_E4_0_G2_0_424_I_M2 : std_logic ;
  signal Y1_E0_0_G0_I_O4 : std_logic ;
  signal Y1_E3_0_M5 : std_logic ;
  signal Y1_E2_0_M5 : std_logic ;
  signal Y1_E1_0_M5 : std_logic ;
  signal Y1_E0_0_N_4_I_0_390_M2 : std_logic ;
  signal X1_N5_0_341_M2 : std_logic ;
  signal UN1_DISABLE_1 : std_logic ;
  signal X1_N4_0_291_M2 : std_logic ;
  signal X1_N3_0_241_M2 : std_logic ;
  signal X1_N2_0_193_M2 : std_logic ;
  signal X1_N1_0_151_M2 : std_logic ;
  signal X1_E0_0_N_8_I_0_116_M2 : std_logic ;
  signal UN1_ERROR_2_ADD5 : std_logic ;
  signal UN1_ERROR_2_ADD4 : std_logic ;
  signal UN1_ERROR_2_ADD3 : std_logic ;
  signal UN1_ERROR_2_ADD2 : std_logic ;
  signal UN1_ERROR_2_ADD1 : std_logic ;
  signal UN1_ERROR_2_ADD0 : std_logic ;
  signal YINCR_2_ADD5 : std_logic ;
  signal \XINCR_2_0_0__G0_E\ : std_logic ;
  signal YINCR_2_ADD4 : std_logic ;
  signal YINCR_2_ADD3 : std_logic ;
  signal YINCR_2_ADD2 : std_logic ;
  signal YINCR_2_ADD1 : std_logic ;
  signal YINCR_2_ADD0 : std_logic ;
  signal XINCR_3_ADD5 : std_logic ;
  signal XINCR_3_ADD4 : std_logic ;
  signal XINCR_3_ADD3 : std_logic ;
  signal XINCR_3_ADD2 : std_logic ;
  signal XINCR_3_ADD1 : std_logic ;
  signal XINCR_3_ADD0 : std_logic ;
  signal Y1_E4_0_G2_0_424_I_M4 : std_logic ;
  signal UN15_DISABLE_1 : std_logic ;
  signal LT_0 : std_logic ;
  signal UN9_ERR1_ADD0 : std_logic ;
  signal RESULT_1_ADD0 : std_logic ;
  signal UN15_DISABLE_2 : std_logic ;
  signal LT_1 : std_logic ;
  signal UN15_DISABLE_3 : std_logic ;
  signal LT_2 : std_logic ;
  signal UN15_DISABLE_4 : std_logic ;
  signal LT_3 : std_logic ;
  signal UN15_DISABLE_5 : std_logic ;
  signal LT_4 : std_logic ;
  signal UN15_DISABLE_6 : std_logic ;
  signal LT_5 : std_logic ;
  signal UN15_DISABLE_7 : std_logic ;
  signal UN15_DISABLE_7_COUT : std_logic ;
  signal UN1_ERROR_2_0_ADD0 : std_logic ;
  signal UN1_ERROR_2_0_CARRY_0 : std_logic ;
  signal UN14_DISABLE_0 : std_logic ;
  signal UN1_ERROR_2_0_ADD0_START_COUT : std_logic ;
  signal UN1_ERROR_2_0_ADD1 : std_logic ;
  signal UN1_ERROR_2_0_CARRY_1 : std_logic ;
  signal UN1_ERROR_2_0_ADD2 : std_logic ;
  signal UN1_ERROR_2_0_CARRY_2 : std_logic ;
  signal UN1_ERROR_2_0_ADD3 : std_logic ;
  signal UN1_ERROR_2_0_CARRY_3 : std_logic ;
  signal UN1_ERROR_2_0_ADD4 : std_logic ;
  signal UN1_ERROR_2_0_CARRY_4 : std_logic ;
  signal UN1_ERROR_2_0_ADD5 : std_logic ;
  signal UN1_ERROR_2_CARRY_0 : std_logic ;
  signal UN1_ERROR_2_CARRY_1 : std_logic ;
  signal UN1_ERROR_2_CARRY_2 : std_logic ;
  signal UN1_ERROR_2_CARRY_3 : std_logic ;
  signal UN1_ERROR_2_CARRY_4 : std_logic ;
  signal RESULT_1_CARRY_0 : std_logic ;
  signal UN2_ERR2_ADD0 : std_logic ;
  signal RESULT_1_ADD1 : std_logic ;
  signal RESULT_1_CARRY_1 : std_logic ;
  signal UN2_ERR2_ADD1 : std_logic ;
  signal RESULT_1_ADD2 : std_logic ;
  signal RESULT_1_CARRY_2 : std_logic ;
  signal UN2_ERR2_ADD2 : std_logic ;
  signal RESULT_1_ADD3 : std_logic ;
  signal RESULT_1_CARRY_3 : std_logic ;
  signal UN2_ERR2_ADD3 : std_logic ;
  signal RESULT_1_ADD4 : std_logic ;
  signal RESULT_1_CARRY_4 : std_logic ;
  signal UN2_ERR2_ADD4 : std_logic ;
  signal RESULT_1_ADD5 : std_logic ;
  signal RESULT_1_CARRY_5 : std_logic ;
  signal UN2_ERR2_ADD5 : std_logic ;
  signal RESULT_1_ADD6 : std_logic ;
  signal GND : std_logic ;
  signal YINCR_2_CARRY_0 : std_logic ;
  signal YINCR_2_ADD0_START_COUT : std_logic ;
  signal YINCR_2_CARRY_1 : std_logic ;
  signal YINCR_2_CARRY_2 : std_logic ;
  signal YINCR_2_CARRY_3 : std_logic ;
  signal YINCR_2_CARRY_4 : std_logic ;
  signal UN9_ERR1_CARRY_0 : std_logic ;
  signal UN9_ERR1_ADD1 : std_logic ;
  signal UN9_ERR1_CARRY_1 : std_logic ;
  signal UN9_ERR1_ADD2 : std_logic ;
  signal UN9_ERR1_CARRY_2 : std_logic ;
  signal UN9_ERR1_ADD3 : std_logic ;
  signal UN9_ERR1_CARRY_3 : std_logic ;
  signal UN9_ERR1_ADD4 : std_logic ;
  signal UN9_ERR1_CARRY_4 : std_logic ;
  signal UN9_ERR1_ADD5 : std_logic ;
  signal UN9_ERR1_CARRY_5 : std_logic ;
  signal UN9_ERR1_ADD6 : std_logic ;
  signal UN2_ERR2_CARRY_0 : std_logic ;
  signal UN2_ERR2_ADD0_START_COUT : std_logic ;
  signal UN2_ERR2_CARRY_1 : std_logic ;
  signal UN2_ERR2_CARRY_2 : std_logic ;
  signal UN2_ERR2_CARRY_3 : std_logic ;
  signal UN2_ERR2_CARRY_4 : std_logic ;
  signal XINCR_3_CARRY_0 : std_logic ;
  signal XINCR_3_ADD0_START_COUT : std_logic ;
  signal XINCR_3_CARRY_1 : std_logic ;
  signal XINCR_3_CARRY_2 : std_logic ;
  signal XINCR_3_CARRY_3 : std_logic ;
  signal XINCR_3_CARRY_4 : std_logic ;
  signal X1_C1 : std_logic ;
  signal Y1_0_SQMUXA : std_logic ;
  signal INF_ABS0_A_0_ANC2 : std_logic ;
  signal INF_ABS1_A_1_ANC2 : std_logic ;
  signal X1_N3_0_241_O4 : std_logic ;
  signal X1_N4_0_291_X4_12 : std_logic ;
  signal UN3_X1_1 : std_logic ;
  signal UN3_X1_2 : std_logic ;
  signal UN3_X1_3 : std_logic ;
  signal UN3_X1_4 : std_logic ;
  signal UN3_X1_5 : std_logic ;
  signal X1_N4_0_291_X4_1 : std_logic ;
  signal Y1_21_1 : std_logic ;
  signal Y1_E3_0_G4 : std_logic ;
  signal UN3_X1_6 : std_logic ;
  signal INF_ABS0_A_0_ANC4 : std_logic ;
  signal INF_ABS1_A_1_ANC4 : std_logic ;
  signal Y1_E3_0_M2 : std_logic ;
  signal X1_N5_0_341_X4_1 : std_logic ;
  signal UN12_DISABLE_5_A : std_logic ;
  signal UN12_DISABLE_5 : std_logic ;
  signal UN3_X1_9 : std_logic ;
  signal Y1_E1_0_M3 : std_logic ;
  signal UN12_DISABLE : std_logic ;
  signal UN3_X1_13 : std_logic ;
  signal Y1_E5_0_M5_A : std_logic ;
  signal Y1_E2_0_M5_A : std_logic ;
  signal UN7_DISABLE : std_logic ;
  signal UN14_DISABLE_0_0 : std_logic ;
  signal UN15_DISABLE : std_logic ;
  signal VCC : std_logic ;
  signal Y1_0_0 : std_logic ;
  signal Y1_1_0 : std_logic ;
  signal Y1_2_0 : std_logic ;
  signal Y1_3_0 : std_logic ;
  signal Y1_4_0 : std_logic ;
  signal Y1_5_0 : std_logic ;
  signal X1_6 : std_logic ;
  signal X1_4Z : std_logic ;
  signal X1_7 : std_logic ;
  signal X1_8 : std_logic ;
  signal X1_9 : std_logic ;
  signal X1_10 : std_logic ;
  signal X1_11 : std_logic ;
begin
\R1_Y1_5_\: cycloneii_lcell_ff port map (
regout => Y1_0_0,
datain => Y1_E5_0_M5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_Y1_4_\: cycloneii_lcell_ff port map (
regout => Y1_1_0,
datain => Y1_E4_0_G2_0_424_I_M2,
clk => clk_c,
ena => Y1_E0_0_G0_I_O4,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_Y1_3_\: cycloneii_lcell_ff port map (
regout => Y1_2_0,
datain => Y1_E3_0_M5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_Y1_2_\: cycloneii_lcell_ff port map (
regout => Y1_3_0,
datain => Y1_E2_0_M5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_Y1_1_\: cycloneii_lcell_ff port map (
regout => Y1_4_0,
datain => Y1_E1_0_M5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_Y1_0_\: cycloneii_lcell_ff port map (
regout => Y1_5_0,
datain => Y1_E0_0_N_4_I_0_390_M2,
clk => clk_c,
ena => Y1_E0_0_G0_I_O4,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_5_\: cycloneii_lcell_ff port map (
regout => X1_6,
datain => X1_N5_0_341_M2,
clk => clk_c,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_4_\: cycloneii_lcell_ff port map (
regout => X1_7,
datain => X1_N4_0_291_M2,
clk => clk_c,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_3_\: cycloneii_lcell_ff port map (
regout => X1_8,
datain => X1_N3_0_241_M2,
clk => clk_c,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_2_\: cycloneii_lcell_ff port map (
regout => X1_9,
datain => X1_N2_0_193_M2,
clk => clk_c,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_1_\: cycloneii_lcell_ff port map (
regout => X1_10,
datain => X1_N1_0_151_M2,
clk => clk_c,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_0_\: cycloneii_lcell_ff port map (
regout => X1_11,
datain => X1_E0_0_N_8_I_0_116_M2,
clk => clk_c,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_ERROR_5_\: cycloneii_lcell_ff port map (
regout => ERROR(5),
datain => UN1_ERROR_2_ADD5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_4_\: cycloneii_lcell_ff port map (
regout => ERROR(4),
datain => UN1_ERROR_2_ADD4,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_3_\: cycloneii_lcell_ff port map (
regout => ERROR(3),
datain => UN1_ERROR_2_ADD3,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_2_\: cycloneii_lcell_ff port map (
regout => ERROR(2),
datain => UN1_ERROR_2_ADD2,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_1_\: cycloneii_lcell_ff port map (
regout => ERROR(1),
datain => UN1_ERROR_2_ADD1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_0_\: cycloneii_lcell_ff port map (
regout => ERROR(0),
datain => UN1_ERROR_2_ADD0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YINCR_5_\: cycloneii_lcell_ff port map (
regout => YINCR(5),
datain => YINCR_2_ADD5,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_4_\: cycloneii_lcell_ff port map (
regout => YINCR(4),
datain => YINCR_2_ADD4,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_3_\: cycloneii_lcell_ff port map (
regout => YINCR(3),
datain => YINCR_2_ADD3,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_2_\: cycloneii_lcell_ff port map (
regout => YINCR(2),
datain => YINCR_2_ADD2,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_1_\: cycloneii_lcell_ff port map (
regout => YINCR(1),
datain => YINCR_2_ADD1,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_0_\: cycloneii_lcell_ff port map (
regout => YINCR(0),
datain => YINCR_2_ADD0,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_5_\: cycloneii_lcell_ff port map (
regout => XINCR(5),
datain => XINCR_3_ADD5,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_4_\: cycloneii_lcell_ff port map (
regout => XINCR(4),
datain => XINCR_3_ADD4,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_3_\: cycloneii_lcell_ff port map (
regout => XINCR(3),
datain => XINCR_3_ADD3,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_2_\: cycloneii_lcell_ff port map (
regout => XINCR(2),
datain => XINCR_3_ADD2,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_1_\: cycloneii_lcell_ff port map (
regout => XINCR(1),
datain => XINCR_3_ADD1,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_0_\: cycloneii_lcell_ff port map (
regout => XINCR(0),
datain => XINCR_3_ADD0,
clk => clk_c,
sclr => state_1,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_5_\: cycloneii_lcell_ff port map (
regout => YNEW(5),
datain => un61_xyin_i_6,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_4_\: cycloneii_lcell_ff port map (
regout => YNEW(4),
datain => Y1_E4_0_G2_0_424_I_M4,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_3_\: cycloneii_lcell_ff port map (
regout => YNEW(3),
datain => un61_xyin_i_8,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_2_\: cycloneii_lcell_ff port map (
regout => YNEW(2),
datain => un61_xyin_i_9,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_1_\: cycloneii_lcell_ff port map (
regout => YNEW(1),
datain => un61_xyin_i_10,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_0_\: cycloneii_lcell_ff port map (
regout => YNEW(0),
datain => un61_xyin_i_11,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_5_\: cycloneii_lcell_ff port map (
regout => XNEW(5),
datain => un61_xyin_i_0,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_4_\: cycloneii_lcell_ff port map (
regout => XNEW(4),
datain => un61_xyin_i_1,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_3_\: cycloneii_lcell_ff port map (
regout => XNEW(3),
datain => un61_xyin_i_2,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_2_\: cycloneii_lcell_ff port map (
regout => XNEW(2),
datain => un61_xyin_i_3,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_1_\: cycloneii_lcell_ff port map (
regout => XNEW(1),
datain => un61_xyin_i_4,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_0_\: cycloneii_lcell_ff port map (
regout => XNEW(0),
datain => un61_xyin_i_5,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R1_UN15_DISABLE_R1_UN15_DISABLE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN15_DISABLE_1,
cout => LT_0,
dataa => UN9_ERR1_ADD0,
datab => RESULT_1_ADD0);
R1_UN15_DISABLE_R1_UN15_DISABLE_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_2,
cout => LT_1,
dataa => INF_ABS1(1),
datab => INF_ABS0(1),
cin => LT_0);
R1_UN15_DISABLE_R1_UN15_DISABLE_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_3,
cout => LT_2,
dataa => INF_ABS1(2),
datab => INF_ABS0(2),
cin => LT_1);
R1_UN15_DISABLE_R1_UN15_DISABLE_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_4,
cout => LT_3,
dataa => INF_ABS1(3),
datab => INF_ABS0(3),
cin => LT_2);
R1_UN15_DISABLE_R1_UN15_DISABLE_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_5,
cout => LT_4,
dataa => INF_ABS1(4),
datab => INF_ABS0(4),
cin => LT_3);
R1_UN15_DISABLE_R1_UN15_DISABLE_6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_6,
cout => LT_5,
dataa => INF_ABS1(5),
datab => INF_ABS0(5),
cin => LT_4);
R1_UN15_DISABLE_R1_UN15_DISABLE_7: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_7,
cout => UN15_DISABLE_7_COUT,
dataa => INF_ABS1(6),
datab => INF_ABS0(6),
cin => LT_5);
UN1_ERROR_2_0_ADD0_Z331: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD0,
cout => UN1_ERROR_2_0_CARRY_0,
dataa => UN14_DISABLE_0,
datab => UN4_0_A2(5),
cin => UN1_ERROR_2_0_ADD0_START_COUT);
UN1_ERROR_2_0_ADD1_Z332: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD1,
cout => UN1_ERROR_2_0_CARRY_1,
dataa => UN4_0_A2(4),
datab => UN1_ERROR_2_V(1),
cin => UN1_ERROR_2_0_CARRY_0);
UN1_ERROR_2_0_ADD2_Z333: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD2,
cout => UN1_ERROR_2_0_CARRY_2,
dataa => UN4_0_A2(3),
datab => UN1_ERROR_2_V(2),
cin => UN1_ERROR_2_0_CARRY_1);
UN1_ERROR_2_0_ADD3_Z334: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD3,
cout => UN1_ERROR_2_0_CARRY_3,
dataa => UN4_0_A2(2),
datab => UN1_ERROR_2_V(3),
cin => UN1_ERROR_2_0_CARRY_2);
UN1_ERROR_2_0_ADD4_Z335: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD4,
cout => UN1_ERROR_2_0_CARRY_4,
dataa => UN4_0_A2(1),
datab => UN1_ERROR_2_V(4),
cin => UN1_ERROR_2_0_CARRY_3);
UN1_ERROR_2_0_ADD5_Z336: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011010010110")
port map (
combout => UN1_ERROR_2_0_ADD5,
dataa => UN4_0_A2(0),
datab => UN1_ERROR_2_V(5),
cin => UN1_ERROR_2_0_CARRY_4);
UN1_ERROR_2_ADD0_Z337: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN1_ERROR_2_ADD0,
cout => UN1_ERROR_2_CARRY_0,
dataa => UN1_ERROR_2_0_ADD0,
datab => UN1_ERROR_2_V_0(0));
UN1_ERROR_2_ADD1_Z338: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD1,
cout => UN1_ERROR_2_CARRY_1,
dataa => UN1_ERROR_2_0_ADD1,
datab => UN1_ERROR_2_V_0(1),
cin => UN1_ERROR_2_CARRY_0);
UN1_ERROR_2_ADD2_Z339: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD2,
cout => UN1_ERROR_2_CARRY_2,
dataa => UN1_ERROR_2_0_ADD2,
datab => UN1_ERROR_2_V_0(2),
cin => UN1_ERROR_2_CARRY_1);
UN1_ERROR_2_ADD3_Z340: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD3,
cout => UN1_ERROR_2_CARRY_3,
dataa => UN1_ERROR_2_0_ADD3,
datab => UN1_ERROR_2_V_0(3),
cin => UN1_ERROR_2_CARRY_2);
UN1_ERROR_2_ADD4_Z341: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD4,
cout => UN1_ERROR_2_CARRY_4,
dataa => UN1_ERROR_2_0_ADD4,
datab => UN1_ERROR_2_V_0(4),
cin => UN1_ERROR_2_CARRY_3);
UN1_ERROR_2_ADD5_Z342: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011010010110")
port map (
combout => UN1_ERROR_2_ADD5,
dataa => UN1_ERROR_2_0_ADD5,
datab => UN1_ERROR_2_V_0(5),
cin => UN1_ERROR_2_CARRY_4);
RESULT_1_ADD0_Z343: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100100100010")
port map (
combout => RESULT_1_ADD0,
cout => RESULT_1_CARRY_0,
dataa => UN2_ERR2_ADD0,
datab => ERROR(0));
RESULT_1_ADD1_Z344: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD1,
cout => RESULT_1_CARRY_1,
dataa => UN2_ERR2_ADD1,
datab => ERROR(1),
cin => RESULT_1_CARRY_0);
RESULT_1_ADD2_Z345: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD2,
cout => RESULT_1_CARRY_2,
dataa => UN2_ERR2_ADD2,
datab => ERROR(2),
cin => RESULT_1_CARRY_1);
RESULT_1_ADD3_Z346: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD3,
cout => RESULT_1_CARRY_3,
dataa => UN2_ERR2_ADD3,
datab => ERROR(3),
cin => RESULT_1_CARRY_2);
RESULT_1_ADD4_Z347: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD4,
cout => RESULT_1_CARRY_4,
dataa => UN2_ERR2_ADD4,
datab => ERROR(4),
cin => RESULT_1_CARRY_3);
RESULT_1_ADD5_Z348: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD5,
cout => RESULT_1_CARRY_5,
dataa => UN2_ERR2_ADD5,
datab => ERROR(5),
cin => RESULT_1_CARRY_4);
RESULT_1_ADD6_Z349: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1010010110100101")
port map (
combout => RESULT_1_ADD6,
dataa => ERROR(5),
datab => GND,
cin => RESULT_1_CARRY_5);
R1_YINCR_2_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD0,
cout => YINCR_2_CARRY_0,
dataa => Y1_5_0,
datab => un61_xyin_i_11,
cin => YINCR_2_ADD0_START_COUT);
R1_YINCR_2_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD1,
cout => YINCR_2_CARRY_1,
dataa => Y1_4_0,
datab => un61_xyin_i_10,
cin => YINCR_2_CARRY_0);
R1_YINCR_2_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD2,
cout => YINCR_2_CARRY_2,
dataa => Y1_3_0,
datab => un61_xyin_i_9,
cin => YINCR_2_CARRY_1);
R1_YINCR_2_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD3,
cout => YINCR_2_CARRY_3,
dataa => Y1_2_0,
datab => un61_xyin_i_8,
cin => YINCR_2_CARRY_2);
R1_YINCR_2_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD4,
cout => YINCR_2_CARRY_4,
dataa => Y1_1_0,
datab => Y1_E4_0_G2_0_424_I_M4,
cin => YINCR_2_CARRY_3);
R1_YINCR_2_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => YINCR_2_ADD5,
dataa => Y1_0_0,
datab => un61_xyin_i_6,
cin => YINCR_2_CARRY_4);
UN9_ERR1_ADD0_Z356: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN9_ERR1_ADD0,
cout => UN9_ERR1_CARRY_0,
dataa => YINCR(0),
datab => ERROR(0));
UN9_ERR1_ADD1_Z357: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD1,
cout => UN9_ERR1_CARRY_1,
dataa => YINCR(1),
datab => ERROR(1),
cin => UN9_ERR1_CARRY_0);
UN9_ERR1_ADD2_Z358: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD2,
cout => UN9_ERR1_CARRY_2,
dataa => YINCR(2),
datab => ERROR(2),
cin => UN9_ERR1_CARRY_1);
UN9_ERR1_ADD3_Z359: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD3,
cout => UN9_ERR1_CARRY_3,
dataa => YINCR(3),
datab => ERROR(3),
cin => UN9_ERR1_CARRY_2);
UN9_ERR1_ADD4_Z360: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD4,
cout => UN9_ERR1_CARRY_4,
dataa => YINCR(4),
datab => ERROR(4),
cin => UN9_ERR1_CARRY_3);
UN9_ERR1_ADD5_Z361: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD5,
cout => UN9_ERR1_CARRY_5,
dataa => YINCR(5),
datab => ERROR(5),
cin => UN9_ERR1_CARRY_4);
UN9_ERR1_ADD6_Z362: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0011110000111100")
port map (
combout => UN9_ERR1_ADD6,
dataa => GND,
datab => ERROR(5),
cin => UN9_ERR1_CARRY_5);
C1_UN2_ERR2_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD0,
cout => UN2_ERR2_CARRY_0,
dataa => YINCR(0),
datab => XINCR(0),
cin => UN2_ERR2_ADD0_START_COUT);
C1_UN2_ERR2_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD1,
cout => UN2_ERR2_CARRY_1,
dataa => YINCR(1),
datab => XINCR(1),
cin => UN2_ERR2_CARRY_0);
C1_UN2_ERR2_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD2,
cout => UN2_ERR2_CARRY_2,
dataa => YINCR(2),
datab => XINCR(2),
cin => UN2_ERR2_CARRY_1);
C1_UN2_ERR2_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD3,
cout => UN2_ERR2_CARRY_3,
dataa => YINCR(3),
datab => XINCR(3),
cin => UN2_ERR2_CARRY_2);
C1_UN2_ERR2_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD4,
cout => UN2_ERR2_CARRY_4,
dataa => YINCR(4),
datab => XINCR(4),
cin => UN2_ERR2_CARRY_3);
C1_UN2_ERR2_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => UN2_ERR2_ADD5,
dataa => YINCR(5),
datab => XINCR(5),
cin => UN2_ERR2_CARRY_4);
R1_XINCR_3_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD0,
cout => XINCR_3_CARRY_0,
dataa => X1_11,
datab => un61_xyin_i_5,
cin => XINCR_3_ADD0_START_COUT);
R1_XINCR_3_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD1,
cout => XINCR_3_CARRY_1,
dataa => X1_10,
datab => un61_xyin_i_4,
cin => XINCR_3_CARRY_0);
R1_XINCR_3_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD2,
cout => XINCR_3_CARRY_2,
dataa => X1_9,
datab => un61_xyin_i_3,
cin => XINCR_3_CARRY_1);
R1_XINCR_3_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD3,
cout => XINCR_3_CARRY_3,
dataa => X1_8,
datab => un61_xyin_i_2,
cin => XINCR_3_CARRY_2);
R1_XINCR_3_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD4,
cout => XINCR_3_CARRY_4,
dataa => X1_7,
datab => un61_xyin_i_1,
cin => XINCR_3_CARRY_3);
R1_XINCR_3_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => XINCR_3_ADD5,
dataa => X1_6,
datab => un61_xyin_i_0,
cin => XINCR_3_CARRY_4);
R1_X1_C1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => X1_C1,
dataa => X1_10,
datab => X1_11);
Y1_0_SQMUXA_Z376: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => Y1_0_SQMUXA,
dataa => state_1,
datab => rcb_state_i_0);
C1_X1_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_4Z,
dataa => XNEW(4),
datab => X1_7);
\UN1_ERROR_2_V_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(5),
dataa => XINCR(5),
datab => UN14_DISABLE_0);
\UN1_ERROR_2_V_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(4),
dataa => XINCR(4),
datab => UN14_DISABLE_0);
\UN1_ERROR_2_V_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(3),
dataa => XINCR(3),
datab => UN14_DISABLE_0);
\UN1_ERROR_2_V_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(2),
dataa => XINCR(2),
datab => UN14_DISABLE_0);
\UN1_ERROR_2_V_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(1),
dataa => XINCR(1),
datab => UN14_DISABLE_0);
\UN1_ERROR_2_V_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(0),
dataa => XINCR(0),
datab => UN14_DISABLE_0);
\C1_OP_ABS_INF_ABS0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110110001101100")
port map (
combout => INF_ABS0(1),
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD6);
INF_ABS0_A_0_ANC2_Z385: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => INF_ABS0_A_0_ANC2,
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD2);
\C1_OP_ABS_INF_ABS1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011000110110")
port map (
combout => INF_ABS1(1),
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD6);
INF_ABS1_A_1_ANC2_Z387: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => INF_ABS1_A_1_ANC2,
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2);
\UN1_ERROR_2_V_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000011010000")
port map (
combout => UN1_ERROR_2_V(5),
dataa => state_1,
datab => rcb_state_i_0,
datac => ERROR(5));
\UN1_ERROR_2_V_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000011010000")
port map (
combout => UN1_ERROR_2_V(4),
dataa => state_1,
datab => rcb_state_i_0,
datac => ERROR(4));
\UN1_ERROR_2_V_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000011010000")
port map (
combout => UN1_ERROR_2_V(3),
dataa => state_1,
datab => rcb_state_i_0,
datac => ERROR(3));
\UN1_ERROR_2_V_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000011010000")
port map (
combout => UN1_ERROR_2_V(2),
dataa => state_1,
datab => rcb_state_i_0,
datac => ERROR(2));
\UN1_ERROR_2_V_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000011010000")
port map (
combout => UN1_ERROR_2_V(1),
dataa => state_1,
datab => rcb_state_i_0,
datac => ERROR(1));
\UN1_ERROR_2_V_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000011010000")
port map (
combout => UN1_ERROR_2_V(0),
dataa => state_1,
datab => rcb_state_i_0,
datac => ERROR(0));
\R1_X1_RNIVRQ3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111101111111")
port map (
combout => X1_N3_0_241_O4,
dataa => X1_11,
datab => X1_10,
datac => X1_9);
R1_X1_E0_0_N_8_I_0_X4_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => x1_e0_0_N_8_i_0_x4_0,
dataa => xyoldReg_5,
datab => xynewReg_5,
datac => state_0,
datad => lt5);
R1_X1_N1_0_151_X4_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => x1_n1_0_151_x4_0,
dataa => xyoldReg_0,
datab => xynewReg_0,
datac => state_0,
datad => lt5_0);
R1_X1_N2_0_193_X4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => x1_n2_0_193_x4,
dataa => xyoldReg_1,
datab => xynewReg_1,
datac => state_0,
datad => lt5_0);
R1_X1_N5_0_341_X4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => x1_n5_0_341_x4,
dataa => xyoldReg_4,
datab => xynewReg_4,
datac => state_0,
datad => lt5_0);
R1_X1_N3_0_241_X4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => x1_n3_0_241_x4,
dataa => xyoldReg_2,
datab => xynewReg_2,
datac => state_0,
datad => lt5_0);
R1_X1_N4_0_291_X4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => X1_N4_0_291_X4_12,
dataa => xyoldReg_3,
datab => xynewReg_3,
datac => state_0,
datad => lt5_0);
\R1_XINCR_2_0_0__G0_E\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111000001110")
port map (
combout => \XINCR_2_0_0__G0_E\,
dataa => state_1,
datab => state_0,
datac => rcb_state_i_0);
C1_UN3_X1_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_1,
dataa => YNEW(1),
datab => YNEW(0),
datac => Y1_4_0,
datad => Y1_5_0);
C1_UN3_X1_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_2,
dataa => YNEW(3),
datab => YNEW(2),
datac => Y1_2_0,
datad => Y1_3_0);
C1_UN3_X1_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_3,
dataa => XNEW(0),
datab => YNEW(5),
datac => X1_11,
datad => Y1_0_0);
C1_UN3_X1_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_4,
dataa => XNEW(1),
datab => YNEW(4),
datac => X1_10,
datad => Y1_1_0);
C1_UN3_X1_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_5,
dataa => XNEW(5),
datab => XNEW(2),
datac => X1_6,
datad => X1_9);
\C1_OP_ABS_INF_ABS0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111011110000")
port map (
combout => INF_ABS0(2),
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD2,
datad => UN9_ERR1_ADD6);
\C1_OP_ABS_INF_ABS1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111101111000")
port map (
combout => INF_ABS1(2),
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2,
datad => RESULT_1_ADD6);
\R1_X1_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000011100001111")
port map (
combout => X1_N4_0_291_X4_1,
dataa => X1_9,
datab => X1_8,
datac => X1_7,
datad => X1_C1);
R1_Y1_21_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => Y1_21_1,
dataa => Y1_5_0,
datab => Y1_4_0,
datac => Y1_3_0,
datad => Y1_2_0);
\R1_Y1_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010000000")
port map (
combout => Y1_E3_0_G4,
dataa => Y1_5_0,
datab => Y1_4_0,
datac => Y1_3_0,
datad => Y1_0_SQMUXA);
\UN4_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000000000000")
port map (
combout => UN4_0_A2(0),
dataa => state_1,
datab => rcb_state_i_0,
datac => YINCR(5),
datad => UN1_DISABLE_1);
\UN4_0_A2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000000000000")
port map (
combout => UN4_0_A2(1),
dataa => state_1,
datab => rcb_state_i_0,
datac => YINCR(4),
datad => UN1_DISABLE_1);
\UN4_0_A2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000000000000")
port map (
combout => UN4_0_A2(2),
dataa => state_1,
datab => rcb_state_i_0,
datac => YINCR(3),
datad => UN1_DISABLE_1);
\UN4_0_A2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000000000000")
port map (
combout => UN4_0_A2(3),
dataa => state_1,
datab => rcb_state_i_0,
datac => YINCR(2),
datad => UN1_DISABLE_1);
\UN4_0_A2_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000000000000")
port map (
combout => UN4_0_A2(4),
dataa => state_1,
datab => rcb_state_i_0,
datac => YINCR(1),
datad => UN1_DISABLE_1);
\UN4_0_A2_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000000000000")
port map (
combout => UN4_0_A2(5),
dataa => state_1,
datab => rcb_state_i_0,
datac => YINCR(0),
datad => UN1_DISABLE_1);
R1_Y1_E4_0_G2_0_424_I_M4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => Y1_E4_0_G2_0_424_I_M4,
dataa => x_in_draw_0,
datab => lt5,
datac => X1_N4_0_291_X4_12,
datad => lt6);
C1_UN3_X1_6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010010000")
port map (
combout => UN3_X1_6,
dataa => XNEW(3),
datab => X1_8,
datac => UN3_X1_1);
\C1_OP_ABS_INF_ABS0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => INF_ABS0(3),
dataa => UN9_ERR1_ADD3,
datab => UN9_ERR1_ADD6,
datac => INF_ABS0_A_0_ANC2);
INF_ABS0_A_0_ANC4_Z421: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000010000")
port map (
combout => INF_ABS0_A_0_ANC4,
dataa => UN9_ERR1_ADD3,
datab => UN9_ERR1_ADD4,
datac => INF_ABS0_A_0_ANC2);
\C1_OP_ABS_INF_ABS1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011001010110")
port map (
combout => INF_ABS1(3),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC2);
INF_ABS1_A_1_ANC4_Z423: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => INF_ABS1_A_1_ANC4,
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD4,
datac => INF_ABS1_A_1_ANC2);
\R1_Y1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011000110110001")
port map (
combout => Y1_E0_0_N_4_I_0_390_M2,
dataa => state_1,
datab => Y1_5_0,
datac => un61_xyin_i_11);
\R1_X1_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011000110110001")
port map (
combout => X1_N4_0_291_M2,
dataa => state_1,
datab => X1_N4_0_291_X4_1,
datac => un61_xyin_i_1);
\R1_X1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011000110110001")
port map (
combout => X1_E0_0_N_8_I_0_116_M2,
dataa => state_1,
datab => X1_11,
datac => un61_xyin_i_5);
\R1_X1_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101101000001")
port map (
combout => X1_N3_0_241_M2,
dataa => state_1,
datab => X1_8,
datac => X1_N3_0_241_O4,
datad => un61_xyin_i_2);
\R1_Y1_RNO_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110100101111")
port map (
combout => Y1_E3_0_M2,
dataa => state_1,
datab => rcb_state_i_0,
datac => Y1_2_0,
datad => un61_xyin_i_8);
\R1_X1_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110000111")
port map (
combout => X1_N5_0_341_X4_1,
dataa => X1_8,
datab => X1_7,
datac => X1_6,
datad => X1_N3_0_241_O4);
\R1_X1_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111000010100")
port map (
combout => X1_N2_0_193_M2,
dataa => state_1,
datab => X1_9,
datac => X1_C1,
datad => un61_xyin_i_3);
\R1_X1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111000010100")
port map (
combout => X1_N1_0_151_M2,
dataa => state_1,
datab => X1_11,
datac => X1_10,
datad => un61_xyin_i_4);
R1_UN12_DISABLE_5_A: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111111111111")
port map (
combout => UN12_DISABLE_5_A,
dataa => UN15_DISABLE_1,
datab => UN15_DISABLE_2,
datac => UN15_DISABLE_3,
datad => UN15_DISABLE_4);
R1_UN12_DISABLE_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010000000")
port map (
combout => UN12_DISABLE_5,
dataa => UN15_DISABLE_5,
datab => UN15_DISABLE_7,
datac => UN15_DISABLE_6,
datad => UN12_DISABLE_5_A);
C1_UN3_X1_9: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => UN3_X1_9,
dataa => state_1,
datab => X1_4Z,
datac => UN3_X1_2,
datad => UN3_X1_3);
\C1_OP_ABS_INF_ABS0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110110000111100")
port map (
combout => INF_ABS0(4),
dataa => UN9_ERR1_ADD3,
datab => UN9_ERR1_ADD4,
datac => UN9_ERR1_ADD6,
datad => INF_ABS0_A_0_ANC2);
\C1_OP_ABS_INF_ABS1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011000111100")
port map (
combout => INF_ABS1(4),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD4,
datac => RESULT_1_ADD6,
datad => INF_ABS1_A_1_ANC2);
\R1_Y1_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111000010100")
port map (
combout => Y1_E4_0_G2_0_424_I_M2,
dataa => state_1,
datab => Y1_1_0,
datac => Y1_21_1,
datad => Y1_E4_0_G2_0_424_I_M4);
\R1_X1_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011000110110001")
port map (
combout => X1_N5_0_341_M2,
dataa => state_1,
datab => X1_N5_0_341_X4_1,
datac => un61_xyin_i_0);
\R1_Y1_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => Y1_E1_0_M3,
dataa => Y1_5_0,
datab => Y1_4_0,
datac => Y1_0_SQMUXA,
datad => un61_xyin_i_10);
R1_UN12_DISABLE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001011000000000")
port map (
combout => UN12_DISABLE,
dataa => lt5_0,
datab => lt5,
datac => lt6,
datad => UN12_DISABLE_5);
\C1_OP_ABS_INF_ABS0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000001000000")
port map (
combout => INF_ABS0(6),
dataa => UN9_ERR1_ADD5,
datab => UN9_ERR1_ADD6,
datac => INF_ABS0_A_0_ANC4);
\C1_OP_ABS_INF_ABS1_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => INF_ABS1(6),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC4);
C1_UN3_X1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => UN3_X1_13,
dataa => UN3_X1_4,
datab => UN3_X1_5,
datac => UN3_X1_6,
datad => UN3_X1_9);
\C1_OP_ABS_INF_ABS0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => INF_ABS0(5),
dataa => UN9_ERR1_ADD5,
datab => UN9_ERR1_ADD6,
datac => INF_ABS0_A_0_ANC4);
\C1_OP_ABS_INF_ABS1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011001010110")
port map (
combout => INF_ABS1(5),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC4);
\R1_Y1_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000011111110111")
port map (
combout => Y1_E5_0_M5_A,
dataa => Y1_1_0,
datab => Y1_21_1,
datac => Y1_0_SQMUXA,
datad => un61_xyin_i_6);
\R1_Y1_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010110110101010")
port map (
combout => Y1_E5_0_M5,
dataa => Y1_0_0,
datab => Y1_0_SQMUXA,
datac => Y1_E5_0_M5_A,
datad => Y1_E0_0_G0_I_O4);
\R1_Y1_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000011111110111")
port map (
combout => Y1_E2_0_M5_A,
dataa => Y1_5_0,
datab => Y1_4_0,
datac => Y1_0_SQMUXA,
datad => un61_xyin_i_9);
\R1_Y1_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010110110101010")
port map (
combout => Y1_E2_0_M5,
dataa => Y1_3_0,
datab => Y1_0_SQMUXA,
datac => Y1_E2_0_M5_A,
datad => Y1_E0_0_G0_I_O4);
\R1_Y1_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100001110101010")
port map (
combout => Y1_E3_0_M5,
dataa => Y1_2_0,
datab => Y1_E3_0_G4,
datac => Y1_E3_0_M2,
datad => Y1_E0_0_G0_I_O4);
\R1_Y1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => Y1_E1_0_M5,
dataa => Y1_4_0,
datab => Y1_E1_0_M3,
datac => Y1_E0_0_G0_I_O4);
R1_UN7_DISABLE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => UN7_DISABLE,
dataa => state_1,
datab => state_0,
datac => UN3_X1_13);
UN1_DISABLE_1_Z453: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000001011")
port map (
combout => UN1_DISABLE_1,
dataa => state_1,
datab => state_0,
datac => rcb_state_i_0,
datad => UN3_X1_13);
C1_UN3_X1_RNIS1UD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => UN14_DISABLE_0_0,
dataa => state_1,
datab => state_0,
datac => rcb_state_i_0,
datad => UN3_X1_13);
R1_UN12_DISABLE_RNISJ5M: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110011001000")
port map (
combout => Y1_E0_0_G0_I_O4,
dataa => UN7_DISABLE,
datab => UN1_DISABLE_1,
datac => UN15_DISABLE,
datad => UN12_DISABLE);
R1_UN12_DISABLE_5_RNI4U4M1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010100000")
port map (
combout => UN14_DISABLE_0,
dataa => UN14_DISABLE_0_0,
datab => xbias_i,
datac => UN15_DISABLE,
datad => UN12_DISABLE_5);
R1_XINCR_3_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => XINCR_3_ADD0_START_COUT,
dataa => VCC);
C1_UN2_ERR2_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => UN2_ERR2_ADD0_START_COUT,
dataa => VCC);
R1_YINCR_2_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => YINCR_2_ADD0_START_COUT,
dataa => VCC);
UN1_ERROR_2_0_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => UN1_ERROR_2_0_ADD0_START_COUT,
dataa => UN1_ERROR_2_V(0));
R1_UN15_DISABLE_R1_UN15_DISABLE_7_TERM: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1111000011110000")
port map (
combout => UN15_DISABLE,
cin => UN15_DISABLE_7_COUT);
GND <= '0';
VCC <= '1';
y1_5 <= Y1_0_0;
y1_4 <= Y1_1_0;
y1_3 <= Y1_2_0;
y1_2 <= Y1_3_0;
y1_1 <= Y1_4_0;
y1_0 <= Y1_5_0;
x1_5 <= X1_6;
x1_4 <= X1_7;
x1_3 <= X1_8;
x1_2 <= X1_9;
x1_1 <= X1_10;
x1_0 <= X1_11;
x1_n4_0_291_x4 <= X1_N4_0_291_X4_12;
un3_x1 <= UN3_X1_13;
end beh;

--
library ieee, work;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.components.all;
use work.cycloneii_components.all;

entity pix_write_cache is
port(
vdout_c_15 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_13 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_0 :  in std_logic;
reg_addr_7 :  out std_logic;
reg_addr_6 :  out std_logic;
reg_addr_5 :  out std_logic;
reg_addr_4 :  out std_logic;
reg_addr_3 :  out std_logic;
reg_addr_2 :  out std_logic;
reg_addr_1 :  out std_logic;
reg_addr_0 :  out std_logic;
word_reg_out_7 :  in std_logic;
word_reg_out_6 :  in std_logic;
word_reg_out_5 :  in std_logic;
word_reg_out_4 :  in std_logic;
word_reg_out_3 :  in std_logic;
word_reg_out_2 :  in std_logic;
word_reg_out_1 :  in std_logic;
word_reg_out_0 :  in std_logic;
rcb_state_i_0 :  in std_logic;
rcb_state_3 :  in std_logic;
rcb_state_2 :  in std_logic;
rcb_state_0 :  in std_logic;
rcb_state_4 :  in std_logic;
rcb_state_1 :  in std_logic;
rcbcmd_0_0 :  in std_logic;
y_in_i_m2_0 :  out std_logic;
y_in_i_m2_4 :  out std_logic;
y_out_0 :  in std_logic;
y_out_4 :  in std_logic;
penReg_1 :  in std_logic;
penReg_0 :  in std_logic;
rcbcmd_i_o4_0 :  in std_logic;
rcb_state_nss_i_0_0_a2_5_0 :  out std_logic;
rcb_flush_downcount_4 :  in std_logic;
rcb_flush_downcount_0 :  in std_logic;
rcb_flush_downcount_1 :  in std_logic;
rcb_flush_downcount_2 :  in std_logic;
rcb_flush_downcount_3 :  in std_logic;
pixop_reg_14_0 :  in std_logic;
pixop_reg_14_1 :  in std_logic;
pixop_reg_15_0 :  in std_logic;
pixop_reg_15_1 :  in std_logic;
pixop_reg_6_0 :  in std_logic;
pixop_reg_6_1 :  in std_logic;
pixop_reg_7_0 :  in std_logic;
pixop_reg_7_1 :  in std_logic;
pixop_reg_8_0 :  in std_logic;
pixop_reg_8_1 :  in std_logic;
pixop_reg_9_0 :  in std_logic;
pixop_reg_9_1 :  in std_logic;
pixop_reg_10_0 :  in std_logic;
pixop_reg_10_1 :  in std_logic;
pixop_reg_11_0 :  in std_logic;
pixop_reg_11_1 :  in std_logic;
pixop_reg_12_0 :  in std_logic;
pixop_reg_12_1 :  in std_logic;
pixop_reg_13_0 :  in std_logic;
pixop_reg_13_1 :  in std_logic;
pixop_reg_0_0 :  in std_logic;
pixop_reg_0_1 :  in std_logic;
pixop_reg_1_0 :  in std_logic;
pixop_reg_1_1 :  in std_logic;
pixop_reg_2_0 :  in std_logic;
pixop_reg_2_1 :  in std_logic;
pixop_reg_3_0 :  in std_logic;
pixop_reg_3_1 :  in std_logic;
pixop_reg_4_0 :  in std_logic;
pixop_reg_4_1 :  in std_logic;
vdin_1_iv_0_m2_x_14 :  out std_logic;
vdin_1_iv_0_m2_x_15 :  out std_logic;
vdin_1_iv_0_m2_x_6 :  out std_logic;
vdin_1_iv_0_m2_x_7 :  out std_logic;
vdin_1_iv_0_m2_x_8 :  out std_logic;
vdin_1_iv_0_m2_x_9 :  out std_logic;
vdin_1_iv_0_m2_x_10 :  out std_logic;
vdin_1_iv_0_m2_x_11 :  out std_logic;
vdin_1_iv_0_m2_x_12 :  out std_logic;
vdin_1_iv_0_m2_x_13 :  out std_logic;
vdin_1_iv_0_m2_x_0 :  out std_logic;
vdin_1_iv_0_m2_x_1 :  out std_logic;
vdin_1_iv_0_m2_x_2 :  out std_logic;
vdin_1_iv_0_m2_x_3 :  out std_logic;
vdin_1_iv_0_m2_x_4 :  out std_logic;
vdin_1_iv_0_m2_x_5 :  out std_logic;
pixop_reg_5_0 :  in std_logic;
pixop_reg_5_1 :  in std_logic;
y_clear_reg_1 :  in std_logic;
y_clear_reg_5 :  in std_logic;
y_clear_reg_0 :  in std_logic;
delay_i_0_RNIHDMC :  out std_logic;
clk_c :  in std_logic;
delay_i_0_o2 :  out std_logic;
N_180_i_0_a2 :  out std_logic;
\rcb_state_srsts_0_0_0_2__g2\ :  out std_logic;
reset_c :  in std_logic;
equal_block_out4_NE :  in std_logic;
x_clear_reg_0_sqmuxa_4 :  in std_logic;
un19_equal_block_out :  in std_logic;
nstate3_0_a2_3 :  in std_logic;
startcmd_i :  in std_logic;
\rcb_state_srsts_i_i_a2_0_1__g0_0_a2\ :  out std_logic;
\rcb_flush_downcount_7_0_a2_1_0__g0\ :  out std_logic;
nstate3_0_a2 :  in std_logic;
N_425_i_0_g0 :  out std_logic;
N_427_i_0_g0 :  out std_logic;
rcb_flush_downcount_2_c1 :  in std_logic;
N_428_i_0_g0 :  out std_logic;
N_426_i_0_g0 :  out std_logic;
\rcb_state_srsts_i_i_0_4__g0_0\ :  out std_logic;
\rcb_state_srsts_0_0_0_0__g0_0\ :  out std_logic;
\rcb_state_srsts_0_0_0_3__g0_0\ :  out std_logic;
\rcb_state_nss_i_0_0_0_0__g0\ :  out std_logic;
\word_reg_out_2_0_0__g0_i_0_x\ :  out std_logic;
y_clear_reg_n1_i_m2 :  out std_logic);
end pix_write_cache;

architecture beh of pix_write_cache is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal STATE : std_logic_vector(1 downto 0);
signal REG_DATA : std_logic_vector(15 downto 0);
signal RCB_STATE_NSS_I_0_0_A2_0_0 : std_logic_vector(0 to 0);
signal RCB_STATE_NSS_I_0_0_A2_2_0 : std_logic_vector(0 to 0);
signal RCB_STATE_NSS_I_0_0_A2 : std_logic_vector(0 to 0);
signal RCB_STATE_NSS_I_0_0_A2_4 : std_logic_vector(0 to 0);
signal RCB_STATE_NSS_I_0_0_O2 : std_logic_vector(0 to 0);
signal RCB_STATE_SRSTS_0_0_A2_2_X : std_logic_vector(0 to 0);
signal RCB_STATE_NSS_I_0_0_A2_1_1_X : std_logic_vector(0 to 0);
signal DELAY_I_51 : std_logic ;
signal \STATE_SRSTS_0_1__G0_X\ : std_logic ;
signal \STATE_SRSTS_0_0__G0\ : std_logic ;
signal CLK_C_I : std_logic ;
signal DELAY_I_0_O2_52 : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0__G0_0_A5_0_0\ : std_logic ;
signal N_180_I_0_A2_53 : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_2__G4\ : std_logic ;
signal \RCB_STATE_SRSTS_I_I_A2_0_1__G6\ : std_logic ;
signal G_558 : std_logic ;
signal \RCB_STATE_SRSTS_I_I_A2_0_1__G0_0_A2_0_X\ : std_logic ;
signal \RCB_STATE_SRSTS_I_I_0_4__G1_1\ : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_0__G0_0_0_A\ : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_0__G0_0_0\ : std_logic ;
signal \RCB_STATE_NSS_I_0_0_0_0__G0_2_A\ : std_logic ;
signal \RCB_STATE_NSS_I_0_0_0_0__G0_2\ : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_0__G2_0_X\ : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_3__G0_0_1_A\ : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_3__G0_0_1\ : std_logic ;
signal \RCB_STATE_NSS_I_0_0_0_0__G0_4\ : std_logic ;
signal N_137 : std_logic ;
signal N_136 : std_logic ;
signal N_135 : std_logic ;
signal N_134 : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
signal Y_IN_I_M2_49 : std_logic ;
signal RCB_STATE_NSS_I_0_0_A2_5_50 : std_logic ;
begin
\STATE_1_\: cycloneii_lcell_ff port map (
regout => STATE(1),
datain => \STATE_SRSTS_0_1__G0_X\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_0_\: cycloneii_lcell_ff port map (
regout => STATE(0),
datain => \STATE_SRSTS_0_0__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_15_\: cycloneii_lcell_ff port map (
regout => REG_DATA(15),
datain => vdout_c_15,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_14_\: cycloneii_lcell_ff port map (
regout => REG_DATA(14),
datain => vdout_c_14,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_13_\: cycloneii_lcell_ff port map (
regout => REG_DATA(13),
datain => vdout_c_13,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_12_\: cycloneii_lcell_ff port map (
regout => REG_DATA(12),
datain => vdout_c_12,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_11_\: cycloneii_lcell_ff port map (
regout => REG_DATA(11),
datain => vdout_c_11,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_10_\: cycloneii_lcell_ff port map (
regout => REG_DATA(10),
datain => vdout_c_10,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_9_\: cycloneii_lcell_ff port map (
regout => REG_DATA(9),
datain => vdout_c_9,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_8_\: cycloneii_lcell_ff port map (
regout => REG_DATA(8),
datain => vdout_c_8,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_7_\: cycloneii_lcell_ff port map (
regout => REG_DATA(7),
datain => vdout_c_7,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_6_\: cycloneii_lcell_ff port map (
regout => REG_DATA(6),
datain => vdout_c_6,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_5_\: cycloneii_lcell_ff port map (
regout => REG_DATA(5),
datain => vdout_c_5,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_4_\: cycloneii_lcell_ff port map (
regout => REG_DATA(4),
datain => vdout_c_4,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_3_\: cycloneii_lcell_ff port map (
regout => REG_DATA(3),
datain => vdout_c_3,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_2_\: cycloneii_lcell_ff port map (
regout => REG_DATA(2),
datain => vdout_c_2,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_1_\: cycloneii_lcell_ff port map (
regout => REG_DATA(1),
datain => vdout_c_1,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_DATA_0_\: cycloneii_lcell_ff port map (
regout => REG_DATA(0),
datain => vdout_c_0,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_ADDR_7_\: cycloneii_lcell_ff port map (
regout => reg_addr_7,
datain => word_reg_out_7,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_ADDR_6_\: cycloneii_lcell_ff port map (
regout => reg_addr_6,
datain => word_reg_out_6,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_ADDR_5_\: cycloneii_lcell_ff port map (
regout => reg_addr_5,
datain => word_reg_out_5,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_ADDR_4_\: cycloneii_lcell_ff port map (
regout => reg_addr_4,
datain => word_reg_out_4,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_ADDR_3_\: cycloneii_lcell_ff port map (
regout => reg_addr_3,
datain => word_reg_out_3,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_ADDR_2_\: cycloneii_lcell_ff port map (
regout => reg_addr_2,
datain => word_reg_out_2,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_ADDR_1_\: cycloneii_lcell_ff port map (
regout => reg_addr_1,
datain => word_reg_out_1,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_REG_ADDR_0_\: cycloneii_lcell_ff port map (
regout => reg_addr_0,
datain => word_reg_out_0,
clk => CLK_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
DELAY_I_0_O2_Z216: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110111011101")
port map (
combout => DELAY_I_0_O2_52,
dataa => rcb_state_3,
datab => DELAY_I_51);
\RCB_STATE_SRSTS_0_0_0__G0_0_A5_0_0_Z217\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => \RCB_STATE_SRSTS_0_0_0__G0_0_A5_0_0\,
dataa => rcb_state_3,
datab => rcb_state_i_0);
\STATE_RNIBJL7_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000010000")
port map (
combout => N_180_I_0_A2_53,
dataa => STATE(0),
datab => STATE(1),
datac => rcb_state_2);
\STATE_RNIBJL7_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000011100000")
port map (
combout => \RCB_STATE_SRSTS_0_0_0_2__G4\,
dataa => STATE(0),
datab => STATE(1),
datac => rcb_state_2);
DELAY_I_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001010000000000")
port map (
combout => DELAY_I_51,
dataa => DELAY_I_51,
datab => STATE(0),
datac => STATE(1),
datad => rcb_state_3);
\RCB_STATE_NSS_I_0_0_A2_0_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => RCB_STATE_NSS_I_0_0_A2_0_0(0),
dataa => rcb_state_0,
datab => rcb_state_4,
datac => rcb_state_1);
\RCB_STATE_NSS_I_0_0_A2_2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => RCB_STATE_NSS_I_0_0_A2_2_0(0),
dataa => rcb_state_0,
datab => rcb_state_1,
datac => rcb_state_2);
\STATE_RNIETE8_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100111011001110")
port map (
combout => \rcb_state_srsts_0_0_0_2__g2\,
dataa => rcb_state_3,
datab => \RCB_STATE_SRSTS_0_0_0_2__G4\,
datac => DELAY_I_51);
\RCB_STATE_NSS_I_0_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010000000000")
port map (
combout => RCB_STATE_NSS_I_0_0_A2(0),
dataa => reset_c,
datab => rcb_state_0,
datac => rcb_state_4,
datad => equal_block_out4_NE);
\Y_IN_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => Y_IN_I_M2_49,
dataa => y_clear_reg_1,
datab => rcbcmd_0_0,
datac => y_out_0);
\Y_IN_I_M2_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => y_in_i_m2_4,
dataa => y_clear_reg_5,
datab => rcbcmd_0_0,
datac => y_out_4);
\STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101110111010")
port map (
combout => \STATE_SRSTS_0_0__G0\,
dataa => reset_c,
datab => STATE(0),
datac => STATE(1),
datad => DELAY_I_0_O2_52);
\RCB_STATE_NSS_I_0_0_A2_4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010001000100")
port map (
combout => RCB_STATE_NSS_I_0_0_A2_4(0),
dataa => reset_c,
datab => rcb_state_0,
datac => x_clear_reg_0_sqmuxa_4,
datad => un19_equal_block_out);
\RCB_STATE_SRSTS_I_I_A2_0_1__G6_Z229\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111000001110")
port map (
combout => \RCB_STATE_SRSTS_I_I_A2_0_1__G6\,
dataa => penReg_1,
datab => penReg_0,
datac => rcbcmd_i_o4_0);
\RCB_STATE_NSS_I_0_0_O2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011111110111")
port map (
combout => RCB_STATE_NSS_I_0_0_O2(0),
dataa => rcb_state_2,
datab => rcbcmd_0_0,
datac => \RCB_STATE_SRSTS_I_I_A2_0_1__G6\);
G_558_Z231: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101011111111")
port map (
combout => G_558,
dataa => reset_c,
datab => rcb_flush_downcount_4,
datac => nstate3_0_a2_3,
datad => startcmd_i);
\RCB_STATE_NSS_I_0_0_A2_5_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => RCB_STATE_NSS_I_0_0_A2_5_50,
dataa => reset_c,
datab => rcb_flush_downcount_4,
datac => nstate3_0_a2_3,
datad => startcmd_i);
\STATE_RNIN35P1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000100000")
port map (
combout => \rcb_state_srsts_i_i_a2_0_1__g0_0_a2\,
dataa => \RCB_STATE_SRSTS_I_I_A2_0_1__G0_0_A2_0_X\,
datab => rcbcmd_0_0,
datac => \RCB_STATE_SRSTS_I_I_A2_0_1__G6\,
datad => startcmd_i);
\RCB_FLUSH_DOWNCOUNT_7_0_A2_1_0__G0_Z234\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => \rcb_flush_downcount_7_0_a2_1_0__g0\,
dataa => reset_c,
datab => rcb_flush_downcount_0,
datac => nstate3_0_a2,
datad => startcmd_i);
\STATE_RNI4CKM1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000001101")
port map (
combout => \RCB_STATE_SRSTS_I_I_0_4__G1_1\,
dataa => rcb_state_i_0,
datab => N_180_I_0_A2_53,
datac => rcbcmd_0_0,
datad => \RCB_STATE_SRSTS_I_I_A2_0_1__G6\);
N_425_I_0_G0_Z236: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100111111001")
port map (
combout => N_425_i_0_g0,
dataa => rcb_flush_downcount_0,
datab => rcb_flush_downcount_1,
datac => G_558);
N_427_I_0_G0_Z237: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111001001")
port map (
combout => N_427_i_0_g0,
dataa => rcb_flush_downcount_2,
datab => rcb_flush_downcount_3,
datac => rcb_flush_downcount_2_c1,
datad => G_558);
N_428_I_0_G0_Z238: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111011111111")
port map (
combout => N_428_i_0_g0,
dataa => reset_c,
datab => rcb_flush_downcount_4,
datac => nstate3_0_a2_3,
datad => startcmd_i);
N_426_I_0_G0_Z239: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111100001")
port map (
combout => N_426_i_0_g0,
dataa => rcb_flush_downcount_0,
datab => rcb_flush_downcount_1,
datac => rcb_flush_downcount_2,
datad => G_558);
\STATE_RNIREUP1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010101000000")
port map (
combout => \rcb_state_srsts_i_i_0_4__g0_0\,
dataa => reset_c,
datab => rcb_state_4,
datac => startcmd_i,
datad => \RCB_STATE_SRSTS_I_I_0_4__G1_1\);
\STATE_RNI3CPU_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => \RCB_STATE_SRSTS_0_0_0_0__G0_0_0_A\,
dataa => STATE(0),
datab => STATE(1),
datac => rcb_state_2,
datad => \RCB_STATE_SRSTS_I_I_A2_0_1__G6\);
\RCB_STATE_SRSTS_0_0_A2_2_X_RNI425U1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010000000000")
port map (
combout => \RCB_STATE_SRSTS_0_0_0_0__G0_0_0\,
dataa => rcb_state_i_0,
datab => rcbcmd_0_0,
datac => \RCB_STATE_SRSTS_0_0_0_0__G0_0_0_A\,
datad => RCB_STATE_SRSTS_0_0_A2_2_X(0));
\RCB_STATE_NSS_I_0_0_A2_0_0_RNIKS9P_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101001101011111")
port map (
combout => \RCB_STATE_NSS_I_0_0_0_0__G0_2_A\,
dataa => rcb_state_4,
datab => RCB_STATE_NSS_I_0_0_A2_0_0(0),
datac => startcmd_i,
datad => RCB_STATE_NSS_I_0_0_O2(0));
\RCB_STATE_NSS_I_0_0_A2_0_0_RNIR6K31_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010001010101")
port map (
combout => \RCB_STATE_NSS_I_0_0_0_0__G0_2\,
dataa => reset_c,
datab => rcb_state_3,
datac => \RCB_STATE_SRSTS_0_0_0_2__G4\,
datad => \RCB_STATE_NSS_I_0_0_0_0__G0_2_A\);
\RCB_STATE_SRSTS_0_0_A2_2_X_RNI9VGI2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111011101110")
port map (
combout => \rcb_state_srsts_0_0_0_0__g0_0\,
dataa => \RCB_STATE_SRSTS_0_0_0_0__G0_0_0\,
datab => \RCB_STATE_SRSTS_0_0_0_0__G2_0_X\,
datac => x_clear_reg_0_sqmuxa_4,
datad => un19_equal_block_out);
DELAY_I_0_RNI9PK3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000011101110111")
port map (
combout => \RCB_STATE_SRSTS_0_0_0_3__G0_0_1_A\,
dataa => DELAY_I_51,
datab => rcb_state_3,
datac => rcb_state_0,
datad => equal_block_out4_NE);
\RCB_STATE_NSS_I_0_0_A2_5_RNIO6GL_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001110101")
port map (
combout => \RCB_STATE_SRSTS_0_0_0_3__G0_0_1\,
dataa => reset_c,
datab => rcb_state_i_0,
datac => RCB_STATE_NSS_I_0_0_A2_5_50,
datad => \RCB_STATE_SRSTS_0_0_0_3__G0_0_1_A\);
\RCB_STATE_NSS_I_0_0_A2_1_1_X_RNIM0A41_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111101000000")
port map (
combout => \rcb_state_srsts_0_0_0_3__g0_0\,
dataa => rcb_state_2,
datab => \RCB_STATE_SRSTS_0_0_0__G0_0_A5_0_0\,
datac => RCB_STATE_NSS_I_0_0_A2_1_1_X(0),
datad => \RCB_STATE_SRSTS_0_0_0_3__G0_0_1\);
\RCB_STATE_NSS_I_0_0_A2_2_0_RNIE6UB1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \RCB_STATE_NSS_I_0_0_0_0__G0_4\,
dataa => RCB_STATE_NSS_I_0_0_A2_2_0(0),
datab => RCB_STATE_NSS_I_0_0_A2_5_50,
datac => \RCB_STATE_NSS_I_0_0_0_0__G0_2\,
datad => RCB_STATE_NSS_I_0_0_A2(0));
\RCB_STATE_NSS_I_0_0_A2_4_RNI30SL1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \rcb_state_nss_i_0_0_0_0__g0\,
dataa => rcb_state_1,
datab => RCB_STATE_NSS_I_0_0_A2_1_1_X(0),
datac => \RCB_STATE_NSS_I_0_0_0_0__G0_4\,
datad => RCB_STATE_NSS_I_0_0_A2_4(0));
\STATE_RNIUA6A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010101110")
port map (
combout => \word_reg_out_2_0_0__g0_i_0_x\,
dataa => reset_c,
datab => N_180_I_0_A2_53,
datac => startcmd_i);
\RCB_STATE_NSS_I_0_0_A2_1_1_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000010000")
port map (
combout => RCB_STATE_NSS_I_0_0_A2_1_1_X(0),
dataa => reset_c,
datab => startcmd_i,
datac => equal_block_out4_NE);
\RCB_STATE_SRSTS_0_0_A2_2_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => RCB_STATE_SRSTS_0_0_A2_2_X(0),
dataa => reset_c,
datab => startcmd_i);
\STATE_RNIHP0J_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101000101010001")
port map (
combout => \RCB_STATE_SRSTS_I_I_A2_0_1__G0_0_A2_0_X\,
dataa => reset_c,
datab => rcb_state_i_0,
datac => N_180_I_0_A2_53);
\RCB_STATE_SRSTS_0_0_0_0__G2_0_X_Z255\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000100")
port map (
combout => \RCB_STATE_SRSTS_0_0_0_0__G2_0_X\,
dataa => reset_c,
datab => rcb_state_0,
datac => equal_block_out4_NE);
\STATE_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101111101011")
port map (
combout => \STATE_SRSTS_0_1__G0_X\,
dataa => reset_c,
datab => STATE(0),
datac => STATE(1));
\VDIN_1_IV_0_M2_X_14_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_14,
dataa => REG_DATA(14),
datab => pixop_reg_14_0,
datac => pixop_reg_14_1);
\VDIN_1_IV_0_M2_X_15_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_15,
dataa => REG_DATA(15),
datab => pixop_reg_15_0,
datac => pixop_reg_15_1);
\VDIN_1_IV_0_M2_X_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_6,
dataa => REG_DATA(6),
datab => pixop_reg_6_0,
datac => pixop_reg_6_1);
\VDIN_1_IV_0_M2_X_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_7,
dataa => REG_DATA(7),
datab => pixop_reg_7_0,
datac => pixop_reg_7_1);
\VDIN_1_IV_0_M2_X_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_8,
dataa => REG_DATA(8),
datab => pixop_reg_8_0,
datac => pixop_reg_8_1);
\VDIN_1_IV_0_M2_X_9_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_9,
dataa => REG_DATA(9),
datab => pixop_reg_9_0,
datac => pixop_reg_9_1);
\VDIN_1_IV_0_M2_X_10_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_10,
dataa => REG_DATA(10),
datab => pixop_reg_10_0,
datac => pixop_reg_10_1);
\VDIN_1_IV_0_M2_X_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_11,
dataa => REG_DATA(11),
datab => pixop_reg_11_0,
datac => pixop_reg_11_1);
\VDIN_1_IV_0_M2_X_12_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_12,
dataa => REG_DATA(12),
datab => pixop_reg_12_0,
datac => pixop_reg_12_1);
\VDIN_1_IV_0_M2_X_13_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_13,
dataa => REG_DATA(13),
datab => pixop_reg_13_0,
datac => pixop_reg_13_1);
\VDIN_1_IV_0_M2_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_0,
dataa => REG_DATA(0),
datab => pixop_reg_0_0,
datac => pixop_reg_0_1);
\VDIN_1_IV_0_M2_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_1,
dataa => REG_DATA(1),
datab => pixop_reg_1_0,
datac => pixop_reg_1_1);
\VDIN_1_IV_0_M2_X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_2,
dataa => REG_DATA(2),
datab => pixop_reg_2_0,
datac => pixop_reg_2_1);
\VDIN_1_IV_0_M2_X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_3,
dataa => REG_DATA(3),
datab => pixop_reg_3_0,
datac => pixop_reg_3_1);
\VDIN_1_IV_0_M2_X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_4,
dataa => REG_DATA(4),
datab => pixop_reg_4_0,
datac => pixop_reg_4_1);
\VDIN_1_IV_0_M2_X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_5,
dataa => REG_DATA(5),
datab => pixop_reg_5_0,
datac => pixop_reg_5_1);
R1_Y_CLEAR_REG_N1_I_M2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => y_clear_reg_n1_i_m2,
dataa => y_clear_reg_1,
datab => y_clear_reg_0,
datac => rcb_state_4,
datad => Y_IN_I_M2_49);
CLK_C_I <= not clk_c;
GND <= '0';
VCC <= '1';
y_in_i_m2_0 <= Y_IN_I_M2_49;
rcb_state_nss_i_0_0_a2_5_0 <= RCB_STATE_NSS_I_0_0_A2_5_50;
delay_i_0_RNIHDMC <= DELAY_I_51;
delay_i_0_o2 <= DELAY_I_0_O2_52;
N_180_i_0_a2 <= N_180_I_0_A2_53;
end beh;

--
library ieee, work;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.components.all;
use work.cycloneii_components.all;

entity pix_word_cache is
port(
rdout_par_15_1 :  out std_logic;
rdout_par_15_0 :  out std_logic;
rdout_par_14_1 :  out std_logic;
rdout_par_14_0 :  out std_logic;
rdout_par_13_1 :  out std_logic;
rdout_par_13_0 :  out std_logic;
rdout_par_12_1 :  out std_logic;
rdout_par_12_0 :  out std_logic;
rdout_par_11_1 :  out std_logic;
rdout_par_11_0 :  out std_logic;
rdout_par_10_1 :  out std_logic;
rdout_par_10_0 :  out std_logic;
rdout_par_9_1 :  out std_logic;
rdout_par_9_0 :  out std_logic;
rdout_par_8_1 :  out std_logic;
rdout_par_8_0 :  out std_logic;
rdout_par_7_1 :  out std_logic;
rdout_par_7_0 :  out std_logic;
rdout_par_6_1 :  out std_logic;
rdout_par_6_0 :  out std_logic;
rdout_par_5_1 :  out std_logic;
rdout_par_5_0 :  out std_logic;
rdout_par_4_1 :  out std_logic;
rdout_par_4_0 :  out std_logic;
rdout_par_3_1 :  out std_logic;
rdout_par_3_0 :  out std_logic;
rdout_par_2_1 :  out std_logic;
rdout_par_2_0 :  out std_logic;
rdout_par_1_1 :  out std_logic;
rdout_par_1_0 :  out std_logic;
rdout_par_0_1 :  out std_logic;
rdout_par_0_0 :  out std_logic;
rcb_state_3 :  in std_logic;
rcb_state_0 :  in std_logic;
rcb_state_1 :  in std_logic;
y_in_i_m2_0 :  in std_logic;
y_in_0 :  in std_logic;
penReg_0 :  in std_logic;
penReg_1 :  in std_logic;
rcbcmd_i_o4_0 :  in std_logic;
rcb_state_i_0 :  in std_logic;
state_i_0 :  in std_logic;
rcb_state_nss_i_0_0_a2_5_0 :  in std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
delay_i_0_RNIHDMC :  in std_logic;
equal_block_out4_NE :  in std_logic;
x_clear_reg_e1_0_g3_0_494_m5_rep1 :  in std_logic;
\x_clear_start_2_0_0__g3\ :  in std_logic;
x_clear_reg_e1_0_g3_0_494_m5 :  in std_logic;
delay_i_0_o2 :  in std_logic;
dav_c :  in std_logic;
finish :  out std_logic);
end pix_word_cache;

architecture beh of pix_word_cache is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal RDOUT1_13_A : std_logic_vector(1 downto 0);
signal RDOUT1_13 : std_logic_vector(1 downto 0);
signal RDOUT1_10_A : std_logic_vector(1 downto 0);
signal RDOUT1_10 : std_logic_vector(1 downto 0);
signal RDOUT1_6_A : std_logic_vector(1 downto 0);
signal RDOUT1_6 : std_logic_vector(1 downto 0);
signal RDOUT1_3_I_M2_A : std_logic_vector(1 downto 0);
signal RDOUT1_3_I_M2 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_9_EN_0_A2 : std_logic_vector(0 to 0);
signal RDOUT_PAR_14_EN_0_A2 : std_logic_vector(0 to 0);
signal RDOUT_PAR_7_EN_0_A2 : std_logic_vector(0 to 0);
signal RDOUT_PAR_11_EN_0_A2 : std_logic_vector(0 to 0);
signal RDOUT_PAR_13_EN_0_A2 : std_logic_vector(0 to 0);
signal RDOUT_PAR_8_EN_0_A2 : std_logic_vector(0 to 0);
signal RDOUT_PAR_15_EN_0_A2 : std_logic_vector(0 to 0);
signal RDOUT_PAR_12_EN_0_A2 : std_logic_vector(0 to 0);
signal RDOUT1_14 : std_logic_vector(1 downto 0);
signal RDOUT1_7_I_M2 : std_logic_vector(1 downto 0);
signal RDIN1_I_M2 : std_logic_vector(1 downto 0);
signal RDIN1_I_O2 : std_logic_vector(1 downto 0);
signal \RDOUT_PAR_15_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_15_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_14_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_14_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_13_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_13_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_12_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_12_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_11_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_11_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_10_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_10_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_9_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_9_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_8_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_8_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_7_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_7_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_6_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_6_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_5_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_5_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_4_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_4_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_3_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_3_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_2_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_2_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_1_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_1_1_0_0__G2\ : std_logic ;
signal \RDOUT_PAR_0_1_0_1__G2\ : std_logic ;
signal \RDOUT_PAR_0_1_0_0__G2\ : std_logic ;
signal FINISH_6 : std_logic ;
signal FINISH_8 : std_logic ;
signal FINISH_14 : std_logic ;
signal \RDOUT_PAR_0_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_0_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_1_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_1_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_4_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_4_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_5_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_5_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_6_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_6_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_8_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_8_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_10_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_10_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_12_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_12_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_15_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_15_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_14_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_14_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_13_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_13_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_11_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_11_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_9_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_9_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_7_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_7_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_3_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_3_1_0_0__G3\ : std_logic ;
signal \RDOUT_PAR_2_1_0_1__G3\ : std_logic ;
signal \RDOUT_PAR_2_1_0_0__G3\ : std_logic ;
signal FINISH_18 : std_logic ;
signal FINISH_19 : std_logic ;
signal FINISH_20 : std_logic ;
signal FINISH_24 : std_logic ;
signal FINISH_26 : std_logic ;
signal FINISH_28 : std_logic ;
signal FINISH_30 : std_logic ;
signal FINISH_31 : std_logic ;
signal RDOUT_PAR_10_1_SQMUXA_0_A2_1 : std_logic ;
signal RDOUT_PAR_4_1_SQMUXA_0_A2_1 : std_logic ;
signal RDOUT_PAR_0_1_SQMUXA_0_A2 : std_logic ;
signal RDOUT_PAR_1_1_SQMUXA_0_A2 : std_logic ;
signal RDOUT_PAR_2_1_SQMUXA_0_A2 : std_logic ;
signal RDOUT_PAR_3_1_SQMUXA_0_A2 : std_logic ;
signal RDOUT_PAR_4_1_SQMUXA_0_A2 : std_logic ;
signal RDOUT_PAR_5_1_SQMUXA_0_A2 : std_logic ;
signal RDOUT_PAR_6_1_SQMUXA_0_A2 : std_logic ;
signal RDOUT_PAR_10_1_SQMUXA_0_A2 : std_logic ;
signal FINISH_23 : std_logic ;
signal FINISH_29 : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
signal RDOUT_PAR_15_17 : std_logic ;
signal RDOUT_PAR_15_18 : std_logic ;
signal RDOUT_PAR_14_19 : std_logic ;
signal RDOUT_PAR_14_20 : std_logic ;
signal RDOUT_PAR_13_21 : std_logic ;
signal RDOUT_PAR_13_22 : std_logic ;
signal RDOUT_PAR_12_23 : std_logic ;
signal RDOUT_PAR_12_24 : std_logic ;
signal RDOUT_PAR_11_25 : std_logic ;
signal RDOUT_PAR_11_26 : std_logic ;
signal RDOUT_PAR_10_27 : std_logic ;
signal RDOUT_PAR_10_28 : std_logic ;
signal RDOUT_PAR_9_29 : std_logic ;
signal RDOUT_PAR_9_30 : std_logic ;
signal RDOUT_PAR_8_31 : std_logic ;
signal RDOUT_PAR_8_32 : std_logic ;
signal RDOUT_PAR_7_33 : std_logic ;
signal RDOUT_PAR_7_34 : std_logic ;
signal RDOUT_PAR_6_35 : std_logic ;
signal RDOUT_PAR_6_36 : std_logic ;
signal RDOUT_PAR_5_37 : std_logic ;
signal RDOUT_PAR_5_38 : std_logic ;
signal RDOUT_PAR_4_39 : std_logic ;
signal RDOUT_PAR_4_40 : std_logic ;
signal RDOUT_PAR_3_41 : std_logic ;
signal RDOUT_PAR_3_42 : std_logic ;
signal RDOUT_PAR_2_43 : std_logic ;
signal RDOUT_PAR_2_44 : std_logic ;
signal RDOUT_PAR_1_45 : std_logic ;
signal RDOUT_PAR_1_46 : std_logic ;
signal RDOUT_PAR_0_47 : std_logic ;
signal RDOUT_PAR_0_48 : std_logic ;
begin
\STORE_RAM_RDOUT_PAR_15_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_15_17,
datain => \RDOUT_PAR_15_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_15_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_15_18,
datain => \RDOUT_PAR_15_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_14_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_14_19,
datain => \RDOUT_PAR_14_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_14_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_14_20,
datain => \RDOUT_PAR_14_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_13_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_13_21,
datain => \RDOUT_PAR_13_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_13_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_13_22,
datain => \RDOUT_PAR_13_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_12_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_12_23,
datain => \RDOUT_PAR_12_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_12_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_12_24,
datain => \RDOUT_PAR_12_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_11_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_11_25,
datain => \RDOUT_PAR_11_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_11_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_11_26,
datain => \RDOUT_PAR_11_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_10_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_10_27,
datain => \RDOUT_PAR_10_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_10_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_10_28,
datain => \RDOUT_PAR_10_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_9_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_9_29,
datain => \RDOUT_PAR_9_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_9_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_9_30,
datain => \RDOUT_PAR_9_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_8_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_8_31,
datain => \RDOUT_PAR_8_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_8_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_8_32,
datain => \RDOUT_PAR_8_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_7_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_7_33,
datain => \RDOUT_PAR_7_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_7_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_7_34,
datain => \RDOUT_PAR_7_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_6_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_6_35,
datain => \RDOUT_PAR_6_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_6_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_6_36,
datain => \RDOUT_PAR_6_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_5_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_5_37,
datain => \RDOUT_PAR_5_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_5_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_5_38,
datain => \RDOUT_PAR_5_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_4_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_4_39,
datain => \RDOUT_PAR_4_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_4_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_4_40,
datain => \RDOUT_PAR_4_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_3_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_3_41,
datain => \RDOUT_PAR_3_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_3_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_3_42,
datain => \RDOUT_PAR_3_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_2_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_2_43,
datain => \RDOUT_PAR_2_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_2_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_2_44,
datain => \RDOUT_PAR_2_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_1_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_1_45,
datain => \RDOUT_PAR_1_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_1_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_1_46,
datain => \RDOUT_PAR_1_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_0_1_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_0_47,
datain => \RDOUT_PAR_0_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STORE_RAM_RDOUT_PAR_0_0_\: cycloneii_lcell_ff port map (
regout => RDOUT_PAR_0_48,
datain => \RDOUT_PAR_0_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
FINISH_6_Z258: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => FINISH_6,
dataa => RDOUT_PAR_3_41,
datab => RDOUT_PAR_3_42);
FINISH_8_Z259: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => FINISH_8,
dataa => RDOUT_PAR_7_33,
datab => RDOUT_PAR_7_34);
FINISH_14_Z260: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => FINISH_14,
dataa => RDOUT_PAR_1_45,
datab => RDOUT_PAR_1_46);
\STORE_RAM_RDOUT_PAR_0_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_0_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_0_48,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_0_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_0_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_0_47,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_1_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_1_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_1_46,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_1_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_1_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_1_45,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_4_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_4_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_4_40,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_4_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_4_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_4_39,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_5_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_5_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_5_38,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_5_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_5_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_5_37,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_6_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_6_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_6_36,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_6_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_6_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_6_35,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_8_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_8_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_8_32,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_8_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_8_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_8_31,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_10_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_10_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_10_28,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_10_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_10_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_10_27,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_12_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_12_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_12_24,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_12_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_12_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_12_23,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_15_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_15_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_15_17,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_15_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_15_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_15_18,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_14_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_14_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_14_19,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_14_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_14_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_14_20,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_13_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_13_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_13_21,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_13_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_13_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_13_22,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_11_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_11_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_11_25,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_11_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_11_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_11_26,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_9_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_9_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_9_29,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_9_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_9_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_9_30,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_7_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_7_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_7_33,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_7_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_7_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_7_34,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_3_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_3_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_3_41,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_3_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_3_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_3_42,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_2_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_2_1_0_1__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_2_43,
datac => delay_i_0_RNIHDMC);
\STORE_RAM_RDOUT_PAR_2_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => \RDOUT_PAR_2_1_0_0__G3\,
dataa => rcb_state_3,
datab => RDOUT_PAR_2_44,
datac => delay_i_0_RNIHDMC);
FINISH_18_Z293: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => FINISH_18,
dataa => RDOUT_PAR_12_24,
datab => RDOUT_PAR_12_23,
datac => RDOUT_PAR_13_22,
datad => RDOUT_PAR_13_21);
FINISH_19_Z294: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => FINISH_19,
dataa => RDOUT_PAR_10_28,
datab => RDOUT_PAR_10_27,
datac => RDOUT_PAR_11_26,
datad => RDOUT_PAR_11_25);
FINISH_20_Z295: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => FINISH_20,
dataa => RDOUT_PAR_4_40,
datab => RDOUT_PAR_4_39,
datac => RDOUT_PAR_5_38,
datad => RDOUT_PAR_5_37);
FINISH_24_Z296: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => FINISH_24,
dataa => RDOUT_PAR_8_32,
datab => RDOUT_PAR_8_31,
datac => RDOUT_PAR_9_30,
datad => RDOUT_PAR_9_29);
FINISH_26_Z297: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => FINISH_26,
dataa => RDOUT_PAR_14_20,
datab => RDOUT_PAR_14_19,
datac => RDOUT_PAR_15_18,
datad => RDOUT_PAR_15_17);
FINISH_28_Z298: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => FINISH_28,
dataa => RDOUT_PAR_2_44,
datab => RDOUT_PAR_2_43,
datac => FINISH_6,
datad => FINISH_20);
FINISH_30_Z299: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => FINISH_30,
dataa => RDOUT_PAR_0_48,
datab => RDOUT_PAR_0_47,
datac => FINISH_14,
datad => FINISH_24);
FINISH_31_Z300: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => FINISH_31,
dataa => FINISH_18,
datab => FINISH_19,
datac => FINISH_26);
RDOUT_PAR_10_1_SQMUXA_0_A2_1_Z301: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011100000")
port map (
combout => RDOUT_PAR_10_1_SQMUXA_0_A2_1,
dataa => rcb_state_0,
datab => rcb_state_1,
datac => y_in_i_m2_0,
datad => equal_block_out4_NE);
RDOUT_PAR_4_1_SQMUXA_0_A2_1_Z302: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000001110")
port map (
combout => RDOUT_PAR_4_1_SQMUXA_0_A2_1,
dataa => rcb_state_0,
datab => rcb_state_1,
datac => y_in_i_m2_0,
datad => equal_block_out4_NE);
\RDOUT1_13_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001011111")
port map (
combout => RDOUT1_13_A(0),
dataa => RDOUT_PAR_14_20,
datab => RDOUT_PAR_15_18,
datac => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datad => \x_clear_start_2_0_0__g3\);
\RDOUT1_13_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_13(0),
dataa => RDOUT_PAR_13_22,
datab => RDOUT_PAR_12_24,
datac => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datad => RDOUT1_13_A(0));
\RDOUT1_10_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001011111")
port map (
combout => RDOUT1_10_A(0),
dataa => RDOUT_PAR_10_28,
datab => RDOUT_PAR_11_26,
datac => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datad => \x_clear_start_2_0_0__g3\);
\RDOUT1_10_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_10(0),
dataa => RDOUT_PAR_9_30,
datab => RDOUT_PAR_8_32,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => RDOUT1_10_A(0));
\RDOUT1_6_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001011111")
port map (
combout => RDOUT1_6_A(0),
dataa => RDOUT_PAR_6_36,
datab => RDOUT_PAR_7_34,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => \x_clear_start_2_0_0__g3\);
\RDOUT1_6_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_6(0),
dataa => RDOUT_PAR_5_38,
datab => RDOUT_PAR_4_40,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => RDOUT1_6_A(0));
\RDOUT1_3_I_M2_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001011111")
port map (
combout => RDOUT1_3_I_M2_A(0),
dataa => RDOUT_PAR_2_44,
datab => RDOUT_PAR_3_42,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => \x_clear_start_2_0_0__g3\);
\RDOUT1_3_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_3_I_M2(0),
dataa => RDOUT_PAR_1_46,
datab => RDOUT_PAR_0_48,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => RDOUT1_3_I_M2_A(0));
\RDOUT1_3_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001011111")
port map (
combout => RDOUT1_3_I_M2_A(1),
dataa => RDOUT_PAR_2_43,
datab => RDOUT_PAR_3_41,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => \x_clear_start_2_0_0__g3\);
\RDOUT1_3_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_3_I_M2(1),
dataa => RDOUT_PAR_1_45,
datab => RDOUT_PAR_0_47,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => RDOUT1_3_I_M2_A(1));
\RDOUT1_6_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001011111")
port map (
combout => RDOUT1_6_A(1),
dataa => RDOUT_PAR_6_35,
datab => RDOUT_PAR_7_33,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => \x_clear_start_2_0_0__g3\);
\RDOUT1_6_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_6(1),
dataa => RDOUT_PAR_5_37,
datab => RDOUT_PAR_4_39,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => RDOUT1_6_A(1));
\RDOUT1_10_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001011111")
port map (
combout => RDOUT1_10_A(1),
dataa => RDOUT_PAR_10_27,
datab => RDOUT_PAR_11_25,
datac => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datad => \x_clear_start_2_0_0__g3\);
\RDOUT1_10_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_10(1),
dataa => RDOUT_PAR_9_29,
datab => RDOUT_PAR_8_31,
datac => x_clear_reg_e1_0_g3_0_494_m5,
datad => RDOUT1_10_A(1));
\RDOUT1_13_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000001011111")
port map (
combout => RDOUT1_13_A(1),
dataa => RDOUT_PAR_14_19,
datab => RDOUT_PAR_15_17,
datac => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datad => \x_clear_start_2_0_0__g3\);
\RDOUT1_13_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_13(1),
dataa => RDOUT_PAR_13_21,
datab => RDOUT_PAR_12_23,
datac => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datad => RDOUT1_13_A(1));
RDOUT_PAR_10_1_SQMUXA_0_A2_1_RNI2OK02_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => RDOUT_PAR_9_EN_0_A2(0),
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_10_1_SQMUXA_0_A2_1);
RDOUT_PAR_10_1_SQMUXA_0_A2_1_RNI2OK02_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000000000")
port map (
combout => RDOUT_PAR_14_EN_0_A2(0),
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_10_1_SQMUXA_0_A2_1);
RDOUT_PAR_4_1_SQMUXA_0_A2_1_RNILDLB2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => RDOUT_PAR_7_EN_0_A2(0),
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_4_1_SQMUXA_0_A2_1);
RDOUT_PAR_10_1_SQMUXA_0_A2_1_RNI2OK02_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => RDOUT_PAR_11_EN_0_A2(0),
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_10_1_SQMUXA_0_A2_1);
RDOUT_PAR_10_1_SQMUXA_0_A2_1_RNI2OK02: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000000000")
port map (
combout => RDOUT_PAR_13_EN_0_A2(0),
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_10_1_SQMUXA_0_A2_1);
RDOUT_PAR_10_1_SQMUXA_0_A2_1_RNI2OK02_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => RDOUT_PAR_8_EN_0_A2(0),
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_10_1_SQMUXA_0_A2_1);
RDOUT_PAR_10_1_SQMUXA_0_A2_1_RNI2OK02_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => RDOUT_PAR_15_EN_0_A2(0),
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_10_1_SQMUXA_0_A2_1);
RDOUT_PAR_10_1_SQMUXA_0_A2_1_RNI2OK02_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000000000")
port map (
combout => RDOUT_PAR_12_EN_0_A2(0),
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_10_1_SQMUXA_0_A2_1);
RDOUT_PAR_0_1_SQMUXA_0_A2_Z327: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => RDOUT_PAR_0_1_SQMUXA_0_A2,
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_4_1_SQMUXA_0_A2_1);
RDOUT_PAR_1_1_SQMUXA_0_A2_Z328: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => RDOUT_PAR_1_1_SQMUXA_0_A2,
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_4_1_SQMUXA_0_A2_1);
RDOUT_PAR_2_1_SQMUXA_0_A2_Z329: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000000")
port map (
combout => RDOUT_PAR_2_1_SQMUXA_0_A2,
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_4_1_SQMUXA_0_A2_1);
RDOUT_PAR_3_1_SQMUXA_0_A2_Z330: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => RDOUT_PAR_3_1_SQMUXA_0_A2,
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_4_1_SQMUXA_0_A2_1);
RDOUT_PAR_4_1_SQMUXA_0_A2_Z331: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000000000")
port map (
combout => RDOUT_PAR_4_1_SQMUXA_0_A2,
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_4_1_SQMUXA_0_A2_1);
RDOUT_PAR_5_1_SQMUXA_0_A2_Z332: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000000000")
port map (
combout => RDOUT_PAR_5_1_SQMUXA_0_A2,
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_4_1_SQMUXA_0_A2_1);
RDOUT_PAR_6_1_SQMUXA_0_A2_Z333: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000000000")
port map (
combout => RDOUT_PAR_6_1_SQMUXA_0_A2,
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_4_1_SQMUXA_0_A2_1);
RDOUT_PAR_10_1_SQMUXA_0_A2_Z334: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000000")
port map (
combout => RDOUT_PAR_10_1_SQMUXA_0_A2,
dataa => y_in_0,
datab => x_clear_reg_e1_0_g3_0_494_m5_rep1,
datac => \x_clear_start_2_0_0__g3\,
datad => RDOUT_PAR_10_1_SQMUXA_0_A2_1);
\RDOUT1_14_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_14(0),
dataa => y_in_0,
datab => RDOUT1_13(0),
datac => RDOUT1_10(0));
\RDOUT1_7_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_7_I_M2(0),
dataa => y_in_0,
datab => RDOUT1_6(0),
datac => RDOUT1_3_I_M2(0));
\RDOUT1_7_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_7_I_M2(1),
dataa => y_in_0,
datab => RDOUT1_6(1),
datac => RDOUT1_3_I_M2(1));
\RDOUT1_14_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_14(1),
dataa => y_in_0,
datab => RDOUT1_13(1),
datac => RDOUT1_10(1));
\STORE_RAM_RDOUT_PAR_0_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_0_1_0_0__G2\,
dataa => \RDOUT_PAR_0_1_0_0__G3\,
datab => RDOUT_PAR_0_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_0_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_0_1_0_1__G2\,
dataa => \RDOUT_PAR_0_1_0_1__G3\,
datab => RDOUT_PAR_0_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_1_1_0_0__G2\,
dataa => \RDOUT_PAR_1_1_0_0__G3\,
datab => RDOUT_PAR_1_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_1_1_0_1__G2\,
dataa => \RDOUT_PAR_1_1_0_1__G3\,
datab => RDOUT_PAR_1_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_4_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_4_1_0_0__G2\,
dataa => \RDOUT_PAR_4_1_0_0__G3\,
datab => RDOUT_PAR_4_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_4_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_4_1_0_1__G2\,
dataa => \RDOUT_PAR_4_1_0_1__G3\,
datab => RDOUT_PAR_4_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_5_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_5_1_0_0__G2\,
dataa => \RDOUT_PAR_5_1_0_0__G3\,
datab => RDOUT_PAR_5_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_5_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_5_1_0_1__G2\,
dataa => \RDOUT_PAR_5_1_0_1__G3\,
datab => RDOUT_PAR_5_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_6_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_6_1_0_0__G2\,
dataa => \RDOUT_PAR_6_1_0_0__G3\,
datab => RDOUT_PAR_6_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_6_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_6_1_0_1__G2\,
dataa => \RDOUT_PAR_6_1_0_1__G3\,
datab => RDOUT_PAR_6_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_8_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_8_1_0_0__G2\,
dataa => \RDOUT_PAR_8_1_0_0__G3\,
datab => RDOUT_PAR_8_EN_0_A2(0),
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_8_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_8_1_0_1__G2\,
dataa => \RDOUT_PAR_8_1_0_1__G3\,
datab => RDOUT_PAR_8_EN_0_A2(0),
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_10_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_10_1_0_0__G2\,
dataa => \RDOUT_PAR_10_1_0_0__G3\,
datab => RDOUT_PAR_10_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_10_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_10_1_0_1__G2\,
dataa => \RDOUT_PAR_10_1_0_1__G3\,
datab => RDOUT_PAR_10_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_12_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_12_1_0_0__G2\,
dataa => \RDOUT_PAR_12_1_0_0__G3\,
datab => RDOUT_PAR_12_EN_0_A2(0),
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_12_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_12_1_0_1__G2\,
dataa => \RDOUT_PAR_12_1_0_1__G3\,
datab => RDOUT_PAR_12_EN_0_A2(0),
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_15_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_15_1_0_1__G2\,
dataa => \RDOUT_PAR_15_1_0_1__G3\,
datab => RDOUT_PAR_15_EN_0_A2(0),
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_15_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_15_1_0_0__G2\,
dataa => \RDOUT_PAR_15_1_0_0__G3\,
datab => RDOUT_PAR_15_EN_0_A2(0),
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_14_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_14_1_0_1__G2\,
dataa => \RDOUT_PAR_14_1_0_1__G3\,
datab => RDOUT_PAR_14_EN_0_A2(0),
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_14_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_14_1_0_0__G2\,
dataa => \RDOUT_PAR_14_1_0_0__G3\,
datab => RDOUT_PAR_14_EN_0_A2(0),
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_13_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_13_1_0_1__G2\,
dataa => \RDOUT_PAR_13_1_0_1__G3\,
datab => RDOUT_PAR_13_EN_0_A2(0),
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_13_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_13_1_0_0__G2\,
dataa => \RDOUT_PAR_13_1_0_0__G3\,
datab => RDOUT_PAR_13_EN_0_A2(0),
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_11_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_11_1_0_1__G2\,
dataa => \RDOUT_PAR_11_1_0_1__G3\,
datab => RDOUT_PAR_11_EN_0_A2(0),
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_11_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_11_1_0_0__G2\,
dataa => \RDOUT_PAR_11_1_0_0__G3\,
datab => RDOUT_PAR_11_EN_0_A2(0),
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_9_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_9_1_0_1__G2\,
dataa => \RDOUT_PAR_9_1_0_1__G3\,
datab => RDOUT_PAR_9_EN_0_A2(0),
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_9_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_9_1_0_0__G2\,
dataa => \RDOUT_PAR_9_1_0_0__G3\,
datab => RDOUT_PAR_9_EN_0_A2(0),
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_7_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_7_1_0_1__G2\,
dataa => \RDOUT_PAR_7_1_0_1__G3\,
datab => RDOUT_PAR_7_EN_0_A2(0),
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_7_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_7_1_0_0__G2\,
dataa => \RDOUT_PAR_7_1_0_0__G3\,
datab => RDOUT_PAR_7_EN_0_A2(0),
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_3_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_3_1_0_1__G2\,
dataa => \RDOUT_PAR_3_1_0_1__G3\,
datab => RDOUT_PAR_3_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_3_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_3_1_0_0__G2\,
dataa => \RDOUT_PAR_3_1_0_0__G3\,
datab => RDOUT_PAR_3_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(0));
\STORE_RAM_RDOUT_PAR_2_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_2_1_0_1__G2\,
dataa => \RDOUT_PAR_2_1_0_1__G3\,
datab => RDOUT_PAR_2_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(1));
\STORE_RAM_RDOUT_PAR_2_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => \RDOUT_PAR_2_1_0_0__G2\,
dataa => \RDOUT_PAR_2_1_0_0__G3\,
datab => RDOUT_PAR_2_1_SQMUXA_0_A2,
datac => RDIN1_I_M2(0));
\RDIN1_I_O2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011111011111")
port map (
combout => RDIN1_I_O2(0),
dataa => delay_i_0_o2,
datab => y_in_i_m2_0,
datac => RDOUT1_7_I_M2(0),
datad => RDOUT1_14(0));
\RDIN1_I_O2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011111011111")
port map (
combout => RDIN1_I_O2(1),
dataa => delay_i_0_o2,
datab => y_in_i_m2_0,
datac => RDOUT1_7_I_M2(1),
datad => RDOUT1_14(1));
\RDIN1_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000101011110011")
port map (
combout => RDIN1_I_M2(0),
dataa => penReg_0,
datab => penReg_1,
datac => rcbcmd_i_o4_0,
datad => RDIN1_I_O2(0));
\RDIN1_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000101011110011")
port map (
combout => RDIN1_I_M2(1),
dataa => penReg_1,
datab => penReg_0,
datac => rcbcmd_i_o4_0,
datad => RDIN1_I_O2(1));
FINISH_23_Z375: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => FINISH_23,
dataa => dav_c,
datab => rcb_state_i_0,
datac => state_i_0,
datad => rcb_state_nss_i_0_0_a2_5_0);
FINISH_29_Z376: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => FINISH_29,
dataa => RDOUT_PAR_6_36,
datab => RDOUT_PAR_6_35,
datac => FINISH_8,
datad => FINISH_23);
FINISH_Z377: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => finish,
dataa => FINISH_30,
datab => FINISH_28,
datac => FINISH_31,
datad => FINISH_29);
GND <= '0';
VCC <= '1';
rdout_par_15_1 <= RDOUT_PAR_15_17;
rdout_par_15_0 <= RDOUT_PAR_15_18;
rdout_par_14_1 <= RDOUT_PAR_14_19;
rdout_par_14_0 <= RDOUT_PAR_14_20;
rdout_par_13_1 <= RDOUT_PAR_13_21;
rdout_par_13_0 <= RDOUT_PAR_13_22;
rdout_par_12_1 <= RDOUT_PAR_12_23;
rdout_par_12_0 <= RDOUT_PAR_12_24;
rdout_par_11_1 <= RDOUT_PAR_11_25;
rdout_par_11_0 <= RDOUT_PAR_11_26;
rdout_par_10_1 <= RDOUT_PAR_10_27;
rdout_par_10_0 <= RDOUT_PAR_10_28;
rdout_par_9_1 <= RDOUT_PAR_9_29;
rdout_par_9_0 <= RDOUT_PAR_9_30;
rdout_par_8_1 <= RDOUT_PAR_8_31;
rdout_par_8_0 <= RDOUT_PAR_8_32;
rdout_par_7_1 <= RDOUT_PAR_7_33;
rdout_par_7_0 <= RDOUT_PAR_7_34;
rdout_par_6_1 <= RDOUT_PAR_6_35;
rdout_par_6_0 <= RDOUT_PAR_6_36;
rdout_par_5_1 <= RDOUT_PAR_5_37;
rdout_par_5_0 <= RDOUT_PAR_5_38;
rdout_par_4_1 <= RDOUT_PAR_4_39;
rdout_par_4_0 <= RDOUT_PAR_4_40;
rdout_par_3_1 <= RDOUT_PAR_3_41;
rdout_par_3_0 <= RDOUT_PAR_3_42;
rdout_par_2_1 <= RDOUT_PAR_2_43;
rdout_par_2_0 <= RDOUT_PAR_2_44;
rdout_par_1_1 <= RDOUT_PAR_1_45;
rdout_par_1_0 <= RDOUT_PAR_1_46;
rdout_par_0_1 <= RDOUT_PAR_0_47;
rdout_par_0_0 <= RDOUT_PAR_0_48;
end beh;

--
library ieee, work;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.components.all;
use work.cycloneii_components.all;

entity draw_any_octant is
port(
un1_xy_i_1_5 :  out std_logic;
un1_xy_i_1_11 :  out std_logic;
un1_xy_i_1_4 :  out std_logic;
un1_xy_i_1_6 :  out std_logic;
un1_xy_i_1_8 :  out std_logic;
un1_xy_i_1_10 :  out std_logic;
un1_xy_i_1_9 :  out std_logic;
un1_xy_i_1_7 :  out std_logic;
un1_xy_i_1_3 :  out std_logic;
un1_xy_i_1_2 :  out std_logic;
un1_xy_i_1_1 :  out std_logic;
un1_xy_i_1_0 :  out std_logic;
x_in_draw_1 :  in std_logic;
x_in_draw_0 :  in std_logic;
x_in_draw_4 :  in std_logic;
x_in_draw_2 :  in std_logic;
x_in_draw_3 :  in std_logic;
y_in_draw_0 :  in std_logic;
rcb_state_i_0 :  in std_logic;
state_1 :  in std_logic;
state_0 :  in std_logic;
xyoldReg_5 :  in std_logic;
xyoldReg_0 :  in std_logic;
xyoldReg_1 :  in std_logic;
xyoldReg_4 :  in std_logic;
xyoldReg_2 :  in std_logic;
xyoldReg_3 :  in std_logic;
xynewReg_5 :  in std_logic;
xynewReg_0 :  in std_logic;
xynewReg_1 :  in std_logic;
xynewReg_4 :  in std_logic;
xynewReg_2 :  in std_logic;
xynewReg_3 :  in std_logic;
lt6 :  in std_logic;
clk_c :  in std_logic;
negy :  out std_logic;
lt5 :  in std_logic;
negx :  out std_logic;
lt5_0 :  in std_logic;
lt6_cout :  in std_logic;
un3_x1 :  out std_logic);
end draw_any_octant;

architecture beh of draw_any_octant is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal Y1 : std_logic_vector(5 downto 0);
signal X1 : std_logic_vector(5 downto 0);
signal UN61_XYIN_I : std_logic_vector(11 downto 0);
signal SWAPXY : std_logic ;
signal X1_N2_0_193_X4 : std_logic ;
signal X1_N1_0_151_X4_0 : std_logic ;
signal X1_N5_0_341_X4 : std_logic ;
signal X1_N3_0_241_X4 : std_logic ;
signal X1_N4_0_291_X4 : std_logic ;
signal X1_E0_0_N_8_I_0_X4_0 : std_logic ;
signal XBIAS_I : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
component draw_octant
port(
y1_5 :  out std_logic;
y1_4 :  out std_logic;
y1_3 :  out std_logic;
y1_2 :  out std_logic;
y1_1 :  out std_logic;
y1_0 :  out std_logic;
x1_5 :  out std_logic;
x1_4 :  out std_logic;
x1_3 :  out std_logic;
x1_2 :  out std_logic;
x1_1 :  out std_logic;
x1_0 :  out std_logic;
un61_xyin_i_6 :  in std_logic;
un61_xyin_i_8 :  in std_logic;
un61_xyin_i_9 :  in std_logic;
un61_xyin_i_10 :  in std_logic;
un61_xyin_i_11 :  in std_logic;
un61_xyin_i_0 :  in std_logic;
un61_xyin_i_1 :  in std_logic;
un61_xyin_i_2 :  in std_logic;
un61_xyin_i_3 :  in std_logic;
un61_xyin_i_4 :  in std_logic;
un61_xyin_i_5 :  in std_logic;
rcb_state_i_0 :  in std_logic;
state_1 :  in std_logic;
state_0 :  in std_logic;
xyoldReg_5 :  in std_logic;
xyoldReg_0 :  in std_logic;
xyoldReg_1 :  in std_logic;
xyoldReg_4 :  in std_logic;
xyoldReg_2 :  in std_logic;
xyoldReg_3 :  in std_logic;
xynewReg_5 :  in std_logic;
xynewReg_0 :  in std_logic;
xynewReg_1 :  in std_logic;
xynewReg_4 :  in std_logic;
xynewReg_2 :  in std_logic;
xynewReg_3 :  in std_logic;
x_in_draw_0 :  in std_logic;
clk_c :  in std_logic;
x1_e0_0_N_8_i_0_x4_0 :  out std_logic;
lt5 :  in std_logic;
x1_n1_0_151_x4_0 :  out std_logic;
lt5_0 :  in std_logic;
x1_n2_0_193_x4 :  out std_logic;
x1_n5_0_341_x4 :  out std_logic;
x1_n3_0_241_x4 :  out std_logic;
x1_n4_0_291_x4 :  out std_logic;
lt6 :  in std_logic;
un3_x1 :  out std_logic;
xbias_i :  in std_logic  );
end component;
begin
R1_C_DELAYED_SWAPXY: cycloneii_lcell_ff port map (
regout => SWAPXY,
datain => lt6,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
R1_C_DELAYED_NEGY: cycloneii_lcell_ff port map (
regout => negy,
datain => lt5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
R1_C_DELAYED_NEGX: cycloneii_lcell_ff port map (
regout => negx,
datain => lt5_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\SWAP_UN1_XY_I_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_5,
dataa => SWAPXY,
datab => Y1(0),
datac => X1(0));
\SWAP_UN1_XY_I_1_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_11,
dataa => SWAPXY,
datab => X1(0),
datac => Y1(0));
\SWAP_UN1_XY_I_1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_4,
dataa => SWAPXY,
datab => Y1(1),
datac => X1(1));
\SWAP_UN1_XY_I_1_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_6,
dataa => SWAPXY,
datab => X1(5),
datac => Y1(5));
\SWAP_UN1_XY_I_1_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_8,
dataa => SWAPXY,
datab => X1(3),
datac => Y1(3));
\SWAP_UN1_XY_I_1_10_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_10,
dataa => SWAPXY,
datab => X1(1),
datac => Y1(1));
\SWAP_UN1_XY_I_1_9_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_9,
dataa => SWAPXY,
datab => X1(2),
datac => Y1(2));
\SWAP_UN1_XY_I_1_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_7,
dataa => SWAPXY,
datab => X1(4),
datac => Y1(4));
\SWAP_UN1_XY_I_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_3,
dataa => SWAPXY,
datab => Y1(2),
datac => X1(2));
\SWAP_UN1_XY_I_1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_2,
dataa => SWAPXY,
datab => Y1(3),
datac => X1(3));
\SWAP_UN1_XY_I_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_1,
dataa => SWAPXY,
datab => Y1(4),
datac => X1(4));
\SWAP_UN1_XY_I_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => un1_xy_i_1_0,
dataa => SWAPXY,
datab => Y1(5),
datac => X1(5));
\SWAP_UN61_XYIN_I_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => UN61_XYIN_I(3),
dataa => x_in_draw_1,
datab => lt5_0,
datac => X1_N2_0_193_X4,
datad => lt6);
\SWAP_UN61_XYIN_I_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => UN61_XYIN_I(4),
dataa => x_in_draw_0,
datab => lt5_0,
datac => X1_N1_0_151_X4_0,
datad => lt6);
\SWAP_UN61_XYIN_I_9_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => UN61_XYIN_I(9),
dataa => x_in_draw_1,
datab => lt5_0,
datac => X1_N2_0_193_X4,
datad => lt6);
\SWAP_UN61_XYIN_I_10_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => UN61_XYIN_I(10),
dataa => x_in_draw_0,
datab => lt5_0,
datac => X1_N1_0_151_X4_0,
datad => lt6);
\SWAP_UN61_XYIN_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => UN61_XYIN_I(0),
dataa => x_in_draw_4,
datab => lt5_0,
datac => X1_N5_0_341_X4,
datad => lt6);
\SWAP_UN61_XYIN_I_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => UN61_XYIN_I(6),
dataa => x_in_draw_4,
datab => lt5_0,
datac => X1_N5_0_341_X4,
datad => lt6);
\SWAP_UN61_XYIN_I_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => UN61_XYIN_I(2),
dataa => x_in_draw_2,
datab => lt5_0,
datac => X1_N3_0_241_X4,
datad => lt6);
\SWAP_UN61_XYIN_I_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => UN61_XYIN_I(8),
dataa => x_in_draw_2,
datab => lt5_0,
datac => X1_N3_0_241_X4,
datad => lt6);
\SWAP_UN61_XYIN_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => UN61_XYIN_I(1),
dataa => x_in_draw_3,
datab => lt5_0,
datac => X1_N4_0_291_X4,
datad => lt6);
\SWAP_UN61_XYIN_I_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => UN61_XYIN_I(5),
dataa => y_in_draw_0,
datab => lt5,
datac => X1_E0_0_N_8_I_0_X4_0,
datad => lt6);
\SWAP_UN61_XYIN_I_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => UN61_XYIN_I(11),
dataa => y_in_draw_0,
datab => lt5,
datac => X1_E0_0_N_8_I_0_X4_0,
datad => lt6);
XBIAS_I_Z103: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011010010110")
port map (
combout => XBIAS_I,
dataa => lt5,
datab => lt5_0,
cin => lt6_cout);
D_O: draw_octant port map (
y1_5 => Y1(5),
y1_4 => Y1(4),
y1_3 => Y1(3),
y1_2 => Y1(2),
y1_1 => Y1(1),
y1_0 => Y1(0),
x1_5 => X1(5),
x1_4 => X1(4),
x1_3 => X1(3),
x1_2 => X1(2),
x1_1 => X1(1),
x1_0 => X1(0),
un61_xyin_i_6 => UN61_XYIN_I(6),
un61_xyin_i_8 => UN61_XYIN_I(8),
un61_xyin_i_9 => UN61_XYIN_I(9),
un61_xyin_i_10 => UN61_XYIN_I(10),
un61_xyin_i_11 => UN61_XYIN_I(11),
un61_xyin_i_0 => UN61_XYIN_I(0),
un61_xyin_i_1 => UN61_XYIN_I(1),
un61_xyin_i_2 => UN61_XYIN_I(2),
un61_xyin_i_3 => UN61_XYIN_I(3),
un61_xyin_i_4 => UN61_XYIN_I(4),
un61_xyin_i_5 => UN61_XYIN_I(5),
rcb_state_i_0 => rcb_state_i_0,
state_1 => state_1,
state_0 => state_0,
xyoldReg_5 => xyoldReg_5,
xyoldReg_0 => xyoldReg_0,
xyoldReg_1 => xyoldReg_1,
xyoldReg_4 => xyoldReg_4,
xyoldReg_2 => xyoldReg_2,
xyoldReg_3 => xyoldReg_3,
xynewReg_5 => xynewReg_5,
xynewReg_0 => xynewReg_0,
xynewReg_1 => xynewReg_1,
xynewReg_4 => xynewReg_4,
xynewReg_2 => xynewReg_2,
xynewReg_3 => xynewReg_3,
x_in_draw_0 => x_in_draw_3,
clk_c => clk_c,
x1_e0_0_N_8_i_0_x4_0 => X1_E0_0_N_8_I_0_X4_0,
lt5 => lt5_0,
x1_n1_0_151_x4_0 => X1_N1_0_151_X4_0,
lt5_0 => lt5,
x1_n2_0_193_x4 => X1_N2_0_193_X4,
x1_n5_0_341_x4 => X1_N5_0_341_X4,
x1_n3_0_241_x4 => X1_N3_0_241_X4,
x1_n4_0_291_x4 => X1_N4_0_291_X4,
lt6 => lt6,
un3_x1 => un3_x1,
xbias_i => XBIAS_I);
GND <= '0';
VCC <= '1';
end beh;

--
library ieee, work;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.components.all;
use work.cycloneii_components.all;

entity rcb is
port(
rcb_state_i_0 :  out std_logic;
y_out_0 :  in std_logic;
y_out_1 :  in std_logic;
y_out_2 :  in std_logic;
y_out_3 :  in std_logic;
y_out_4 :  in std_logic;
y_out_5 :  in std_logic;
x_out_0 :  in std_logic;
x_out_1 :  in std_logic;
x_out_2 :  in std_logic;
x_out_3 :  in std_logic;
x_out_4 :  in std_logic;
x_out_5 :  in std_logic;
rcbcmd_0_0 :  in std_logic;
penReg_0 :  in std_logic;
penReg_1 :  in std_logic;
rcbcmd_i_o4_0 :  in std_logic;
state_i_0 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_13 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_0 :  in std_logic;
reg_addr_7 :  out std_logic;
reg_addr_6 :  out std_logic;
reg_addr_5 :  out std_logic;
reg_addr_4 :  out std_logic;
reg_addr_3 :  out std_logic;
reg_addr_2 :  out std_logic;
reg_addr_1 :  out std_logic;
reg_addr_0 :  out std_logic;
vdin_1_iv_0_m2_x_14 :  out std_logic;
vdin_1_iv_0_m2_x_15 :  out std_logic;
vdin_1_iv_0_m2_x_6 :  out std_logic;
vdin_1_iv_0_m2_x_7 :  out std_logic;
vdin_1_iv_0_m2_x_8 :  out std_logic;
vdin_1_iv_0_m2_x_9 :  out std_logic;
vdin_1_iv_0_m2_x_10 :  out std_logic;
vdin_1_iv_0_m2_x_11 :  out std_logic;
vdin_1_iv_0_m2_x_12 :  out std_logic;
vdin_1_iv_0_m2_x_13 :  out std_logic;
vdin_1_iv_0_m2_x_0 :  out std_logic;
vdin_1_iv_0_m2_x_1 :  out std_logic;
vdin_1_iv_0_m2_x_2 :  out std_logic;
vdin_1_iv_0_m2_x_3 :  out std_logic;
vdin_1_iv_0_m2_x_4 :  out std_logic;
vdin_1_iv_0_m2_x_5 :  out std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
dav_c :  in std_logic;
finish :  out std_logic;
N_180_i_0_a2 :  out std_logic;
startcmd_i :  in std_logic);
end rcb;

architecture beh of rcb is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal Y_CLEAR_REG : std_logic_vector(5 downto 0);
signal Y_CLEAR_REG_9 : std_logic_vector(4 downto 2);
signal X_CLEAR_REG : std_logic_vector(5 downto 0);
signal RCB_STATE : std_logic_vector(4 downto 0);
signal RCB_FLUSH_DOWNCOUNT : std_logic_vector(4 downto 0);
signal X_CLEAR_START : std_logic_vector(5 downto 0);
signal X_CLEAR_REG_10_0 : std_logic_vector(5 to 5);
signal X_CLEAR_REG_10 : std_logic_vector(4 downto 2);
signal WORD_REG_OUT : std_logic_vector(7 downto 0);
signal Y_IN_I_M2 : std_logic_vector(5 downto 1);
signal PIXOP_REG_15 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_15 : std_logic_vector(1 downto 0);
signal PIXOP_REG_14 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_14 : std_logic_vector(1 downto 0);
signal PIXOP_REG_13 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_13 : std_logic_vector(1 downto 0);
signal PIXOP_REG_12 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_12 : std_logic_vector(1 downto 0);
signal PIXOP_REG_11 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_11 : std_logic_vector(1 downto 0);
signal PIXOP_REG_10 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_10 : std_logic_vector(1 downto 0);
signal PIXOP_REG_9 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_9 : std_logic_vector(1 downto 0);
signal PIXOP_REG_8 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_8 : std_logic_vector(1 downto 0);
signal PIXOP_REG_7 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_7 : std_logic_vector(1 downto 0);
signal PIXOP_REG_6 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_6 : std_logic_vector(1 downto 0);
signal PIXOP_REG_5 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_5 : std_logic_vector(1 downto 0);
signal PIXOP_REG_4 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_4 : std_logic_vector(1 downto 0);
signal PIXOP_REG_3 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_3 : std_logic_vector(1 downto 0);
signal PIXOP_REG_2 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_2 : std_logic_vector(1 downto 0);
signal PIXOP_REG_1 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_1 : std_logic_vector(1 downto 0);
signal PIXOP_REG_0 : std_logic_vector(1 downto 0);
signal RDOUT_PAR_0 : std_logic_vector(1 downto 0);
signal Y_IN : std_logic_vector(0 to 0);
signal RCB_STATE_NSS_I_0_0_A2_5 : std_logic_vector(0 to 0);
signal Y_CLEAR_REG_E5_0_G4 : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X : std_logic ;
signal Y_CLEAR_REG_E5_0_G1_X : std_logic ;
signal Y_CLEAR_REG_E4_0_G1 : std_logic ;
signal Y_CLEAR_REG_E3_0_G1 : std_logic ;
signal Y_CLEAR_REG_E2_0_G1 : std_logic ;
signal Y_CLEAR_REG_N1_I_M2 : std_logic ;
signal Y_CLEAR_REG_E1_0_G0_I_O4_X : std_logic ;
signal Y_CLEAR_REG_E0_0_G0X : std_logic ;
signal X_CLEAR_REG_E5_0_N_4_0_I_0_532_M2 : std_logic ;
signal UN1_X_CLEAR_REG_1_SQMUXA_0_X : std_logic ;
signal X_CLEAR_REG_E4_0_G3 : std_logic ;
signal X_CLEAR_REG_E3_0_G3 : std_logic ;
signal X_CLEAR_REG_E2_0_G3 : std_logic ;
signal X_CLEAR_REG_E1_0_G3_0_494 : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457 : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_0__G0_0\ : std_logic ;
signal \RCB_STATE_SRSTS_I_I_A2_0_1__G0_0_A2\ : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_2__G2\ : std_logic ;
signal \RCB_STATE_SRSTS_0_0_0_3__G0_0\ : std_logic ;
signal \RCB_STATE_SRSTS_I_I_0_4__G0_0\ : std_logic ;
signal \RCB_STATE_NSS_I_0_0_0_0__G0\ : std_logic ;
signal N_428_I_0_G0 : std_logic ;
signal N_427_I_0_G0 : std_logic ;
signal N_426_I_0_G0 : std_logic ;
signal N_425_I_0_G0 : std_logic ;
signal \RCB_FLUSH_DOWNCOUNT_7_0_A2_1_0__G0\ : std_logic ;
signal X_CLEAR_REG_E1_0_G3_0_494_M5_REP1 : std_logic ;
signal \X_CLEAR_START_2_0_0__G3\ : std_logic ;
signal \WORD_REG_OUT_2_0_0__G0_I_0_X\ : std_logic ;
signal \WORD_REG_OUT_2_0_6__G4\ : std_logic ;
signal \WORD_REG_OUT_2_0_5__G4\ : std_logic ;
signal \WORD_REG_OUT_2_0_4__G4\ : std_logic ;
signal \WORD_REG_OUT_2_0_3__G4\ : std_logic ;
signal \WORD_REG_OUT_2_0_2__G4\ : std_logic ;
signal \WORD_REG_OUT_2_0_1__G4\ : std_logic ;
signal \WORD_REG_OUT_2_0_0__G4\ : std_logic ;
signal \PIXOP_REG_0_1_0__G0_0_X\ : std_logic ;
signal DIFF_Y_ADD0 : std_logic ;
signal DIFF_Y_CARRY_0 : std_logic ;
signal DIFF_Y_ADD0_START_COUT : std_logic ;
signal DIFF_Y_ADD1 : std_logic ;
signal DIFF_Y_CARRY_1 : std_logic ;
signal DIFF_Y_ADD2 : std_logic ;
signal DIFF_Y_CARRY_2 : std_logic ;
signal DIFF_Y_ADD3 : std_logic ;
signal DIFF_Y_CARRY_3 : std_logic ;
signal DIFF_Y_ADD4 : std_logic ;
signal DIFF_Y_CARRY_4 : std_logic ;
signal DIFF_Y_ADD5 : std_logic ;
signal DIFF_X_ADD0 : std_logic ;
signal DIFF_X_CARRY_0 : std_logic ;
signal DIFF_X_ADD0_START_COUT : std_logic ;
signal DIFF_X_ADD1 : std_logic ;
signal DIFF_X_CARRY_1 : std_logic ;
signal DIFF_X_ADD2 : std_logic ;
signal DIFF_X_CARRY_2 : std_logic ;
signal DIFF_X_ADD3 : std_logic ;
signal DIFF_X_CARRY_3 : std_logic ;
signal DIFF_X_ADD4 : std_logic ;
signal DIFF_X_CARRY_4 : std_logic ;
signal DIFF_X_ADD5 : std_logic ;
signal RCB_FLUSH_DOWNCOUNT_2_C1 : std_logic ;
signal X_CLEAR_REG_C1 : std_logic ;
signal Y_CLEAR_REG_C2 : std_logic ;
signal X_CLEAR_REG_C2 : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457_O5_0 : std_logic ;
signal EQUAL_BLOCK_OUT4_NE : std_logic ;
signal UN19_EQUAL_BLOCK_OUT : std_logic ;
signal X_CLEAR_REG_E5_0_N_4_0_I_0_532_O4_0 : std_logic ;
signal NSTATE3_0_A2_3 : std_logic ;
signal UN19_EQUAL_BLOCK_OUT_2 : std_logic ;
signal X_CLEAR_REG_0_SQMUXA_2 : std_logic ;
signal X_CLEAR_REG_E1_0_G3_0_494_A5_0_0 : std_logic ;
signal Y_CLEAR_REG_145_1 : std_logic ;
signal NSTATE3_0_A2 : std_logic ;
signal X_CLEAR_REG_133_1 : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457_A5_0_1 : std_logic ;
signal X_CLEAR_REG_0_SQMUXA_4 : std_logic ;
signal Y_CLEAR_REG_1_SQMUXA_1 : std_logic ;
signal X_CLEAR_REG_E1_0_G3_0_494_M5 : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457_O5 : std_logic ;
signal Y_CLEAR_REG_E5_0_G2 : std_logic ;
signal X_CLEAR_REG_E1_0_G3_0_494_A5_2 : std_logic ;
signal X_CLEAR_REG_E1_0_G3_0_494_A5_2_0_X : std_logic ;
signal X_CLEAR_REG_E5_0_N_4_0_I_0_532_X4 : std_logic ;
signal CLEAR_RUN_1_SQMUXA_0_A3 : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457_562_A : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457_562 : std_logic ;
signal X_CLEAR_REG_E1_0_G3_0_494_A5 : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457_A5 : std_logic ;
signal EQUAL_BLOCK_OUT4_NE_0 : std_logic ;
signal EQUAL_BLOCK_OUT4_NE_1 : std_logic ;
signal EQUAL_BLOCK_OUT4_NE_2 : std_logic ;
signal EQUAL_BLOCK_OUT4_NE_3 : std_logic ;
signal X_CLEAR_REG_E1_0_G3_0_494_A : std_logic ;
signal DELAY_I_0_RNIHDMC : std_logic ;
signal VCC : std_logic ;
signal N_93 : std_logic ;
signal N_92 : std_logic ;
signal N_91 : std_logic ;
signal N_90 : std_logic ;
signal N_89 : std_logic ;
signal N_88 : std_logic ;
signal DELAY_I_0_O2 : std_logic ;
signal GND : std_logic ;
signal RCB_STATE_I_54 : std_logic ;
signal X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X_I : std_logic ;
component pix_word_cache
port(
rdout_par_15_1 :  out std_logic;
rdout_par_15_0 :  out std_logic;
rdout_par_14_1 :  out std_logic;
rdout_par_14_0 :  out std_logic;
rdout_par_13_1 :  out std_logic;
rdout_par_13_0 :  out std_logic;
rdout_par_12_1 :  out std_logic;
rdout_par_12_0 :  out std_logic;
rdout_par_11_1 :  out std_logic;
rdout_par_11_0 :  out std_logic;
rdout_par_10_1 :  out std_logic;
rdout_par_10_0 :  out std_logic;
rdout_par_9_1 :  out std_logic;
rdout_par_9_0 :  out std_logic;
rdout_par_8_1 :  out std_logic;
rdout_par_8_0 :  out std_logic;
rdout_par_7_1 :  out std_logic;
rdout_par_7_0 :  out std_logic;
rdout_par_6_1 :  out std_logic;
rdout_par_6_0 :  out std_logic;
rdout_par_5_1 :  out std_logic;
rdout_par_5_0 :  out std_logic;
rdout_par_4_1 :  out std_logic;
rdout_par_4_0 :  out std_logic;
rdout_par_3_1 :  out std_logic;
rdout_par_3_0 :  out std_logic;
rdout_par_2_1 :  out std_logic;
rdout_par_2_0 :  out std_logic;
rdout_par_1_1 :  out std_logic;
rdout_par_1_0 :  out std_logic;
rdout_par_0_1 :  out std_logic;
rdout_par_0_0 :  out std_logic;
rcb_state_3 :  in std_logic;
rcb_state_0 :  in std_logic;
rcb_state_1 :  in std_logic;
y_in_i_m2_0 :  in std_logic;
y_in_0 :  in std_logic;
penReg_0 :  in std_logic;
penReg_1 :  in std_logic;
rcbcmd_i_o4_0 :  in std_logic;
rcb_state_i_0 :  in std_logic;
state_i_0 :  in std_logic;
rcb_state_nss_i_0_0_a2_5_0 :  in std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
delay_i_0_RNIHDMC :  in std_logic;
equal_block_out4_NE :  in std_logic;
x_clear_reg_e1_0_g3_0_494_m5_rep1 :  in std_logic;
\x_clear_start_2_0_0__g3\ :  in std_logic;
x_clear_reg_e1_0_g3_0_494_m5 :  in std_logic;
delay_i_0_o2 :  in std_logic;
dav_c :  in std_logic;
finish :  out std_logic  );
end component;
component pix_write_cache
port(
vdout_c_15 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_13 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_0 :  in std_logic;
reg_addr_7 :  out std_logic;
reg_addr_6 :  out std_logic;
reg_addr_5 :  out std_logic;
reg_addr_4 :  out std_logic;
reg_addr_3 :  out std_logic;
reg_addr_2 :  out std_logic;
reg_addr_1 :  out std_logic;
reg_addr_0 :  out std_logic;
word_reg_out_7 :  in std_logic;
word_reg_out_6 :  in std_logic;
word_reg_out_5 :  in std_logic;
word_reg_out_4 :  in std_logic;
word_reg_out_3 :  in std_logic;
word_reg_out_2 :  in std_logic;
word_reg_out_1 :  in std_logic;
word_reg_out_0 :  in std_logic;
rcb_state_i_0 :  in std_logic;
rcb_state_3 :  in std_logic;
rcb_state_2 :  in std_logic;
rcb_state_0 :  in std_logic;
rcb_state_4 :  in std_logic;
rcb_state_1 :  in std_logic;
rcbcmd_0_0 :  in std_logic;
y_in_i_m2_0 :  out std_logic;
y_in_i_m2_4 :  out std_logic;
y_out_0 :  in std_logic;
y_out_4 :  in std_logic;
penReg_1 :  in std_logic;
penReg_0 :  in std_logic;
rcbcmd_i_o4_0 :  in std_logic;
rcb_state_nss_i_0_0_a2_5_0 :  out std_logic;
rcb_flush_downcount_4 :  in std_logic;
rcb_flush_downcount_0 :  in std_logic;
rcb_flush_downcount_1 :  in std_logic;
rcb_flush_downcount_2 :  in std_logic;
rcb_flush_downcount_3 :  in std_logic;
pixop_reg_14_0 :  in std_logic;
pixop_reg_14_1 :  in std_logic;
pixop_reg_15_0 :  in std_logic;
pixop_reg_15_1 :  in std_logic;
pixop_reg_6_0 :  in std_logic;
pixop_reg_6_1 :  in std_logic;
pixop_reg_7_0 :  in std_logic;
pixop_reg_7_1 :  in std_logic;
pixop_reg_8_0 :  in std_logic;
pixop_reg_8_1 :  in std_logic;
pixop_reg_9_0 :  in std_logic;
pixop_reg_9_1 :  in std_logic;
pixop_reg_10_0 :  in std_logic;
pixop_reg_10_1 :  in std_logic;
pixop_reg_11_0 :  in std_logic;
pixop_reg_11_1 :  in std_logic;
pixop_reg_12_0 :  in std_logic;
pixop_reg_12_1 :  in std_logic;
pixop_reg_13_0 :  in std_logic;
pixop_reg_13_1 :  in std_logic;
pixop_reg_0_0 :  in std_logic;
pixop_reg_0_1 :  in std_logic;
pixop_reg_1_0 :  in std_logic;
pixop_reg_1_1 :  in std_logic;
pixop_reg_2_0 :  in std_logic;
pixop_reg_2_1 :  in std_logic;
pixop_reg_3_0 :  in std_logic;
pixop_reg_3_1 :  in std_logic;
pixop_reg_4_0 :  in std_logic;
pixop_reg_4_1 :  in std_logic;
vdin_1_iv_0_m2_x_14 :  out std_logic;
vdin_1_iv_0_m2_x_15 :  out std_logic;
vdin_1_iv_0_m2_x_6 :  out std_logic;
vdin_1_iv_0_m2_x_7 :  out std_logic;
vdin_1_iv_0_m2_x_8 :  out std_logic;
vdin_1_iv_0_m2_x_9 :  out std_logic;
vdin_1_iv_0_m2_x_10 :  out std_logic;
vdin_1_iv_0_m2_x_11 :  out std_logic;
vdin_1_iv_0_m2_x_12 :  out std_logic;
vdin_1_iv_0_m2_x_13 :  out std_logic;
vdin_1_iv_0_m2_x_0 :  out std_logic;
vdin_1_iv_0_m2_x_1 :  out std_logic;
vdin_1_iv_0_m2_x_2 :  out std_logic;
vdin_1_iv_0_m2_x_3 :  out std_logic;
vdin_1_iv_0_m2_x_4 :  out std_logic;
vdin_1_iv_0_m2_x_5 :  out std_logic;
pixop_reg_5_0 :  in std_logic;
pixop_reg_5_1 :  in std_logic;
y_clear_reg_1 :  in std_logic;
y_clear_reg_5 :  in std_logic;
y_clear_reg_0 :  in std_logic;
delay_i_0_RNIHDMC :  out std_logic;
clk_c :  in std_logic;
delay_i_0_o2 :  out std_logic;
N_180_i_0_a2 :  out std_logic;
\rcb_state_srsts_0_0_0_2__g2\ :  out std_logic;
reset_c :  in std_logic;
equal_block_out4_NE :  in std_logic;
x_clear_reg_0_sqmuxa_4 :  in std_logic;
un19_equal_block_out :  in std_logic;
nstate3_0_a2_3 :  in std_logic;
startcmd_i :  in std_logic;
\rcb_state_srsts_i_i_a2_0_1__g0_0_a2\ :  out std_logic;
\rcb_flush_downcount_7_0_a2_1_0__g0\ :  out std_logic;
nstate3_0_a2 :  in std_logic;
N_425_i_0_g0 :  out std_logic;
N_427_i_0_g0 :  out std_logic;
rcb_flush_downcount_2_c1 :  in std_logic;
N_428_i_0_g0 :  out std_logic;
N_426_i_0_g0 :  out std_logic;
\rcb_state_srsts_i_i_0_4__g0_0\ :  out std_logic;
\rcb_state_srsts_0_0_0_0__g0_0\ :  out std_logic;
\rcb_state_srsts_0_0_0_3__g0_0\ :  out std_logic;
\rcb_state_nss_i_0_0_0_0__g0\ :  out std_logic;
\word_reg_out_2_0_0__g0_i_0_x\ :  out std_logic;
y_clear_reg_n1_i_m2 :  out std_logic  );
end component;
begin
\R1_Y_CLEAR_REG_5_\: cycloneii_lcell_ff port map (
regout => Y_CLEAR_REG(5),
datain => Y_CLEAR_REG_E5_0_G4,
clk => clk_c,
sload => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X_I,
sdata => Y_CLEAR_REG_E5_0_G1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\R1_Y_CLEAR_REG_4_\: cycloneii_lcell_ff port map (
regout => Y_CLEAR_REG(4),
datain => Y_CLEAR_REG_E4_0_G1,
clk => clk_c,
sload => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X_I,
sdata => Y_CLEAR_REG_9(4),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\R1_Y_CLEAR_REG_3_\: cycloneii_lcell_ff port map (
regout => Y_CLEAR_REG(3),
datain => Y_CLEAR_REG_E3_0_G1,
clk => clk_c,
sload => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X_I,
sdata => Y_CLEAR_REG_9(3),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\R1_Y_CLEAR_REG_2_\: cycloneii_lcell_ff port map (
regout => Y_CLEAR_REG(2),
datain => Y_CLEAR_REG_E2_0_G1,
clk => clk_c,
sload => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X_I,
sdata => Y_CLEAR_REG_9(2),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\R1_Y_CLEAR_REG_1_\: cycloneii_lcell_ff port map (
regout => Y_CLEAR_REG(1),
datain => Y_CLEAR_REG_N1_I_M2,
clk => clk_c,
sclr => reset_c,
ena => Y_CLEAR_REG_E1_0_G0_I_O4_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_Y_CLEAR_REG_0_\: cycloneii_lcell_ff port map (
regout => Y_CLEAR_REG(0),
datain => Y_CLEAR_REG_E0_0_G0X,
clk => clk_c,
ena => Y_CLEAR_REG_E1_0_G0_I_O4_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X_CLEAR_REG_5_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_REG(5),
datain => X_CLEAR_REG_E5_0_N_4_0_I_0_532_M2,
clk => clk_c,
sclr => reset_c,
ena => UN1_X_CLEAR_REG_1_SQMUXA_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_X_CLEAR_REG_4_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_REG(4),
datain => X_CLEAR_REG_E4_0_G3,
clk => clk_c,
ena => UN1_X_CLEAR_REG_1_SQMUXA_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X_CLEAR_REG_3_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_REG(3),
datain => X_CLEAR_REG_E3_0_G3,
clk => clk_c,
ena => UN1_X_CLEAR_REG_1_SQMUXA_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X_CLEAR_REG_2_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_REG(2),
datain => X_CLEAR_REG_E2_0_G3,
clk => clk_c,
ena => UN1_X_CLEAR_REG_1_SQMUXA_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X_CLEAR_REG_1_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_REG(1),
datain => X_CLEAR_REG_E1_0_G3_0_494,
clk => clk_c,
ena => UN1_X_CLEAR_REG_1_SQMUXA_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X_CLEAR_REG_0_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_REG(0),
datain => X_CLEAR_REG_E0_0_G3_0_457,
clk => clk_c,
ena => UN1_X_CLEAR_REG_1_SQMUXA_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_STATE_0_\: cycloneii_lcell_ff port map (
regout => RCB_STATE(0),
datain => \RCB_STATE_SRSTS_0_0_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_STATE_1_\: cycloneii_lcell_ff port map (
regout => RCB_STATE(1),
datain => \RCB_STATE_SRSTS_I_I_A2_0_1__G0_0_A2\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_STATE_2_\: cycloneii_lcell_ff port map (
regout => RCB_STATE(2),
datain => \RCB_STATE_SRSTS_0_0_0_2__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_STATE_3_\: cycloneii_lcell_ff port map (
regout => RCB_STATE(3),
datain => \RCB_STATE_SRSTS_0_0_0_3__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_STATE_4_\: cycloneii_lcell_ff port map (
regout => RCB_STATE(4),
datain => \RCB_STATE_SRSTS_I_I_0_4__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_STATE_I_5_\: cycloneii_lcell_ff port map (
regout => RCB_STATE_I_54,
datain => \RCB_STATE_NSS_I_0_0_0_0__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FLUSH_DOWNCOUNT_4_\: cycloneii_lcell_ff port map (
regout => RCB_FLUSH_DOWNCOUNT(4),
datain => N_428_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FLUSH_DOWNCOUNT_3_\: cycloneii_lcell_ff port map (
regout => RCB_FLUSH_DOWNCOUNT(3),
datain => N_427_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FLUSH_DOWNCOUNT_2_\: cycloneii_lcell_ff port map (
regout => RCB_FLUSH_DOWNCOUNT(2),
datain => N_426_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FLUSH_DOWNCOUNT_1_\: cycloneii_lcell_ff port map (
regout => RCB_FLUSH_DOWNCOUNT(1),
datain => N_425_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FLUSH_DOWNCOUNT_0_\: cycloneii_lcell_ff port map (
regout => RCB_FLUSH_DOWNCOUNT(0),
datain => \RCB_FLUSH_DOWNCOUNT_7_0_A2_1_0__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_X_CLEAR_START_5_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_START(5),
datain => X_CLEAR_REG_10_0(5),
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_X_CLEAR_START_4_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_START(4),
datain => X_CLEAR_REG_10(4),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_X_CLEAR_START_3_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_START(3),
datain => X_CLEAR_REG_10(3),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_X_CLEAR_START_2_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_START(2),
datain => X_CLEAR_REG_10(2),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_X_CLEAR_START_1_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_START(1),
datain => X_CLEAR_REG_E1_0_G3_0_494_M5_REP1,
clk => clk_c,
sclr => reset_c,
ena => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_X_CLEAR_START_0_\: cycloneii_lcell_ff port map (
regout => X_CLEAR_START(0),
datain => \X_CLEAR_START_2_0_0__G3\,
clk => clk_c,
sclr => reset_c,
ena => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_WORD_REG_OUT_7_\: cycloneii_lcell_ff port map (
regout => WORD_REG_OUT(7),
datain => Y_IN_I_M2(5),
clk => clk_c,
sclr => reset_c,
ena => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_WORD_REG_OUT_6_\: cycloneii_lcell_ff port map (
regout => WORD_REG_OUT(6),
datain => \WORD_REG_OUT_2_0_6__G4\,
clk => clk_c,
sclr => reset_c,
ena => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_WORD_REG_OUT_5_\: cycloneii_lcell_ff port map (
regout => WORD_REG_OUT(5),
datain => \WORD_REG_OUT_2_0_5__G4\,
clk => clk_c,
sclr => reset_c,
ena => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_WORD_REG_OUT_4_\: cycloneii_lcell_ff port map (
regout => WORD_REG_OUT(4),
datain => \WORD_REG_OUT_2_0_4__G4\,
clk => clk_c,
sclr => reset_c,
ena => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_WORD_REG_OUT_3_\: cycloneii_lcell_ff port map (
regout => WORD_REG_OUT(3),
datain => \WORD_REG_OUT_2_0_3__G4\,
clk => clk_c,
sclr => reset_c,
ena => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_WORD_REG_OUT_2_\: cycloneii_lcell_ff port map (
regout => WORD_REG_OUT(2),
datain => \WORD_REG_OUT_2_0_2__G4\,
clk => clk_c,
sclr => reset_c,
ena => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_WORD_REG_OUT_1_\: cycloneii_lcell_ff port map (
regout => WORD_REG_OUT(1),
datain => \WORD_REG_OUT_2_0_1__G4\,
clk => clk_c,
sclr => reset_c,
ena => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_WORD_REG_OUT_0_\: cycloneii_lcell_ff port map (
regout => WORD_REG_OUT(0),
datain => \WORD_REG_OUT_2_0_0__G4\,
clk => clk_c,
sclr => reset_c,
ena => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_15_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_15(1),
datain => RDOUT_PAR_15(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_15_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_15(0),
datain => RDOUT_PAR_15(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_14_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_14(1),
datain => RDOUT_PAR_14(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_14_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_14(0),
datain => RDOUT_PAR_14(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_13_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_13(1),
datain => RDOUT_PAR_13(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_13_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_13(0),
datain => RDOUT_PAR_13(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_12_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_12(1),
datain => RDOUT_PAR_12(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_12_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_12(0),
datain => RDOUT_PAR_12(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_11_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_11(1),
datain => RDOUT_PAR_11(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_11_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_11(0),
datain => RDOUT_PAR_11(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_10_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_10(1),
datain => RDOUT_PAR_10(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_10_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_10(0),
datain => RDOUT_PAR_10(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_9_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_9(1),
datain => RDOUT_PAR_9(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_9_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_9(0),
datain => RDOUT_PAR_9(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_8_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_8(1),
datain => RDOUT_PAR_8(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_8_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_8(0),
datain => RDOUT_PAR_8(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_7_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_7(1),
datain => RDOUT_PAR_7(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_7_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_7(0),
datain => RDOUT_PAR_7(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_6_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_6(1),
datain => RDOUT_PAR_6(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_6_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_6(0),
datain => RDOUT_PAR_6(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_5_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_5(1),
datain => RDOUT_PAR_5(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_5_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_5(0),
datain => RDOUT_PAR_5(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_4_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_4(1),
datain => RDOUT_PAR_4(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_4_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_4(0),
datain => RDOUT_PAR_4(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_3_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_3(1),
datain => RDOUT_PAR_3(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_3_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_3(0),
datain => RDOUT_PAR_3(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_2_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_2(1),
datain => RDOUT_PAR_2(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_2_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_2(0),
datain => RDOUT_PAR_2(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_1_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_1(1),
datain => RDOUT_PAR_1(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_1_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_1(0),
datain => RDOUT_PAR_1(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_0_1_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_0(1),
datain => RDOUT_PAR_0(1),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXOP_REG_0_0_\: cycloneii_lcell_ff port map (
regout => PIXOP_REG_0(0),
datain => RDOUT_PAR_0(0),
clk => clk_c,
sclr => reset_c,
ena => \PIXOP_REG_0_1_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
DIFF_Y_ADD0_Z396: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_Y_ADD0,
cout => DIFF_Y_CARRY_0,
dataa => Y_CLEAR_REG(0),
datab => y_out_0,
cin => DIFF_Y_ADD0_START_COUT);
DIFF_Y_ADD1_Z397: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_Y_ADD1,
cout => DIFF_Y_CARRY_1,
dataa => Y_CLEAR_REG(1),
datab => y_out_1,
cin => DIFF_Y_CARRY_0);
DIFF_Y_ADD2_Z398: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_Y_ADD2,
cout => DIFF_Y_CARRY_2,
dataa => Y_CLEAR_REG(2),
datab => y_out_2,
cin => DIFF_Y_CARRY_1);
DIFF_Y_ADD3_Z399: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_Y_ADD3,
cout => DIFF_Y_CARRY_3,
dataa => Y_CLEAR_REG(3),
datab => y_out_3,
cin => DIFF_Y_CARRY_2);
DIFF_Y_ADD4_Z400: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_Y_ADD4,
cout => DIFF_Y_CARRY_4,
dataa => Y_CLEAR_REG(4),
datab => y_out_4,
cin => DIFF_Y_CARRY_3);
DIFF_Y_ADD5_Z401: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => DIFF_Y_ADD5,
dataa => Y_CLEAR_REG(5),
datab => y_out_5,
cin => DIFF_Y_CARRY_4);
DIFF_X_ADD0_Z402: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_X_ADD0,
cout => DIFF_X_CARRY_0,
dataa => X_CLEAR_REG(0),
datab => x_out_0,
cin => DIFF_X_ADD0_START_COUT);
DIFF_X_ADD1_Z403: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_X_ADD1,
cout => DIFF_X_CARRY_1,
dataa => X_CLEAR_REG(1),
datab => x_out_1,
cin => DIFF_X_CARRY_0);
DIFF_X_ADD2_Z404: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_X_ADD2,
cout => DIFF_X_CARRY_2,
dataa => X_CLEAR_REG(2),
datab => x_out_2,
cin => DIFF_X_CARRY_1);
DIFF_X_ADD3_Z405: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_X_ADD3,
cout => DIFF_X_CARRY_3,
dataa => X_CLEAR_REG(3),
datab => x_out_3,
cin => DIFF_X_CARRY_2);
DIFF_X_ADD4_Z406: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => DIFF_X_ADD4,
cout => DIFF_X_CARRY_4,
dataa => X_CLEAR_REG(4),
datab => x_out_4,
cin => DIFF_X_CARRY_3);
DIFF_X_ADD5_Z407: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => DIFF_X_ADD5,
dataa => X_CLEAR_REG(5),
datab => x_out_5,
cin => DIFF_X_CARRY_4);
RCB_FLUSH_DOWNCOUNT_2_C1_Z408: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => RCB_FLUSH_DOWNCOUNT_2_C1,
dataa => RCB_FLUSH_DOWNCOUNT(1),
datab => RCB_FLUSH_DOWNCOUNT(0));
R1_X_CLEAR_REG_C1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => X_CLEAR_REG_C1,
dataa => X_CLEAR_REG(1),
datab => X_CLEAR_REG(0));
R1_Y_CLEAR_REG_C2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => Y_CLEAR_REG_C2,
dataa => Y_CLEAR_REG(0),
datab => Y_CLEAR_REG(1),
datac => Y_CLEAR_REG(2));
R1_X_CLEAR_REG_C2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => X_CLEAR_REG_C2,
dataa => X_CLEAR_REG(0),
datab => X_CLEAR_REG(1),
datac => X_CLEAR_REG(2));
\R1_X_CLEAR_REG_RNO_5_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101111110011")
port map (
combout => X_CLEAR_REG_E0_0_G3_0_457_O5_0,
dataa => RCB_STATE(4),
datab => RCB_STATE(0),
datac => EQUAL_BLOCK_OUT4_NE,
datad => UN19_EQUAL_BLOCK_OUT);
\R1_X_CLEAR_REG_RNO_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => X_CLEAR_REG_E5_0_N_4_0_I_0_532_O4_0,
dataa => RCB_STATE(0),
datab => EQUAL_BLOCK_OUT4_NE,
datac => UN19_EQUAL_BLOCK_OUT);
C1_OP_EQ_NSTATE3_0_A2_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => NSTATE3_0_A2_3,
dataa => RCB_FLUSH_DOWNCOUNT(1),
datab => RCB_FLUSH_DOWNCOUNT(2),
datac => RCB_FLUSH_DOWNCOUNT(0),
datad => RCB_FLUSH_DOWNCOUNT(3));
C1_OP_EQ_UN19_EQUAL_BLOCK_OUT_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => UN19_EQUAL_BLOCK_OUT_2,
dataa => DIFF_X_ADD0,
datab => DIFF_X_ADD1,
datac => DIFF_X_ADD4);
X_CLEAR_REG_0_SQMUXA_2_Z416: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => X_CLEAR_REG_0_SQMUXA_2,
dataa => DIFF_Y_ADD0,
datab => DIFF_Y_ADD1,
datac => DIFF_Y_ADD4);
\R1_X_CLEAR_REG_RNO_4_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000101000")
port map (
combout => X_CLEAR_REG_E1_0_G3_0_494_A5_0_0,
dataa => RCB_STATE(0),
datab => X_CLEAR_REG(0),
datac => X_CLEAR_REG(1),
datad => EQUAL_BLOCK_OUT4_NE);
R1_Y_CLEAR_REG_145_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => Y_CLEAR_REG_145_1,
dataa => Y_CLEAR_REG(0),
datab => Y_CLEAR_REG(1),
datac => Y_CLEAR_REG(2),
datad => Y_CLEAR_REG(3));
C1_OP_EQ_NSTATE3_0_A2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => NSTATE3_0_A2,
dataa => RCB_FLUSH_DOWNCOUNT(4),
datab => NSTATE3_0_A2_3);
R1_X_CLEAR_REG_133_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => X_CLEAR_REG_133_1,
dataa => X_CLEAR_REG(0),
datab => X_CLEAR_REG(1),
datac => X_CLEAR_REG(2),
datad => X_CLEAR_REG(3));
C1_OP_EQ_UN19_EQUAL_BLOCK_OUT: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => UN19_EQUAL_BLOCK_OUT,
dataa => DIFF_X_ADD2,
datab => DIFF_X_ADD3,
datac => DIFF_X_ADD5,
datad => UN19_EQUAL_BLOCK_OUT_2);
\R1_X_CLEAR_REG_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000100")
port map (
combout => X_CLEAR_REG_E0_0_G3_0_457_A5_0_1,
dataa => reset_c,
datab => RCB_STATE(4),
datac => X_CLEAR_REG(0),
datad => rcbcmd_0_0);
X_CLEAR_REG_0_SQMUXA_4_Z423: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => X_CLEAR_REG_0_SQMUXA_4,
dataa => DIFF_Y_ADD2,
datab => DIFF_Y_ADD3,
datac => DIFF_Y_ADD5,
datad => X_CLEAR_REG_0_SQMUXA_2);
\R1_Y_CLEAR_REG_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => Y_CLEAR_REG_E3_0_G1,
dataa => Y_CLEAR_REG(3),
datab => Y_CLEAR_REG_C2,
datac => Y_CLEAR_REG_1_SQMUXA_1);
\R1_X_CLEAR_REG_RNIIEHS_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => X_CLEAR_REG_E1_0_G3_0_494_M5,
dataa => X_CLEAR_REG(1),
datab => rcbcmd_0_0,
datac => x_out_1);
\R1_Y_CLEAR_REG_RNIQ8L01_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => \WORD_REG_OUT_2_0_6__G4\,
dataa => Y_CLEAR_REG(4),
datab => rcbcmd_0_0,
datac => y_out_4);
\R1_Y_CLEAR_REG_RNIO6L01_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => \WORD_REG_OUT_2_0_5__G4\,
dataa => Y_CLEAR_REG(3),
datab => rcbcmd_0_0,
datac => y_out_3);
\R1_Y_CLEAR_REG_RNIM4L01_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => \WORD_REG_OUT_2_0_4__G4\,
dataa => Y_CLEAR_REG(2),
datab => rcbcmd_0_0,
datac => y_out_2);
\R1_X_CLEAR_REG_RNIQMHS_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => \WORD_REG_OUT_2_0_3__G4\,
dataa => X_CLEAR_REG(5),
datab => rcbcmd_0_0,
datac => x_out_5);
\R1_X_CLEAR_REG_RNIOKHS_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => \WORD_REG_OUT_2_0_2__G4\,
dataa => X_CLEAR_REG(4),
datab => rcbcmd_0_0,
datac => x_out_4);
\R1_X_CLEAR_REG_RNIMIHS_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => \WORD_REG_OUT_2_0_1__G4\,
dataa => X_CLEAR_REG(3),
datab => rcbcmd_0_0,
datac => x_out_3);
\R1_X_CLEAR_REG_RNIGCHS_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => \X_CLEAR_START_2_0_0__G3\,
dataa => X_CLEAR_REG(0),
datab => rcbcmd_0_0,
datac => x_out_0);
\Y_IN_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => Y_IN(0),
dataa => Y_CLEAR_REG(0),
datab => rcbcmd_0_0,
datac => y_out_0);
\R1_X_CLEAR_REG_RNIKGHS_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => \WORD_REG_OUT_2_0_0__G4\,
dataa => X_CLEAR_REG(2),
datab => rcbcmd_0_0,
datac => x_out_2);
\R1_X_CLEAR_REG_RNO_4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => X_CLEAR_REG_E0_0_G3_0_457_O5,
dataa => rcbcmd_0_0,
datab => x_out_0);
R1_Y_CLEAR_REG_C2_RNIINTS: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => Y_CLEAR_REG_E5_0_G2,
dataa => Y_CLEAR_REG(4),
datab => Y_CLEAR_REG(3),
datac => Y_CLEAR_REG_C2,
datad => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X);
\R1_X_CLEAR_REG_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000000000")
port map (
combout => X_CLEAR_REG_E1_0_G3_0_494_A5_2,
dataa => RCB_STATE(0),
datab => X_CLEAR_REG_E1_0_G3_0_494_A5_2_0_X,
datac => EQUAL_BLOCK_OUT4_NE,
datad => UN19_EQUAL_BLOCK_OUT);
\R1_Y_CLEAR_REG_9_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010101000000")
port map (
combout => Y_CLEAR_REG_9(2),
dataa => reset_c,
datab => Y_CLEAR_REG(2),
datac => rcbcmd_0_0,
datad => y_out_2);
\R1_Y_CLEAR_REG_9_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010101000000")
port map (
combout => Y_CLEAR_REG_9(3),
dataa => reset_c,
datab => Y_CLEAR_REG(3),
datac => rcbcmd_0_0,
datad => y_out_3);
\R1_Y_CLEAR_REG_9_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010101000000")
port map (
combout => Y_CLEAR_REG_9(4),
dataa => reset_c,
datab => Y_CLEAR_REG(4),
datac => rcbcmd_0_0,
datad => y_out_4);
\R1_Y_CLEAR_REG_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => Y_CLEAR_REG_E4_0_G1,
dataa => Y_CLEAR_REG(4),
datab => Y_CLEAR_REG_145_1,
datac => Y_CLEAR_REG_1_SQMUXA_1);
\R1_X_CLEAR_REG_10_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => X_CLEAR_REG_10_0(5),
dataa => X_CLEAR_START(5),
datab => RCB_STATE(4),
datac => \WORD_REG_OUT_2_0_3__G4\);
\R1_X_CLEAR_REG_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000011100001111")
port map (
combout => X_CLEAR_REG_E5_0_N_4_0_I_0_532_X4,
dataa => X_CLEAR_REG(3),
datab => X_CLEAR_REG(4),
datac => X_CLEAR_REG(5),
datad => X_CLEAR_REG_C2);
CLEAR_RUN_1_SQMUXA_0_A3_Z444: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000100010")
port map (
combout => CLEAR_RUN_1_SQMUXA_0_A3,
dataa => RCB_STATE(0),
datab => EQUAL_BLOCK_OUT4_NE,
datac => X_CLEAR_REG_0_SQMUXA_4,
datad => UN19_EQUAL_BLOCK_OUT);
\R1_X_CLEAR_REG_RNO_3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000001111")
port map (
combout => X_CLEAR_REG_E0_0_G3_0_457_562_A,
dataa => X_CLEAR_START(0),
datab => RCB_STATE(4),
datac => X_CLEAR_REG(0),
datad => UN19_EQUAL_BLOCK_OUT);
\R1_X_CLEAR_REG_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000000")
port map (
combout => X_CLEAR_REG_E0_0_G3_0_457_562,
dataa => reset_c,
datab => RCB_STATE(0),
datac => EQUAL_BLOCK_OUT4_NE,
datad => X_CLEAR_REG_E0_0_G3_0_457_562_A);
\R1_X_CLEAR_REG_10_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010000000100")
port map (
combout => X_CLEAR_REG_10(3),
dataa => reset_c,
datab => X_CLEAR_START(3),
datac => RCB_STATE(4),
datad => \WORD_REG_OUT_2_0_1__G4\);
\R1_X_CLEAR_REG_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010111000101")
port map (
combout => X_CLEAR_REG_E5_0_N_4_0_I_0_532_M2,
dataa => X_CLEAR_REG_E5_0_N_4_0_I_0_532_X4,
datab => X_CLEAR_REG_10_0(5),
datac => X_CLEAR_REG_E5_0_N_4_0_I_0_532_O4_0);
\R1_X_CLEAR_REG_10_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010000000100")
port map (
combout => X_CLEAR_REG_10(4),
dataa => reset_c,
datab => X_CLEAR_START(4),
datac => RCB_STATE(4),
datad => \WORD_REG_OUT_2_0_2__G4\);
\R1_X_CLEAR_REG_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101000000010000")
port map (
combout => X_CLEAR_REG_E1_0_G3_0_494_A5,
dataa => reset_c,
datab => RCB_STATE(0),
datac => X_CLEAR_REG_E1_0_G3_0_494_M5_REP1,
datad => EQUAL_BLOCK_OUT4_NE);
\R1_X_CLEAR_REG_10_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010000000100")
port map (
combout => X_CLEAR_REG_10(2),
dataa => reset_c,
datab => X_CLEAR_START(2),
datac => RCB_STATE(4),
datad => \WORD_REG_OUT_2_0_0__G4\);
\R1_Y_CLEAR_REG_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => Y_CLEAR_REG_E5_0_G4,
dataa => Y_CLEAR_REG(5),
datab => Y_CLEAR_REG_E5_0_G2,
datac => Y_CLEAR_REG_1_SQMUXA_1);
\R1_X_CLEAR_REG_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => X_CLEAR_REG_E0_0_G3_0_457_A5,
dataa => reset_c,
datab => X_CLEAR_REG(0),
datac => X_CLEAR_REG_E0_0_G3_0_457_O5,
datad => X_CLEAR_REG_E0_0_G3_0_457_O5_0);
EQUAL_EQUAL_BLOCK_OUT4_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => EQUAL_BLOCK_OUT4_NE_0,
dataa => WORD_REG_OUT(3),
datab => WORD_REG_OUT(2),
datac => \WORD_REG_OUT_2_0_3__G4\,
datad => \WORD_REG_OUT_2_0_2__G4\);
EQUAL_EQUAL_BLOCK_OUT4_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => EQUAL_BLOCK_OUT4_NE_1,
dataa => WORD_REG_OUT(1),
datab => WORD_REG_OUT(0),
datac => \WORD_REG_OUT_2_0_1__G4\,
datad => \WORD_REG_OUT_2_0_0__G4\);
EQUAL_EQUAL_BLOCK_OUT4_NE_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => EQUAL_BLOCK_OUT4_NE_2,
dataa => WORD_REG_OUT(5),
datab => WORD_REG_OUT(4),
datac => \WORD_REG_OUT_2_0_5__G4\,
datad => \WORD_REG_OUT_2_0_4__G4\);
EQUAL_EQUAL_BLOCK_OUT4_NE_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => EQUAL_BLOCK_OUT4_NE_3,
dataa => WORD_REG_OUT(7),
datab => WORD_REG_OUT(6),
datac => Y_IN_I_M2(5),
datad => \WORD_REG_OUT_2_0_6__G4\);
\R1_Y_CLEAR_REG_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100110000")
port map (
combout => Y_CLEAR_REG_E0_0_G0X,
dataa => reset_c,
datab => Y_CLEAR_REG(0),
datac => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X,
datad => Y_IN(0));
\R1_X_CLEAR_REG_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => X_CLEAR_REG_E4_0_G3,
dataa => X_CLEAR_REG(4),
datab => X_CLEAR_REG_133_1,
datac => X_CLEAR_REG_10(4),
datad => Y_CLEAR_REG_1_SQMUXA_1);
\R1_X_CLEAR_REG_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => X_CLEAR_REG_E2_0_G3,
dataa => X_CLEAR_REG(2),
datab => X_CLEAR_REG_C1,
datac => X_CLEAR_REG_10(2),
datad => Y_CLEAR_REG_1_SQMUXA_1);
\R1_X_CLEAR_REG_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => X_CLEAR_REG_E3_0_G3,
dataa => X_CLEAR_REG(3),
datab => X_CLEAR_REG_C2,
datac => X_CLEAR_REG_10(3),
datad => Y_CLEAR_REG_1_SQMUXA_1);
\R1_X_CLEAR_REG_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => X_CLEAR_REG_E0_0_G3_0_457,
dataa => X_CLEAR_REG_E0_0_G3_0_457_A5_0_1,
datab => x_out_0,
datac => X_CLEAR_REG_E0_0_G3_0_457_562,
datad => X_CLEAR_REG_E0_0_G3_0_457_A5);
EQUAL_EQUAL_BLOCK_OUT4_NE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => EQUAL_BLOCK_OUT4_NE,
dataa => EQUAL_BLOCK_OUT4_NE_2,
datab => EQUAL_BLOCK_OUT4_NE_3,
datac => EQUAL_BLOCK_OUT4_NE_0,
datad => EQUAL_BLOCK_OUT4_NE_1);
\R1_X_CLEAR_REG_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111011100001111")
port map (
combout => X_CLEAR_REG_E1_0_G3_0_494_A,
dataa => RCB_STATE(4),
datab => X_CLEAR_REG_E1_0_G3_0_494_M5_REP1,
datac => X_CLEAR_REG_E1_0_G3_0_494_A5_0_0,
datad => UN19_EQUAL_BLOCK_OUT);
\R1_X_CLEAR_REG_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110011111101")
port map (
combout => X_CLEAR_REG_E1_0_G3_0_494,
dataa => reset_c,
datab => X_CLEAR_REG_E1_0_G3_0_494_A5,
datac => X_CLEAR_REG_E1_0_G3_0_494_A5_2,
datad => X_CLEAR_REG_E1_0_G3_0_494_A);
UN1_X_CLEAR_REG_1_SQMUXA_0_X_Z466: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => UN1_X_CLEAR_REG_1_SQMUXA_0_X,
dataa => reset_c,
datab => RCB_STATE(4),
datac => CLEAR_RUN_1_SQMUXA_0_A3);
\R1_Y_CLEAR_REG_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001110010011100")
port map (
combout => Y_CLEAR_REG_E5_0_G1_X,
dataa => reset_c,
datab => Y_CLEAR_REG_E5_0_G2,
datac => Y_IN_I_M2(5));
\R1_X_CLEAR_REG_RNO_3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000100")
port map (
combout => X_CLEAR_REG_E1_0_G3_0_494_A5_2_0_X,
dataa => reset_c,
datab => X_CLEAR_START(1),
datac => RCB_STATE(4));
\RCB_STATE_RNISMK2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010101110")
port map (
combout => \PIXOP_REG_0_1_0__G0_0_X\,
dataa => reset_c,
datab => RCB_STATE(3),
datac => DELAY_I_0_RNIHDMC);
\RCB_STATE_RNITNK2_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X,
dataa => reset_c,
datab => RCB_STATE(4));
Y_CLEAR_REG_1_SQMUXA_1_Z471: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010100010001")
port map (
combout => Y_CLEAR_REG_1_SQMUXA_1,
dataa => reset_c,
datab => RCB_STATE(4),
datac => UN19_EQUAL_BLOCK_OUT,
datad => CLEAR_RUN_1_SQMUXA_0_A3);
CLEAR_RUN_1_SQMUXA_0_A3_RNIJKGO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011101110")
port map (
combout => Y_CLEAR_REG_E1_0_G0_I_O4_X,
dataa => reset_c,
datab => RCB_STATE(4),
datac => UN19_EQUAL_BLOCK_OUT,
datad => CLEAR_RUN_1_SQMUXA_0_A3);
\R1_Y_CLEAR_REG_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001111000")
port map (
combout => Y_CLEAR_REG_E2_0_G1,
dataa => Y_CLEAR_REG(1),
datab => Y_CLEAR_REG(0),
datac => Y_CLEAR_REG(2),
datad => Y_CLEAR_REG_1_SQMUXA_1);
\R1_X_CLEAR_REG_RNIIEHS_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100010111000")
port map (
combout => X_CLEAR_REG_E1_0_G3_0_494_M5_REP1,
dataa => X_CLEAR_REG(1),
datab => rcbcmd_0_0,
datac => x_out_1);
DIFF_X_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => DIFF_X_ADD0_START_COUT,
dataa => VCC);
DIFF_Y_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => DIFF_Y_ADD0_START_COUT,
dataa => VCC);
PWC: pix_word_cache port map (
rdout_par_15_1 => RDOUT_PAR_15(1),
rdout_par_15_0 => RDOUT_PAR_15(0),
rdout_par_14_1 => RDOUT_PAR_14(1),
rdout_par_14_0 => RDOUT_PAR_14(0),
rdout_par_13_1 => RDOUT_PAR_13(1),
rdout_par_13_0 => RDOUT_PAR_13(0),
rdout_par_12_1 => RDOUT_PAR_12(1),
rdout_par_12_0 => RDOUT_PAR_12(0),
rdout_par_11_1 => RDOUT_PAR_11(1),
rdout_par_11_0 => RDOUT_PAR_11(0),
rdout_par_10_1 => RDOUT_PAR_10(1),
rdout_par_10_0 => RDOUT_PAR_10(0),
rdout_par_9_1 => RDOUT_PAR_9(1),
rdout_par_9_0 => RDOUT_PAR_9(0),
rdout_par_8_1 => RDOUT_PAR_8(1),
rdout_par_8_0 => RDOUT_PAR_8(0),
rdout_par_7_1 => RDOUT_PAR_7(1),
rdout_par_7_0 => RDOUT_PAR_7(0),
rdout_par_6_1 => RDOUT_PAR_6(1),
rdout_par_6_0 => RDOUT_PAR_6(0),
rdout_par_5_1 => RDOUT_PAR_5(1),
rdout_par_5_0 => RDOUT_PAR_5(0),
rdout_par_4_1 => RDOUT_PAR_4(1),
rdout_par_4_0 => RDOUT_PAR_4(0),
rdout_par_3_1 => RDOUT_PAR_3(1),
rdout_par_3_0 => RDOUT_PAR_3(0),
rdout_par_2_1 => RDOUT_PAR_2(1),
rdout_par_2_0 => RDOUT_PAR_2(0),
rdout_par_1_1 => RDOUT_PAR_1(1),
rdout_par_1_0 => RDOUT_PAR_1(0),
rdout_par_0_1 => RDOUT_PAR_0(1),
rdout_par_0_0 => RDOUT_PAR_0(0),
rcb_state_3 => RCB_STATE(3),
rcb_state_0 => RCB_STATE(0),
rcb_state_1 => RCB_STATE(1),
y_in_i_m2_0 => Y_IN_I_M2(1),
y_in_0 => Y_IN(0),
penReg_0 => penReg_0,
penReg_1 => penReg_1,
rcbcmd_i_o4_0 => rcbcmd_i_o4_0,
rcb_state_i_0 => RCB_STATE_I_54,
state_i_0 => state_i_0,
rcb_state_nss_i_0_0_a2_5_0 => RCB_STATE_NSS_I_0_0_A2_5(0),
clk_c => clk_c,
reset_c => reset_c,
delay_i_0_RNIHDMC => DELAY_I_0_RNIHDMC,
equal_block_out4_NE => EQUAL_BLOCK_OUT4_NE,
x_clear_reg_e1_0_g3_0_494_m5_rep1 => X_CLEAR_REG_E1_0_G3_0_494_M5_REP1,
\x_clear_start_2_0_0__g3\ => \X_CLEAR_START_2_0_0__G3\,
x_clear_reg_e1_0_g3_0_494_m5 => X_CLEAR_REG_E1_0_G3_0_494_M5,
delay_i_0_o2 => DELAY_I_0_O2,
dav_c => dav_c,
finish => finish);
PWC2: pix_write_cache port map (
vdout_c_15 => vdout_c_15,
vdout_c_14 => vdout_c_14,
vdout_c_13 => vdout_c_13,
vdout_c_12 => vdout_c_12,
vdout_c_11 => vdout_c_11,
vdout_c_10 => vdout_c_10,
vdout_c_9 => vdout_c_9,
vdout_c_8 => vdout_c_8,
vdout_c_7 => vdout_c_7,
vdout_c_6 => vdout_c_6,
vdout_c_5 => vdout_c_5,
vdout_c_4 => vdout_c_4,
vdout_c_3 => vdout_c_3,
vdout_c_2 => vdout_c_2,
vdout_c_1 => vdout_c_1,
vdout_c_0 => vdout_c_0,
reg_addr_7 => reg_addr_7,
reg_addr_6 => reg_addr_6,
reg_addr_5 => reg_addr_5,
reg_addr_4 => reg_addr_4,
reg_addr_3 => reg_addr_3,
reg_addr_2 => reg_addr_2,
reg_addr_1 => reg_addr_1,
reg_addr_0 => reg_addr_0,
word_reg_out_7 => WORD_REG_OUT(7),
word_reg_out_6 => WORD_REG_OUT(6),
word_reg_out_5 => WORD_REG_OUT(5),
word_reg_out_4 => WORD_REG_OUT(4),
word_reg_out_3 => WORD_REG_OUT(3),
word_reg_out_2 => WORD_REG_OUT(2),
word_reg_out_1 => WORD_REG_OUT(1),
word_reg_out_0 => WORD_REG_OUT(0),
rcb_state_i_0 => RCB_STATE_I_54,
rcb_state_3 => RCB_STATE(3),
rcb_state_2 => RCB_STATE(2),
rcb_state_0 => RCB_STATE(0),
rcb_state_4 => RCB_STATE(4),
rcb_state_1 => RCB_STATE(1),
rcbcmd_0_0 => rcbcmd_0_0,
y_in_i_m2_0 => Y_IN_I_M2(1),
y_in_i_m2_4 => Y_IN_I_M2(5),
y_out_0 => y_out_1,
y_out_4 => y_out_5,
penReg_1 => penReg_1,
penReg_0 => penReg_0,
rcbcmd_i_o4_0 => rcbcmd_i_o4_0,
rcb_state_nss_i_0_0_a2_5_0 => RCB_STATE_NSS_I_0_0_A2_5(0),
rcb_flush_downcount_4 => RCB_FLUSH_DOWNCOUNT(4),
rcb_flush_downcount_0 => RCB_FLUSH_DOWNCOUNT(0),
rcb_flush_downcount_1 => RCB_FLUSH_DOWNCOUNT(1),
rcb_flush_downcount_2 => RCB_FLUSH_DOWNCOUNT(2),
rcb_flush_downcount_3 => RCB_FLUSH_DOWNCOUNT(3),
pixop_reg_14_0 => PIXOP_REG_14(0),
pixop_reg_14_1 => PIXOP_REG_14(1),
pixop_reg_15_0 => PIXOP_REG_15(0),
pixop_reg_15_1 => PIXOP_REG_15(1),
pixop_reg_6_0 => PIXOP_REG_6(0),
pixop_reg_6_1 => PIXOP_REG_6(1),
pixop_reg_7_0 => PIXOP_REG_7(0),
pixop_reg_7_1 => PIXOP_REG_7(1),
pixop_reg_8_0 => PIXOP_REG_8(0),
pixop_reg_8_1 => PIXOP_REG_8(1),
pixop_reg_9_0 => PIXOP_REG_9(0),
pixop_reg_9_1 => PIXOP_REG_9(1),
pixop_reg_10_0 => PIXOP_REG_10(0),
pixop_reg_10_1 => PIXOP_REG_10(1),
pixop_reg_11_0 => PIXOP_REG_11(0),
pixop_reg_11_1 => PIXOP_REG_11(1),
pixop_reg_12_0 => PIXOP_REG_12(0),
pixop_reg_12_1 => PIXOP_REG_12(1),
pixop_reg_13_0 => PIXOP_REG_13(0),
pixop_reg_13_1 => PIXOP_REG_13(1),
pixop_reg_0_0 => PIXOP_REG_0(0),
pixop_reg_0_1 => PIXOP_REG_0(1),
pixop_reg_1_0 => PIXOP_REG_1(0),
pixop_reg_1_1 => PIXOP_REG_1(1),
pixop_reg_2_0 => PIXOP_REG_2(0),
pixop_reg_2_1 => PIXOP_REG_2(1),
pixop_reg_3_0 => PIXOP_REG_3(0),
pixop_reg_3_1 => PIXOP_REG_3(1),
pixop_reg_4_0 => PIXOP_REG_4(0),
pixop_reg_4_1 => PIXOP_REG_4(1),
vdin_1_iv_0_m2_x_14 => vdin_1_iv_0_m2_x_14,
vdin_1_iv_0_m2_x_15 => vdin_1_iv_0_m2_x_15,
vdin_1_iv_0_m2_x_6 => vdin_1_iv_0_m2_x_6,
vdin_1_iv_0_m2_x_7 => vdin_1_iv_0_m2_x_7,
vdin_1_iv_0_m2_x_8 => vdin_1_iv_0_m2_x_8,
vdin_1_iv_0_m2_x_9 => vdin_1_iv_0_m2_x_9,
vdin_1_iv_0_m2_x_10 => vdin_1_iv_0_m2_x_10,
vdin_1_iv_0_m2_x_11 => vdin_1_iv_0_m2_x_11,
vdin_1_iv_0_m2_x_12 => vdin_1_iv_0_m2_x_12,
vdin_1_iv_0_m2_x_13 => vdin_1_iv_0_m2_x_13,
vdin_1_iv_0_m2_x_0 => vdin_1_iv_0_m2_x_0,
vdin_1_iv_0_m2_x_1 => vdin_1_iv_0_m2_x_1,
vdin_1_iv_0_m2_x_2 => vdin_1_iv_0_m2_x_2,
vdin_1_iv_0_m2_x_3 => vdin_1_iv_0_m2_x_3,
vdin_1_iv_0_m2_x_4 => vdin_1_iv_0_m2_x_4,
vdin_1_iv_0_m2_x_5 => vdin_1_iv_0_m2_x_5,
pixop_reg_5_0 => PIXOP_REG_5(0),
pixop_reg_5_1 => PIXOP_REG_5(1),
y_clear_reg_1 => Y_CLEAR_REG(1),
y_clear_reg_5 => Y_CLEAR_REG(5),
y_clear_reg_0 => Y_CLEAR_REG(0),
delay_i_0_RNIHDMC => DELAY_I_0_RNIHDMC,
clk_c => clk_c,
delay_i_0_o2 => DELAY_I_0_O2,
N_180_i_0_a2 => N_180_i_0_a2,
\rcb_state_srsts_0_0_0_2__g2\ => \RCB_STATE_SRSTS_0_0_0_2__G2\,
reset_c => reset_c,
equal_block_out4_NE => EQUAL_BLOCK_OUT4_NE,
x_clear_reg_0_sqmuxa_4 => X_CLEAR_REG_0_SQMUXA_4,
un19_equal_block_out => UN19_EQUAL_BLOCK_OUT,
nstate3_0_a2_3 => NSTATE3_0_A2_3,
startcmd_i => startcmd_i,
\rcb_state_srsts_i_i_a2_0_1__g0_0_a2\ => \RCB_STATE_SRSTS_I_I_A2_0_1__G0_0_A2\,
\rcb_flush_downcount_7_0_a2_1_0__g0\ => \RCB_FLUSH_DOWNCOUNT_7_0_A2_1_0__G0\,
nstate3_0_a2 => NSTATE3_0_A2,
N_425_i_0_g0 => N_425_I_0_G0,
N_427_i_0_g0 => N_427_I_0_G0,
rcb_flush_downcount_2_c1 => RCB_FLUSH_DOWNCOUNT_2_C1,
N_428_i_0_g0 => N_428_I_0_G0,
N_426_i_0_g0 => N_426_I_0_G0,
\rcb_state_srsts_i_i_0_4__g0_0\ => \RCB_STATE_SRSTS_I_I_0_4__G0_0\,
\rcb_state_srsts_0_0_0_0__g0_0\ => \RCB_STATE_SRSTS_0_0_0_0__G0_0\,
\rcb_state_srsts_0_0_0_3__g0_0\ => \RCB_STATE_SRSTS_0_0_0_3__G0_0\,
\rcb_state_nss_i_0_0_0_0__g0\ => \RCB_STATE_NSS_I_0_0_0_0__G0\,
\word_reg_out_2_0_0__g0_i_0_x\ => \WORD_REG_OUT_2_0_0__G0_I_0_X\,
y_clear_reg_n1_i_m2 => Y_CLEAR_REG_N1_I_M2);
VCC <= '1';
GND <= '0';
X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X_I <= not X_CLEAR_REG_E0_0_G3_0_457_A5_2_2_X;
rcb_state_i_0 <= RCB_STATE_I_54;
end beh;

--
library ieee, work;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.components.all;
use work.cycloneii_components.all;

entity db is
port(
state_i_0 :  out std_logic;
penReg_0 :  out std_logic;
penReg_1 :  out std_logic;
hdb_c_2 :  in std_logic;
hdb_c_3 :  in std_logic;
hdb_c_4 :  in std_logic;
hdb_c_5 :  in std_logic;
hdb_c_6 :  in std_logic;
hdb_c_7 :  in std_logic;
hdb_c_8 :  in std_logic;
hdb_c_9 :  in std_logic;
hdb_c_10 :  in std_logic;
hdb_c_11 :  in std_logic;
hdb_c_12 :  in std_logic;
hdb_c_13 :  in std_logic;
hdb_c_0 :  in std_logic;
hdb_c_1 :  in std_logic;
hdb_c_14 :  in std_logic;
hdb_c_15 :  in std_logic;
rcb_state_i_0 :  in std_logic;
x_out_0 :  out std_logic;
x_out_1 :  out std_logic;
x_out_2 :  out std_logic;
x_out_3 :  out std_logic;
x_out_4 :  out std_logic;
x_out_5 :  out std_logic;
y_out_0 :  out std_logic;
y_out_5 :  out std_logic;
y_out_3 :  out std_logic;
y_out_1 :  out std_logic;
y_out_2 :  out std_logic;
y_out_4 :  out std_logic;
rcbcmd_i_o4_0 :  out std_logic;
rcbcmd_0_0 :  out std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
dav_c :  in std_logic;
startcmd_i :  out std_logic);
end db;

architecture beh of db is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal STATE : std_logic_vector(10 downto 0);
signal XYNEWREG : std_logic_vector(11 downto 0);
signal XYOLDREG : std_logic_vector(11 downto 0);
signal OPREG : std_logic_vector(1 downto 0);
signal INF_ABS0 : std_logic_vector(6 downto 1);
signal INF_ABS1 : std_logic_vector(6 downto 1);
signal Y_IN_DRAW : std_logic_vector(0 to 0);
signal X_IN_DRAW : std_logic_vector(5 downto 1);
signal STATE_SRSTS_I_O2_0 : std_logic_vector(8 downto 6);
signal STATE_NSS_I_I_A4_0_0 : std_logic_vector(0 to 0);
signal STATE_NSS_I_I_A4_0_1 : std_logic_vector(0 to 0);
signal UN1_XY_I_1 : std_logic_vector(11 downto 0);
signal STATE_NSS_I_I_A4_0_2_0 : std_logic_vector(0 to 0);
signal STATE_NSS_I_I_O2_0_X : std_logic_vector(0 to 0);
signal RCBCMD_I_A3_1 : std_logic_vector(0 to 0);
signal STATE_NSS_I_I_O2 : std_logic_vector(0 to 0);
signal N_306_I_0_G0 : std_logic ;
signal N_308_I_0_G0 : std_logic ;
signal N_312_I_0_G0 : std_logic ;
signal N_314_I_0_G0 : std_logic ;
signal N_316_I_0_G0 : std_logic ;
signal \STATE_SRSTS_0_A4_0_9__G0\ : std_logic ;
signal \STATE_SRSTS_0_A4_0_10__G0\ : std_logic ;
signal N_298_I_0_G0 : std_logic ;
signal \OPREG_0_0_0__G0_I_0\ : std_logic ;
signal N_300_I_0_G0_0_X : std_logic ;
signal LT_0 : std_logic ;
signal DIFF_X_ADD0 : std_logic ;
signal DIFF_Y_ADD0 : std_logic ;
signal LT_1 : std_logic ;
signal LT_2 : std_logic ;
signal LT_3 : std_logic ;
signal LT_4 : std_logic ;
signal LT_5 : std_logic ;
signal LT6 : std_logic ;
signal LT6_COUT : std_logic ;
signal LT_0_0 : std_logic ;
signal LT_1_0 : std_logic ;
signal LT_2_0 : std_logic ;
signal LT_3_0 : std_logic ;
signal LT_4_0 : std_logic ;
signal LT5 : std_logic ;
signal LT5_COUT : std_logic ;
signal LT_0_1 : std_logic ;
signal LT_1_1 : std_logic ;
signal LT_2_1 : std_logic ;
signal LT_3_1 : std_logic ;
signal LT_4_1 : std_logic ;
signal LT5_0 : std_logic ;
signal LT5_COUT_0 : std_logic ;
signal DIFF_X_CARRY_0 : std_logic ;
signal DIFF_X_ADD0_START_COUT_0 : std_logic ;
signal DIFF_X_ADD1 : std_logic ;
signal DIFF_X_CARRY_1 : std_logic ;
signal DIFF_X_ADD2 : std_logic ;
signal DIFF_X_CARRY_2 : std_logic ;
signal DIFF_X_ADD3 : std_logic ;
signal DIFF_X_CARRY_3 : std_logic ;
signal DIFF_X_ADD4 : std_logic ;
signal DIFF_X_CARRY_4 : std_logic ;
signal DIFF_X_ADD5 : std_logic ;
signal DIFF_Y_CARRY_0 : std_logic ;
signal DIFF_Y_ADD0_START_COUT_0 : std_logic ;
signal DIFF_Y_ADD1 : std_logic ;
signal DIFF_Y_CARRY_1 : std_logic ;
signal DIFF_Y_ADD2 : std_logic ;
signal DIFF_Y_CARRY_2 : std_logic ;
signal DIFF_Y_ADD3 : std_logic ;
signal DIFF_Y_CARRY_3 : std_logic ;
signal DIFF_Y_ADD4 : std_logic ;
signal DIFF_Y_CARRY_4 : std_logic ;
signal DIFF_Y_ADD5 : std_logic ;
signal NN_1 : std_logic ;
signal UN1_X_OUT8_1 : std_logic ;
signal NN_2 : std_logic ;
signal UN1_X_OUT8_0 : std_logic ;
signal NN_3 : std_logic ;
signal NN_4 : std_logic ;
signal NN_5 : std_logic ;
signal UN1_XYNEWREG_2 : std_logic ;
signal NN_6 : std_logic ;
signal NN_7 : std_logic ;
signal NN_8 : std_logic ;
signal NN_9 : std_logic ;
signal NN_10 : std_logic ;
signal NN_11 : std_logic ;
signal NN_12 : std_logic ;
signal X_OUT8_I_A2 : std_logic ;
signal CLEAR_CMD_I_A2 : std_logic ;
signal STARTCMD_I_A4_0_3 : std_logic ;
signal X_OUT10_I_A4 : std_logic ;
signal STARTCMD_I_A4_0_2 : std_logic ;
signal STARTCMD_I_A4_0_1 : std_logic ;
signal RCBCMD9_0 : std_logic ;
signal RCBCMD9_1 : std_logic ;
signal RCBCMD9_2 : std_logic ;
signal RCBCMD9_3 : std_logic ;
signal RCBCMD9_4 : std_logic ;
signal NN_13 : std_logic ;
signal INF_ABS0_A_0_SUM3 : std_logic ;
signal INF_ABS0_A_0_ANC3 : std_logic ;
signal INF_ABS1_A_1_SUM3 : std_logic ;
signal INF_ABS1_A_1_ANC3 : std_logic ;
signal NEGY : std_logic ;
signal NEGX : std_logic ;
signal RCBCMD9_8 : std_logic ;
signal N_308_I_0_G0_1 : std_logic ;
signal STARTCMD_I_A4_2 : std_logic ;
signal RCBCMD9_9 : std_logic ;
signal N_298_I_0_G0_2_A : std_logic ;
signal N_298_I_0_G0_2 : std_logic ;
signal N_316_I_0_G4 : std_logic ;
signal UN3_X1 : std_logic ;
signal N_306_I_0_G4 : std_logic ;
signal N_312_I_0_G4 : std_logic ;
signal VCC : std_logic ;
signal N_231 : std_logic ;
signal N_230 : std_logic ;
signal N_229 : std_logic ;
signal N_228 : std_logic ;
signal N_227 : std_logic ;
signal N_226 : std_logic ;
signal N_225 : std_logic ;
signal N_224 : std_logic ;
signal N_223 : std_logic ;
signal N_222 : std_logic ;
signal N_221 : std_logic ;
signal N_220 : std_logic ;
signal GND : std_logic ;
signal STATE_I_14 : std_logic ;
signal PENREG_15 : std_logic ;
signal PENREG_16 : std_logic ;
component draw_any_octant
port(
un1_xy_i_1_5 :  out std_logic;
un1_xy_i_1_11 :  out std_logic;
un1_xy_i_1_4 :  out std_logic;
un1_xy_i_1_6 :  out std_logic;
un1_xy_i_1_8 :  out std_logic;
un1_xy_i_1_10 :  out std_logic;
un1_xy_i_1_9 :  out std_logic;
un1_xy_i_1_7 :  out std_logic;
un1_xy_i_1_3 :  out std_logic;
un1_xy_i_1_2 :  out std_logic;
un1_xy_i_1_1 :  out std_logic;
un1_xy_i_1_0 :  out std_logic;
x_in_draw_1 :  in std_logic;
x_in_draw_0 :  in std_logic;
x_in_draw_4 :  in std_logic;
x_in_draw_2 :  in std_logic;
x_in_draw_3 :  in std_logic;
y_in_draw_0 :  in std_logic;
rcb_state_i_0 :  in std_logic;
state_1 :  in std_logic;
state_0 :  in std_logic;
xyoldReg_5 :  in std_logic;
xyoldReg_0 :  in std_logic;
xyoldReg_1 :  in std_logic;
xyoldReg_4 :  in std_logic;
xyoldReg_2 :  in std_logic;
xyoldReg_3 :  in std_logic;
xynewReg_5 :  in std_logic;
xynewReg_0 :  in std_logic;
xynewReg_1 :  in std_logic;
xynewReg_4 :  in std_logic;
xynewReg_2 :  in std_logic;
xynewReg_3 :  in std_logic;
lt6 :  in std_logic;
clk_c :  in std_logic;
negy :  out std_logic;
lt5 :  in std_logic;
negx :  out std_logic;
lt5_0 :  in std_logic;
lt6_cout :  in std_logic;
un3_x1 :  out std_logic  );
end component;
begin
\STATE_3_\: cycloneii_lcell_ff port map (
regout => STATE(3),
datain => N_306_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_4_\: cycloneii_lcell_ff port map (
regout => STATE(4),
datain => N_308_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_6_\: cycloneii_lcell_ff port map (
regout => STATE(6),
datain => N_312_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_7_\: cycloneii_lcell_ff port map (
regout => STATE(7),
datain => N_314_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_8_\: cycloneii_lcell_ff port map (
regout => STATE(8),
datain => N_316_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_9_\: cycloneii_lcell_ff port map (
regout => STATE(9),
datain => \STATE_SRSTS_0_A4_0_9__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_10_\: cycloneii_lcell_ff port map (
regout => STATE(10),
datain => \STATE_SRSTS_0_A4_0_10__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_I_11_\: cycloneii_lcell_ff port map (
regout => STATE_I_14,
datain => N_298_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\REG_XYNEWREG_0_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(0),
datain => hdb_c_2,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_1_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(1),
datain => hdb_c_3,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_2_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(2),
datain => hdb_c_4,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_3_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(3),
datain => hdb_c_5,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_4_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(4),
datain => hdb_c_6,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_5_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(5),
datain => hdb_c_7,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_6_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(6),
datain => hdb_c_8,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_7_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(7),
datain => hdb_c_9,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_8_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(8),
datain => hdb_c_10,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_9_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(9),
datain => hdb_c_11,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_10_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(10),
datain => hdb_c_12,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYNEWREG_11_\: cycloneii_lcell_ff port map (
regout => XYNEWREG(11),
datain => hdb_c_13,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_0_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(0),
datain => XYNEWREG(0),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_1_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(1),
datain => XYNEWREG(1),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_2_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(2),
datain => XYNEWREG(2),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_3_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(3),
datain => XYNEWREG(3),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_4_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(4),
datain => XYNEWREG(4),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_5_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(5),
datain => XYNEWREG(5),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_6_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(6),
datain => XYNEWREG(6),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_7_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(7),
datain => XYNEWREG(7),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_8_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(8),
datain => XYNEWREG(8),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_9_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(9),
datain => XYNEWREG(9),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_10_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(10),
datain => XYNEWREG(10),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_XYOLDREG_11_\: cycloneii_lcell_ff port map (
regout => XYOLDREG(11),
datain => XYNEWREG(11),
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_PENREG_0_\: cycloneii_lcell_ff port map (
regout => PENREG_15,
datain => hdb_c_0,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_PENREG_1_\: cycloneii_lcell_ff port map (
regout => PENREG_16,
datain => hdb_c_1,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_OPREG_0_\: cycloneii_lcell_ff port map (
regout => OPREG(0),
datain => hdb_c_14,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\REG_OPREG_1_\: cycloneii_lcell_ff port map (
regout => OPREG(1),
datain => hdb_c_15,
clk => clk_c,
sclr => reset_c,
ena => \OPREG_0_0_0__G0_I_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\STATE_5_\: cycloneii_lcell_ff port map (
regout => STATE(5),
datain => STATE(6),
clk => clk_c,
sclr => reset_c,
ena => N_300_I_0_G0_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\STATE_2_\: cycloneii_lcell_ff port map (
regout => STATE(2),
datain => STATE(3),
clk => clk_c,
sclr => reset_c,
ena => N_300_I_0_G0_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\STATE_1_\: cycloneii_lcell_ff port map (
regout => STATE(1),
datain => STATE(2),
clk => clk_c,
sclr => reset_c,
ena => N_300_I_0_G0_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\STATE_0_\: cycloneii_lcell_ff port map (
regout => STATE(0),
datain => STATE(1),
clk => clk_c,
sclr => reset_c,
ena => N_300_I_0_G0_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
OCTANTCOMB_SWAP2_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0,
dataa => DIFF_X_ADD0,
datab => DIFF_Y_ADD0);
OCTANTCOMB_SWAP2_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1,
dataa => INF_ABS0(1),
datab => INF_ABS1(1),
cin => LT_0);
OCTANTCOMB_SWAP2_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2,
dataa => INF_ABS0(2),
datab => INF_ABS1(2),
cin => LT_1);
OCTANTCOMB_SWAP2_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3,
dataa => INF_ABS0(3),
datab => INF_ABS1(3),
cin => LT_2);
OCTANTCOMB_SWAP2_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4,
dataa => INF_ABS0(4),
datab => INF_ABS1(4),
cin => LT_3);
OCTANTCOMB_SWAP2_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_5,
dataa => INF_ABS0(5),
datab => INF_ABS1(5),
cin => LT_4);
OCTANTCOMB_SWAP2_LT6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT6,
cout => LT6_COUT,
dataa => INF_ABS1(6),
datab => INF_ABS0(6),
cin => LT_5);
XYCLEAR_MY_MINMAX_TMP3_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0_0,
dataa => XYNEWREG(6),
datab => XYOLDREG(6));
XYCLEAR_MY_MINMAX_TMP3_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1_0,
dataa => XYNEWREG(7),
datab => XYOLDREG(7),
cin => LT_0_0);
XYCLEAR_MY_MINMAX_TMP3_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2_0,
dataa => XYNEWREG(8),
datab => XYOLDREG(8),
cin => LT_1_0);
XYCLEAR_MY_MINMAX_TMP3_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3_0,
dataa => XYNEWREG(9),
datab => XYOLDREG(9),
cin => LT_2_0);
XYCLEAR_MY_MINMAX_TMP3_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4_0,
dataa => XYNEWREG(10),
datab => XYOLDREG(10),
cin => LT_3_0);
XYCLEAR_MY_MINMAX_TMP3_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT5,
cout => LT5_COUT,
dataa => XYNEWREG(11),
datab => XYOLDREG(11),
cin => LT_4_0);
XYCLEAR_MY_MINMAX_TMP10_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0_1,
dataa => XYNEWREG(0),
datab => XYOLDREG(0));
XYCLEAR_MY_MINMAX_TMP10_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1_1,
dataa => XYNEWREG(1),
datab => XYOLDREG(1),
cin => LT_0_1);
XYCLEAR_MY_MINMAX_TMP10_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2_1,
dataa => XYNEWREG(2),
datab => XYOLDREG(2),
cin => LT_1_1);
XYCLEAR_MY_MINMAX_TMP10_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3_1,
dataa => XYNEWREG(3),
datab => XYOLDREG(3),
cin => LT_2_1);
XYCLEAR_MY_MINMAX_TMP10_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4_1,
dataa => XYNEWREG(4),
datab => XYOLDREG(4),
cin => LT_3_1);
XYCLEAR_MY_MINMAX_TMP10_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT5_0,
cout => LT5_COUT_0,
dataa => XYNEWREG(5),
datab => XYOLDREG(5),
cin => LT_4_1);
DIFF_X_ADD0_Z304: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_X_ADD0,
cout => DIFF_X_CARRY_0,
dataa => XYNEWREG(6),
datab => XYOLDREG(6),
cin => DIFF_X_ADD0_START_COUT_0);
DIFF_X_ADD1_Z305: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_X_ADD1,
cout => DIFF_X_CARRY_1,
dataa => XYNEWREG(7),
datab => XYOLDREG(7),
cin => DIFF_X_CARRY_0);
DIFF_X_ADD2_Z306: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_X_ADD2,
cout => DIFF_X_CARRY_2,
dataa => XYNEWREG(8),
datab => XYOLDREG(8),
cin => DIFF_X_CARRY_1);
DIFF_X_ADD3_Z307: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_X_ADD3,
cout => DIFF_X_CARRY_3,
dataa => XYNEWREG(9),
datab => XYOLDREG(9),
cin => DIFF_X_CARRY_2);
DIFF_X_ADD4_Z308: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_X_ADD4,
cout => DIFF_X_CARRY_4,
dataa => XYNEWREG(10),
datab => XYOLDREG(10),
cin => DIFF_X_CARRY_3);
DIFF_X_ADD5_Z309: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => DIFF_X_ADD5,
dataa => XYNEWREG(11),
datab => XYOLDREG(11),
cin => DIFF_X_CARRY_4);
DIFF_Y_ADD0_Z310: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_Y_ADD0,
cout => DIFF_Y_CARRY_0,
dataa => XYNEWREG(0),
datab => XYOLDREG(0),
cin => DIFF_Y_ADD0_START_COUT_0);
DIFF_Y_ADD1_Z311: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_Y_ADD1,
cout => DIFF_Y_CARRY_1,
dataa => XYNEWREG(1),
datab => XYOLDREG(1),
cin => DIFF_Y_CARRY_0);
DIFF_Y_ADD2_Z312: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_Y_ADD2,
cout => DIFF_Y_CARRY_2,
dataa => XYNEWREG(2),
datab => XYOLDREG(2),
cin => DIFF_Y_CARRY_1);
DIFF_Y_ADD3_Z313: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_Y_ADD3,
cout => DIFF_Y_CARRY_3,
dataa => XYNEWREG(3),
datab => XYOLDREG(3),
cin => DIFF_Y_CARRY_2);
DIFF_Y_ADD4_Z314: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => DIFF_Y_ADD4,
cout => DIFF_Y_CARRY_4,
dataa => XYNEWREG(4),
datab => XYOLDREG(4),
cin => DIFF_Y_CARRY_3);
DIFF_Y_ADD5_Z315: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => DIFF_Y_ADD5,
dataa => XYNEWREG(5),
datab => XYOLDREG(5),
cin => DIFF_Y_CARRY_4);
\Y_OUT_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_1,
dataa => XYOLDREG(0),
datab => XYNEWREG(0),
datac => UN1_X_OUT8_1);
\X_OUT_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_2,
dataa => XYOLDREG(6),
datab => XYNEWREG(6),
datac => UN1_X_OUT8_0);
\Y_IN_DRAW_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_IN_DRAW(0),
dataa => STATE(5),
datab => XYNEWREG(0),
datac => XYOLDREG(0));
\Y_OUT_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_3,
dataa => XYOLDREG(5),
datab => XYNEWREG(5),
datac => UN1_X_OUT8_1);
\Y_OUT_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_4,
dataa => XYOLDREG(3),
datab => XYNEWREG(3),
datac => UN1_X_OUT8_1);
\X_OUT_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_5,
dataa => XYOLDREG(7),
datab => XYNEWREG(7),
datac => UN1_X_OUT8_0);
\X_IN_DRAW_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_IN_DRAW(2),
dataa => STATE(5),
datab => XYNEWREG(8),
datac => XYOLDREG(8));
\X_IN_DRAW_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_IN_DRAW(1),
dataa => STATE(5),
datab => XYNEWREG(7),
datac => XYOLDREG(7));
FSMCOMB_UN1_XYNEWREG_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => UN1_XYNEWREG_2,
dataa => XYOLDREG(8),
datab => XYNEWREG(8));
\X_IN_DRAW_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_IN_DRAW(5),
dataa => STATE(5),
datab => XYNEWREG(11),
datac => XYOLDREG(11));
\X_IN_DRAW_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_IN_DRAW(3),
dataa => STATE(5),
datab => XYNEWREG(9),
datac => XYOLDREG(9));
\X_IN_DRAW_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_IN_DRAW(4),
dataa => STATE(5),
datab => XYNEWREG(10),
datac => XYOLDREG(10));
\X_OUT_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_6,
dataa => XYOLDREG(8),
datab => XYNEWREG(8),
datac => UN1_X_OUT8_0);
\X_OUT_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_7,
dataa => XYOLDREG(9),
datab => XYNEWREG(9),
datac => UN1_X_OUT8_0);
\X_OUT_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_8,
dataa => XYOLDREG(10),
datab => XYNEWREG(10),
datac => UN1_X_OUT8_0);
\X_OUT_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_9,
dataa => XYOLDREG(11),
datab => XYNEWREG(11),
datac => UN1_X_OUT8_0);
\Y_OUT_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_10,
dataa => XYOLDREG(1),
datab => XYNEWREG(1),
datac => UN1_X_OUT8_1);
\Y_OUT_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_11,
dataa => XYOLDREG(2),
datab => XYNEWREG(2),
datac => UN1_X_OUT8_1);
\Y_OUT_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => NN_12,
dataa => XYOLDREG(4),
datab => XYNEWREG(4),
datac => UN1_X_OUT8_1);
OUTMUX_X_OUT8_I_A2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => X_OUT8_I_A2,
dataa => STATE_I_14,
datab => STATE(10));
CLEAR_CMD_I_A2_Z336: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => CLEAR_CMD_I_A2,
dataa => STATE(0),
datab => STATE(1));
STARTCMD_I_A4_0_3_Z337: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => STARTCMD_I_A4_0_3,
dataa => STATE(5),
datab => STATE(3));
OUTMUX_X_OUT10_I_A4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => X_OUT10_I_A4,
dataa => STATE(6),
datab => STATE(4),
datac => STATE(5));
STARTCMD_I_A4_0_2_Z339: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => STARTCMD_I_A4_0_2,
dataa => STATE(0),
datab => STATE(2),
datac => STATE(3),
datad => STATE(1));
\STATE_RNO_10_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => \STATE_SRSTS_0_A4_0_10__G0\,
dataa => dav_c,
datab => reset_c,
datac => STATE_I_14,
datad => rcb_state_i_0);
\STATE_RNO_9_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => \STATE_SRSTS_0_A4_0_9__G0\,
dataa => reset_c,
datab => OPREG(0),
datac => OPREG(1),
datad => STATE(10));
STARTCMD_I_A4_0_1_Z342: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => STARTCMD_I_A4_0_1,
dataa => STATE(7),
datab => STATE(8),
datac => STATE(4),
datad => STATE(5));
HOSTCMD2RCBCMD_RCBCMD9_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000000001001")
port map (
combout => RCBCMD9_0,
dataa => XYNEWREG(11),
datab => XYOLDREG(11),
datac => XYNEWREG(10),
datad => XYOLDREG(10));
HOSTCMD2RCBCMD_RCBCMD9_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000000001001")
port map (
combout => RCBCMD9_1,
dataa => XYNEWREG(1),
datab => XYOLDREG(1),
datac => XYNEWREG(0),
datad => XYOLDREG(0));
HOSTCMD2RCBCMD_RCBCMD9_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000000001001")
port map (
combout => RCBCMD9_2,
dataa => XYNEWREG(3),
datab => XYOLDREG(3),
datac => XYNEWREG(2),
datad => XYOLDREG(2));
HOSTCMD2RCBCMD_RCBCMD9_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000000001001")
port map (
combout => RCBCMD9_3,
dataa => XYNEWREG(5),
datab => XYOLDREG(5),
datac => XYNEWREG(4),
datad => XYOLDREG(4));
HOSTCMD2RCBCMD_RCBCMD9_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000000001001")
port map (
combout => RCBCMD9_4,
dataa => XYNEWREG(7),
datab => XYOLDREG(7),
datac => XYNEWREG(6),
datad => XYOLDREG(6));
\STATE_SRSTS_I_O2_0_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001111110011111")
port map (
combout => STATE_SRSTS_I_O2_0(8),
dataa => OPREG(0),
datab => OPREG(1),
datac => STATE(10));
\RCBCMD_0_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000100011111")
port map (
combout => NN_13,
dataa => PENREG_15,
datab => PENREG_16,
datac => OPREG(0),
datad => OPREG(1));
\STATE_NSS_I_I_A4_0_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => STATE_NSS_I_I_A4_0_0(0),
dataa => STATE(2),
datab => STATE(3),
datac => STATE(1));
\STATE_NSS_I_I_A4_0_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000100")
port map (
combout => STATE_NSS_I_I_A4_0_1(0),
dataa => STATE(10),
datab => STATE_I_14,
datac => rcb_state_i_0,
datad => STATE(8));
INF_ABS0_A_0_SUM3_Z352: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000111111110")
port map (
combout => INF_ABS0_A_0_SUM3,
dataa => DIFF_X_ADD0,
datab => DIFF_X_ADD1,
datac => DIFF_X_ADD2,
datad => DIFF_X_ADD3);
INF_ABS0_A_0_ANC3_Z353: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => INF_ABS0_A_0_ANC3,
dataa => DIFF_X_ADD0,
datab => DIFF_X_ADD1,
datac => DIFF_X_ADD2,
datad => DIFF_X_ADD3);
\OCTANTCOMB_OP_ABS_INF_ABS0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111011110000")
port map (
combout => INF_ABS0(2),
dataa => DIFF_X_ADD0,
datab => DIFF_X_ADD1,
datac => DIFF_X_ADD2,
datad => LT5);
INF_ABS1_A_1_SUM3_Z355: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000111111110")
port map (
combout => INF_ABS1_A_1_SUM3,
dataa => DIFF_Y_ADD0,
datab => DIFF_Y_ADD1,
datac => DIFF_Y_ADD2,
datad => DIFF_Y_ADD3);
INF_ABS1_A_1_ANC3_Z356: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => INF_ABS1_A_1_ANC3,
dataa => DIFF_Y_ADD0,
datab => DIFF_Y_ADD1,
datac => DIFF_Y_ADD2,
datad => DIFF_Y_ADD3);
\OCTANTCOMB_OP_ABS_INF_ABS1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111011110000")
port map (
combout => INF_ABS1(2),
dataa => DIFF_Y_ADD0,
datab => DIFF_Y_ADD1,
datac => DIFF_Y_ADD2,
datad => LT5_0);
\Y_OUT_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => y_out_0,
dataa => NEGY,
datab => UN1_XY_I_1(11),
datac => X_OUT10_I_A4,
datad => NN_1);
\X_OUT_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => x_out_0,
dataa => NEGX,
datab => UN1_XY_I_1(5),
datac => X_OUT10_I_A4,
datad => NN_2);
\Y_OUT_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => y_out_5,
dataa => NEGY,
datab => UN1_XY_I_1(6),
datac => X_OUT10_I_A4,
datad => NN_3);
\Y_OUT_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => y_out_3,
dataa => NEGY,
datab => UN1_XY_I_1(8),
datac => X_OUT10_I_A4,
datad => NN_4);
\X_OUT_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => x_out_1,
dataa => NEGX,
datab => UN1_XY_I_1(4),
datac => X_OUT10_I_A4,
datad => NN_5);
\STATE_I_RNIAV1J_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110011001110")
port map (
combout => \OPREG_0_0_0__G0_I_0\,
dataa => dav_c,
datab => reset_c,
datac => rcb_state_i_0,
datad => STATE_I_14);
\X_OUT_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => x_out_2,
dataa => NEGX,
datab => UN1_XY_I_1(3),
datac => X_OUT10_I_A4,
datad => NN_6);
\X_OUT_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => x_out_3,
dataa => NEGX,
datab => UN1_XY_I_1(2),
datac => X_OUT10_I_A4,
datad => NN_7);
\X_OUT_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => x_out_4,
dataa => NEGX,
datab => UN1_XY_I_1(1),
datac => X_OUT10_I_A4,
datad => NN_8);
\X_OUT_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => x_out_5,
dataa => NEGX,
datab => UN1_XY_I_1(0),
datac => X_OUT10_I_A4,
datad => NN_9);
\Y_OUT_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => y_out_1,
dataa => NEGY,
datab => UN1_XY_I_1(10),
datac => X_OUT10_I_A4,
datad => NN_10);
\Y_OUT_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => y_out_2,
dataa => NEGY,
datab => UN1_XY_I_1(9),
datac => X_OUT10_I_A4,
datad => NN_11);
\Y_OUT_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => y_out_4,
dataa => NEGY,
datab => UN1_XY_I_1(7),
datac => X_OUT10_I_A4,
datad => NN_12);
\STATE_RNO_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010101000000")
port map (
combout => N_314_I_0_G0,
dataa => reset_c,
datab => STATE(7),
datac => rcb_state_i_0,
datad => STATE(8));
HOSTCMD2RCBCMD_RCBCMD9_8: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100100000000")
port map (
combout => RCBCMD9_8,
dataa => XYNEWREG(9),
datab => XYOLDREG(9),
datac => UN1_XYNEWREG_2,
datad => RCBCMD9_4);
\STATE_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101000101010000")
port map (
combout => N_308_I_0_G0_1,
dataa => reset_c,
datab => rcb_state_i_0,
datac => STATE(4),
datad => STATE(5));
\STATE_NSS_I_I_A4_0_2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000010000")
port map (
combout => STATE_NSS_I_I_A4_0_2_0(0),
dataa => STATE(6),
datab => STATE(5),
datac => STATE_NSS_I_I_A4_0_1(0));
STARTCMD_I_A4_2_Z375: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => STARTCMD_I_A4_2,
dataa => STATE(1),
datab => rcb_state_i_0,
datac => STATE(8),
datad => STARTCMD_I_A4_0_3);
\OCTANTCOMB_OP_ABS_INF_ABS0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS0(3),
dataa => DIFF_X_ADD3,
datab => LT5,
datac => INF_ABS0_A_0_SUM3);
\OCTANTCOMB_OP_ABS_INF_ABS1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS1(3),
dataa => DIFF_Y_ADD3,
datab => LT5_0,
datac => INF_ABS1_A_1_SUM3);
OUTMUX_X_OUT8_I_A2_RNIRCAS1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011101011101")
port map (
combout => UN1_X_OUT8_1,
dataa => X_OUT8_I_A2,
datab => CLEAR_CMD_I_A2,
datac => STARTCMD_I_A4_0_2,
datad => LT5_0);
UN1_X_OUT8_0_Z379: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011101011101")
port map (
combout => UN1_X_OUT8_0,
dataa => X_OUT8_I_A2,
datab => CLEAR_CMD_I_A2,
datac => STARTCMD_I_A4_0_2,
datad => LT5);
HOSTCMD2RCBCMD_RCBCMD9_9: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => RCBCMD9_9,
dataa => RCBCMD9_2,
datab => RCBCMD9_3,
datac => RCBCMD9_0,
datad => RCBCMD9_1);
\STATE_I_RNO_1_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001010101010101")
port map (
combout => N_298_I_0_G0_2_A,
dataa => STATE(9),
datab => OPREG(0),
datac => OPREG(1),
datad => STATE(10));
\STATE_I_RNO_0_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010100000000")
port map (
combout => N_298_I_0_G0_2,
dataa => reset_c,
datab => STATE_I_14,
datac => STATE_NSS_I_I_O2_0_X(0),
datad => N_298_I_0_G0_2_A);
\OCTANTCOMB_OP_ABS_INF_ABS0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => INF_ABS0(4),
dataa => DIFF_X_ADD4,
datab => LT5,
datac => INF_ABS0_A_0_ANC3);
\OCTANTCOMB_OP_ABS_INF_ABS1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => INF_ABS1(4),
dataa => DIFF_Y_ADD4,
datab => LT5_0,
datac => INF_ABS1_A_1_ANC3);
\OCTANTCOMB_OP_ABS_INF_ABS0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => INF_ABS0(6),
dataa => DIFF_X_ADD4,
datab => DIFF_X_ADD5,
datac => LT5,
datad => INF_ABS0_A_0_ANC3);
\OCTANTCOMB_OP_ABS_INF_ABS1_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => INF_ABS1(6),
dataa => DIFF_Y_ADD4,
datab => DIFF_Y_ADD5,
datac => LT5_0,
datad => INF_ABS1_A_1_ANC3);
\OCTANTCOMB_OP_ABS_INF_ABS0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110110000111100")
port map (
combout => INF_ABS0(5),
dataa => DIFF_X_ADD4,
datab => DIFF_X_ADD5,
datac => LT5,
datad => INF_ABS0_A_0_ANC3);
\OCTANTCOMB_OP_ABS_INF_ABS1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110110000111100")
port map (
combout => INF_ABS1(5),
dataa => DIFF_Y_ADD4,
datab => DIFF_Y_ADD5,
datac => LT5_0,
datad => INF_ABS1_A_1_ANC3);
\RCBCMD_I_A3_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010101000101010")
port map (
combout => RCBCMD_I_A3_1(0),
dataa => OPREG(1),
datab => RCBCMD9_8,
datac => RCBCMD9_9);
\STATE_SRSTS_I_O2_0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101010111010101")
port map (
combout => STATE_SRSTS_I_O2_0(6),
dataa => STATE(10),
datab => RCBCMD9_8,
datac => RCBCMD9_9);
\STATE_RNO_0_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101010101010")
port map (
combout => N_316_I_0_G4,
dataa => STATE(8),
datab => STATE_SRSTS_I_O2_0(8),
datac => RCBCMD9_8,
datad => RCBCMD9_9);
\STATE_NSS_I_I_O2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001101110011")
port map (
combout => STATE_NSS_I_I_O2(0),
dataa => STATE(5),
datab => STATE(4),
datac => UN3_X1);
\STATE_RNO_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010000000000")
port map (
combout => N_316_I_0_G0,
dataa => reset_c,
datab => rcb_state_i_0,
datac => STATE(10),
datad => N_316_I_0_G4);
\STATE_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000011110100")
port map (
combout => N_306_I_0_G4,
dataa => OPREG(0),
datab => OPREG(1),
datac => STATE(3),
datad => STATE_SRSTS_I_O2_0(6));
\STATE_RNO_0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010111010")
port map (
combout => N_312_I_0_G4,
dataa => STATE(6),
datab => OPREG(1),
datac => OPREG(0),
datad => STATE_SRSTS_I_O2_0(6));
\RCBCMD_I_O4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100110011001")
port map (
combout => rcbcmd_i_o4_0,
dataa => OPREG(0),
datab => OPREG(1),
datac => CLEAR_CMD_I_A2,
datad => RCBCMD_I_A3_1(0));
\STATE_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000011110000")
port map (
combout => N_308_I_0_G0,
dataa => rcb_state_i_0,
datab => STATE(5),
datac => N_308_I_0_G0_1,
datad => UN3_X1);
\RCBCMD_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011110000")
port map (
combout => rcbcmd_0_0,
dataa => STATE(0),
datab => STATE(1),
datac => NN_13,
datad => RCBCMD_I_A3_1(0));
\STATE_RNO_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010000000000")
port map (
combout => N_312_I_0_G0,
dataa => reset_c,
datab => rcb_state_i_0,
datac => STATE(10),
datad => N_312_I_0_G4);
\STATE_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010000000000")
port map (
combout => N_306_I_0_G0,
dataa => reset_c,
datab => rcb_state_i_0,
datac => STATE(10),
datad => N_306_I_0_G4);
STARTCMD_I_Z401: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100010001000")
port map (
combout => startcmd_i,
dataa => STARTCMD_I_A4_0_2,
datab => STARTCMD_I_A4_0_1,
datac => STARTCMD_I_A4_2,
datad => STATE_NSS_I_I_O2(0));
\STATE_I_RNO_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100110011001100")
port map (
combout => N_298_I_0_G0,
dataa => STATE_NSS_I_I_A4_0_0(0),
datab => N_298_I_0_G0_2,
datac => STATE_NSS_I_I_A4_0_2_0(0),
datad => STATE_NSS_I_I_O2(0));
\STATE_NSS_I_I_O2_0_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110111011101")
port map (
combout => STATE_NSS_I_I_O2_0_X(0),
dataa => dav_c,
datab => rcb_state_i_0);
N_300_I_0_G0_0_X_Z404: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101110111011")
port map (
combout => N_300_I_0_G0_0_X,
dataa => reset_c,
datab => rcb_state_i_0);
\OCTANTCOMB_OP_ABS_INF_ABS0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110101001101010")
port map (
combout => INF_ABS0(1),
dataa => DIFF_X_ADD1,
datab => DIFF_X_ADD0,
cin => LT5_COUT);
\OCTANTCOMB_OP_ABS_INF_ABS1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110101001101010")
port map (
combout => INF_ABS1(1),
dataa => DIFF_Y_ADD1,
datab => DIFF_Y_ADD0,
cin => LT5_COUT_0);
DIFF_Y_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => DIFF_Y_ADD0_START_COUT_0,
dataa => VCC);
DIFF_X_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => DIFF_X_ADD0_START_COUT_0,
dataa => VCC);
DAO: draw_any_octant port map (
un1_xy_i_1_5 => UN1_XY_I_1(5),
un1_xy_i_1_11 => UN1_XY_I_1(11),
un1_xy_i_1_4 => UN1_XY_I_1(4),
un1_xy_i_1_6 => UN1_XY_I_1(6),
un1_xy_i_1_8 => UN1_XY_I_1(8),
un1_xy_i_1_10 => UN1_XY_I_1(10),
un1_xy_i_1_9 => UN1_XY_I_1(9),
un1_xy_i_1_7 => UN1_XY_I_1(7),
un1_xy_i_1_3 => UN1_XY_I_1(3),
un1_xy_i_1_2 => UN1_XY_I_1(2),
un1_xy_i_1_1 => UN1_XY_I_1(1),
un1_xy_i_1_0 => UN1_XY_I_1(0),
x_in_draw_1 => X_IN_DRAW(2),
x_in_draw_0 => X_IN_DRAW(1),
x_in_draw_4 => X_IN_DRAW(5),
x_in_draw_2 => X_IN_DRAW(3),
x_in_draw_3 => X_IN_DRAW(4),
y_in_draw_0 => Y_IN_DRAW(0),
rcb_state_i_0 => rcb_state_i_0,
state_1 => STATE(6),
state_0 => STATE(5),
xyoldReg_5 => XYOLDREG(6),
xyoldReg_0 => XYOLDREG(1),
xyoldReg_1 => XYOLDREG(2),
xyoldReg_4 => XYOLDREG(5),
xyoldReg_2 => XYOLDREG(3),
xyoldReg_3 => XYOLDREG(4),
xynewReg_5 => XYNEWREG(6),
xynewReg_0 => XYNEWREG(1),
xynewReg_1 => XYNEWREG(2),
xynewReg_4 => XYNEWREG(5),
xynewReg_2 => XYNEWREG(3),
xynewReg_3 => XYNEWREG(4),
lt6 => LT6,
clk_c => clk_c,
negy => NEGY,
lt5 => LT5_0,
negx => NEGX,
lt5_0 => LT5,
lt6_cout => LT6_COUT,
un3_x1 => UN3_X1);
VCC <= '1';
GND <= '0';
state_i_0 <= STATE_I_14;
penReg_0 <= PENREG_15;
penReg_1 <= PENREG_16;
end beh;

--
library ieee, work;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.components.all;
use work.cycloneii_components.all;

entity vdp is
port(
clk :  in std_logic;
reset :  in std_logic;
hdb : in std_logic_vector(15 downto 0);
dav :  in std_logic;
hdb_busy :  out std_logic;
vdin : out std_logic_vector(15 downto 0);
vdout : in std_logic_vector(15 downto 0);
vaddr : out std_logic_vector(7 downto 0);
vwrite :  out std_logic;
finish :  out std_logic);
end vdp;

architecture beh of vdp is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal \ENTITY_RCB.RCB_STATE_I\ : std_logic_vector(5 to 5);
signal \ENTITY_DB.X_OUT\ : std_logic_vector(5 downto 0);
signal \ENTITY_DB.Y_OUT\ : std_logic_vector(5 downto 0);
signal \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\ : std_logic_vector(15 downto 0);
signal \ENTITY_DB.REG.PENREG\ : std_logic_vector(1 downto 0);
signal \ENTITY_DB.STATE_I\ : std_logic_vector(11 to 11);
signal \ENTITY_RCB.PWC2.R1.REG_ADDR\ : std_logic_vector(7 downto 0);
signal HDB_C : std_logic_vector(15 downto 0);
signal VDOUT_C : std_logic_vector(15 downto 0);
signal \ENTITY_DB.RCBCMD_I_O4\ : std_logic_vector(0 to 0);
signal \ENTITY_DB.RCBCMD_0\ : std_logic_vector(2 to 2);
signal VDINZ : std_logic_vector(15 downto 0);
signal VADDRZ : std_logic_vector(7 downto 0);
signal VCC : std_logic ;
signal GND : std_logic ;
signal \ENTITY_RCB.PWC2.N_180_I_0_A2\ : std_logic ;
signal \ENTITY_RCB.PWC.FINISH\ : std_logic ;
signal CLK_C : std_logic ;
signal RESET_C : std_logic ;
signal DAV_C : std_logic ;
signal \ENTITY_DB.STARTCMD_I\ : std_logic ;
signal CLK_INTERNAL : std_logic ;
signal RESET_INTERNAL : std_logic ;
signal HDB_INTERNAL : std_logic ;
signal HDB_INTERNAL_0 : std_logic ;
signal HDB_INTERNAL_1 : std_logic ;
signal HDB_INTERNAL_2 : std_logic ;
signal HDB_INTERNAL_3 : std_logic ;
signal HDB_INTERNAL_4 : std_logic ;
signal HDB_INTERNAL_5 : std_logic ;
signal HDB_INTERNAL_6 : std_logic ;
signal HDB_INTERNAL_7 : std_logic ;
signal HDB_INTERNAL_8 : std_logic ;
signal HDB_INTERNAL_9 : std_logic ;
signal HDB_INTERNAL_10 : std_logic ;
signal HDB_INTERNAL_11 : std_logic ;
signal HDB_INTERNAL_12 : std_logic ;
signal HDB_INTERNAL_13 : std_logic ;
signal HDB_INTERNAL_14 : std_logic ;
signal DAV_INTERNAL : std_logic ;
signal VDOUT_INTERNAL : std_logic ;
signal VDOUT_INTERNAL_0 : std_logic ;
signal VDOUT_INTERNAL_1 : std_logic ;
signal VDOUT_INTERNAL_2 : std_logic ;
signal VDOUT_INTERNAL_3 : std_logic ;
signal VDOUT_INTERNAL_4 : std_logic ;
signal VDOUT_INTERNAL_5 : std_logic ;
signal VDOUT_INTERNAL_6 : std_logic ;
signal VDOUT_INTERNAL_7 : std_logic ;
signal VDOUT_INTERNAL_8 : std_logic ;
signal VDOUT_INTERNAL_9 : std_logic ;
signal VDOUT_INTERNAL_10 : std_logic ;
signal VDOUT_INTERNAL_11 : std_logic ;
signal VDOUT_INTERNAL_12 : std_logic ;
signal VDOUT_INTERNAL_13 : std_logic ;
signal VDOUT_INTERNAL_14 : std_logic ;
signal N_1 : std_logic ;
signal N_2 : std_logic ;
signal N_3 : std_logic ;
signal N_4 : std_logic ;
signal N_5 : std_logic ;
signal N_6 : std_logic ;
signal N_7 : std_logic ;
signal N_8 : std_logic ;
signal N_9 : std_logic ;
signal N_10 : std_logic ;
signal N_11 : std_logic ;
signal N_12 : std_logic ;
signal N_13 : std_logic ;
signal N_14 : std_logic ;
signal N_15 : std_logic ;
signal N_16 : std_logic ;
signal N_17 : std_logic ;
signal N_18 : std_logic ;
signal N_19 : std_logic ;
signal N_55_0 : std_logic ;
signal N_56_0 : std_logic ;
signal N_57_0 : std_logic ;
signal N_58_0 : std_logic ;
signal N_59_0 : std_logic ;
signal N_60_0 : std_logic ;
signal N_61_0 : std_logic ;
signal N_62_0 : std_logic ;
signal N_63 : std_logic ;
signal N_64 : std_logic ;
signal N_65 : std_logic ;
signal N_66 : std_logic ;
signal N_67 : std_logic ;
signal N_68 : std_logic ;
signal N_69 : std_logic ;
signal N_70 : std_logic ;
signal N_71 : std_logic ;
signal N_37 : std_logic ;
signal N_38 : std_logic ;
signal N_39 : std_logic ;
signal N_40 : std_logic ;
signal N_41 : std_logic ;
signal N_42 : std_logic ;
signal N_43 : std_logic ;
signal N_44 : std_logic ;
signal N_45 : std_logic ;
signal N_46 : std_logic ;
signal N_47 : std_logic ;
signal N_48 : std_logic ;
signal N_49 : std_logic ;
signal N_50 : std_logic ;
signal N_51 : std_logic ;
signal N_52 : std_logic ;
signal N_72 : std_logic ;
signal N_73 : std_logic ;
signal N_74 : std_logic ;
signal N_75 : std_logic ;
signal N_76 : std_logic ;
signal N_77 : std_logic ;
signal N_78 : std_logic ;
signal N_79 : std_logic ;
signal N_80 : std_logic ;
signal N_81 : std_logic ;
signal HDB_BUSYZ : std_logic ;
signal VWRITEZ : std_logic ;
signal FINISHZ : std_logic ;
component db
port(
state_i_0 :  out std_logic;
penReg_0 :  out std_logic;
penReg_1 :  out std_logic;
hdb_c_2 :  in std_logic;
hdb_c_3 :  in std_logic;
hdb_c_4 :  in std_logic;
hdb_c_5 :  in std_logic;
hdb_c_6 :  in std_logic;
hdb_c_7 :  in std_logic;
hdb_c_8 :  in std_logic;
hdb_c_9 :  in std_logic;
hdb_c_10 :  in std_logic;
hdb_c_11 :  in std_logic;
hdb_c_12 :  in std_logic;
hdb_c_13 :  in std_logic;
hdb_c_0 :  in std_logic;
hdb_c_1 :  in std_logic;
hdb_c_14 :  in std_logic;
hdb_c_15 :  in std_logic;
rcb_state_i_0 :  in std_logic;
x_out_0 :  out std_logic;
x_out_1 :  out std_logic;
x_out_2 :  out std_logic;
x_out_3 :  out std_logic;
x_out_4 :  out std_logic;
x_out_5 :  out std_logic;
y_out_0 :  out std_logic;
y_out_5 :  out std_logic;
y_out_3 :  out std_logic;
y_out_1 :  out std_logic;
y_out_2 :  out std_logic;
y_out_4 :  out std_logic;
rcbcmd_i_o4_0 :  out std_logic;
rcbcmd_0_0 :  out std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
dav_c :  in std_logic;
startcmd_i :  out std_logic  );
end component;
component rcb
port(
rcb_state_i_0 :  out std_logic;
y_out_0 :  in std_logic;
y_out_1 :  in std_logic;
y_out_2 :  in std_logic;
y_out_3 :  in std_logic;
y_out_4 :  in std_logic;
y_out_5 :  in std_logic;
x_out_0 :  in std_logic;
x_out_1 :  in std_logic;
x_out_2 :  in std_logic;
x_out_3 :  in std_logic;
x_out_4 :  in std_logic;
x_out_5 :  in std_logic;
rcbcmd_0_0 :  in std_logic;
penReg_0 :  in std_logic;
penReg_1 :  in std_logic;
rcbcmd_i_o4_0 :  in std_logic;
state_i_0 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_13 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_0 :  in std_logic;
reg_addr_7 :  out std_logic;
reg_addr_6 :  out std_logic;
reg_addr_5 :  out std_logic;
reg_addr_4 :  out std_logic;
reg_addr_3 :  out std_logic;
reg_addr_2 :  out std_logic;
reg_addr_1 :  out std_logic;
reg_addr_0 :  out std_logic;
vdin_1_iv_0_m2_x_14 :  out std_logic;
vdin_1_iv_0_m2_x_15 :  out std_logic;
vdin_1_iv_0_m2_x_6 :  out std_logic;
vdin_1_iv_0_m2_x_7 :  out std_logic;
vdin_1_iv_0_m2_x_8 :  out std_logic;
vdin_1_iv_0_m2_x_9 :  out std_logic;
vdin_1_iv_0_m2_x_10 :  out std_logic;
vdin_1_iv_0_m2_x_11 :  out std_logic;
vdin_1_iv_0_m2_x_12 :  out std_logic;
vdin_1_iv_0_m2_x_13 :  out std_logic;
vdin_1_iv_0_m2_x_0 :  out std_logic;
vdin_1_iv_0_m2_x_1 :  out std_logic;
vdin_1_iv_0_m2_x_2 :  out std_logic;
vdin_1_iv_0_m2_x_3 :  out std_logic;
vdin_1_iv_0_m2_x_4 :  out std_logic;
vdin_1_iv_0_m2_x_5 :  out std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
dav_c :  in std_logic;
finish :  out std_logic;
N_180_i_0_a2 :  out std_logic;
startcmd_i :  in std_logic  );
end component;
begin
VCC <= '1';
GND <= '0';
\VDOUT_IN_15_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_52,
combout => VDOUT_C(15),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_14_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_51,
combout => VDOUT_C(14),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_13_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_50,
combout => VDOUT_C(13),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_12_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_49,
combout => VDOUT_C(12),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_11_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_48,
combout => VDOUT_C(11),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_10_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_47,
combout => VDOUT_C(10),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_9_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_46,
combout => VDOUT_C(9),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_8_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_45,
combout => VDOUT_C(8),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_7_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_44,
combout => VDOUT_C(7),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_6_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_43,
combout => VDOUT_C(6),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_5_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_42,
combout => VDOUT_C(5),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_4_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_41,
combout => VDOUT_C(4),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_3_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_40,
combout => VDOUT_C(3),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_2_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_39,
combout => VDOUT_C(2),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_1_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_38,
combout => VDOUT_C(1),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_0_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_37,
combout => VDOUT_C(0),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
DAV_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_19,
combout => DAV_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_15_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_18,
combout => HDB_C(15),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_14_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_17,
combout => HDB_C(14),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_13_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_16,
combout => HDB_C(13),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_12_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_15,
combout => HDB_C(12),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_11_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_14,
combout => HDB_C(11),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_10_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_13,
combout => HDB_C(10),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_9_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_12,
combout => HDB_C(9),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_8_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_11,
combout => HDB_C(8),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_7_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_10,
combout => HDB_C(7),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_6_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_9,
combout => HDB_C(6),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_5_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_8,
combout => HDB_C(5),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_4_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_7,
combout => HDB_C(4),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_3_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_6,
combout => HDB_C(3),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_2_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_5,
combout => HDB_C(2),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_1_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_4,
combout => HDB_C(1),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_0_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_3,
combout => HDB_C(0),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
RESET_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_2,
combout => RESET_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
CLK_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_1,
combout => CLK_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
FINISH_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => FINISHZ,
datain => \ENTITY_RCB.PWC.FINISH\,
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
VWRITE_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VWRITEZ,
datain => \ENTITY_RCB.PWC2.N_180_I_0_A2\,
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_7_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(7),
datain => \ENTITY_RCB.PWC2.R1.REG_ADDR\(7),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_6_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(6),
datain => \ENTITY_RCB.PWC2.R1.REG_ADDR\(6),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_5_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(5),
datain => \ENTITY_RCB.PWC2.R1.REG_ADDR\(5),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_4_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(4),
datain => \ENTITY_RCB.PWC2.R1.REG_ADDR\(4),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_3_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(3),
datain => \ENTITY_RCB.PWC2.R1.REG_ADDR\(3),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_2_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(2),
datain => \ENTITY_RCB.PWC2.R1.REG_ADDR\(2),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_1_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(1),
datain => \ENTITY_RCB.PWC2.R1.REG_ADDR\(1),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_0_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(0),
datain => \ENTITY_RCB.PWC2.R1.REG_ADDR\(0),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_15_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(15),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(15),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_14_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(14),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(14),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_13_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(13),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(13),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_12_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(12),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(12),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_11_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(11),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(11),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_10_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(10),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(10),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_9_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(9),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(9),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_8_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(8),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(8),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_7_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(7),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(7),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_6_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(6),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(6),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_5_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(5),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(5),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_4_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(4),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(4),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_3_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(3),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(3),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_2_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(2),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(2),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_1_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(1),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(1),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_0_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(0),
datain => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(0),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
HDB_BUSY_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => HDB_BUSYZ,
datain => \ENTITY_DB.STATE_I\(11),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
ENTITY_DB: db port map (
state_i_0 => \ENTITY_DB.STATE_I\(11),
penReg_0 => \ENTITY_DB.REG.PENREG\(0),
penReg_1 => \ENTITY_DB.REG.PENREG\(1),
hdb_c_2 => HDB_C(2),
hdb_c_3 => HDB_C(3),
hdb_c_4 => HDB_C(4),
hdb_c_5 => HDB_C(5),
hdb_c_6 => HDB_C(6),
hdb_c_7 => HDB_C(7),
hdb_c_8 => HDB_C(8),
hdb_c_9 => HDB_C(9),
hdb_c_10 => HDB_C(10),
hdb_c_11 => HDB_C(11),
hdb_c_12 => HDB_C(12),
hdb_c_13 => HDB_C(13),
hdb_c_0 => HDB_C(0),
hdb_c_1 => HDB_C(1),
hdb_c_14 => HDB_C(14),
hdb_c_15 => HDB_C(15),
rcb_state_i_0 => \ENTITY_RCB.RCB_STATE_I\(5),
x_out_0 => \ENTITY_DB.X_OUT\(0),
x_out_1 => \ENTITY_DB.X_OUT\(1),
x_out_2 => \ENTITY_DB.X_OUT\(2),
x_out_3 => \ENTITY_DB.X_OUT\(3),
x_out_4 => \ENTITY_DB.X_OUT\(4),
x_out_5 => \ENTITY_DB.X_OUT\(5),
y_out_0 => \ENTITY_DB.Y_OUT\(0),
y_out_5 => \ENTITY_DB.Y_OUT\(5),
y_out_3 => \ENTITY_DB.Y_OUT\(3),
y_out_1 => \ENTITY_DB.Y_OUT\(1),
y_out_2 => \ENTITY_DB.Y_OUT\(2),
y_out_4 => \ENTITY_DB.Y_OUT\(4),
rcbcmd_i_o4_0 => \ENTITY_DB.RCBCMD_I_O4\(0),
rcbcmd_0_0 => \ENTITY_DB.RCBCMD_0\(2),
clk_c => CLK_C,
reset_c => RESET_C,
dav_c => DAV_C,
startcmd_i => \ENTITY_DB.STARTCMD_I\);
ENTITY_RCB: rcb port map (
rcb_state_i_0 => \ENTITY_RCB.RCB_STATE_I\(5),
y_out_0 => \ENTITY_DB.Y_OUT\(0),
y_out_1 => \ENTITY_DB.Y_OUT\(1),
y_out_2 => \ENTITY_DB.Y_OUT\(2),
y_out_3 => \ENTITY_DB.Y_OUT\(3),
y_out_4 => \ENTITY_DB.Y_OUT\(4),
y_out_5 => \ENTITY_DB.Y_OUT\(5),
x_out_0 => \ENTITY_DB.X_OUT\(0),
x_out_1 => \ENTITY_DB.X_OUT\(1),
x_out_2 => \ENTITY_DB.X_OUT\(2),
x_out_3 => \ENTITY_DB.X_OUT\(3),
x_out_4 => \ENTITY_DB.X_OUT\(4),
x_out_5 => \ENTITY_DB.X_OUT\(5),
rcbcmd_0_0 => \ENTITY_DB.RCBCMD_0\(2),
penReg_0 => \ENTITY_DB.REG.PENREG\(0),
penReg_1 => \ENTITY_DB.REG.PENREG\(1),
rcbcmd_i_o4_0 => \ENTITY_DB.RCBCMD_I_O4\(0),
state_i_0 => \ENTITY_DB.STATE_I\(11),
vdout_c_15 => VDOUT_C(15),
vdout_c_14 => VDOUT_C(14),
vdout_c_13 => VDOUT_C(13),
vdout_c_12 => VDOUT_C(12),
vdout_c_11 => VDOUT_C(11),
vdout_c_10 => VDOUT_C(10),
vdout_c_9 => VDOUT_C(9),
vdout_c_8 => VDOUT_C(8),
vdout_c_7 => VDOUT_C(7),
vdout_c_6 => VDOUT_C(6),
vdout_c_5 => VDOUT_C(5),
vdout_c_4 => VDOUT_C(4),
vdout_c_3 => VDOUT_C(3),
vdout_c_2 => VDOUT_C(2),
vdout_c_1 => VDOUT_C(1),
vdout_c_0 => VDOUT_C(0),
reg_addr_7 => \ENTITY_RCB.PWC2.R1.REG_ADDR\(7),
reg_addr_6 => \ENTITY_RCB.PWC2.R1.REG_ADDR\(6),
reg_addr_5 => \ENTITY_RCB.PWC2.R1.REG_ADDR\(5),
reg_addr_4 => \ENTITY_RCB.PWC2.R1.REG_ADDR\(4),
reg_addr_3 => \ENTITY_RCB.PWC2.R1.REG_ADDR\(3),
reg_addr_2 => \ENTITY_RCB.PWC2.R1.REG_ADDR\(2),
reg_addr_1 => \ENTITY_RCB.PWC2.R1.REG_ADDR\(1),
reg_addr_0 => \ENTITY_RCB.PWC2.R1.REG_ADDR\(0),
vdin_1_iv_0_m2_x_14 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(14),
vdin_1_iv_0_m2_x_15 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(15),
vdin_1_iv_0_m2_x_6 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(6),
vdin_1_iv_0_m2_x_7 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(7),
vdin_1_iv_0_m2_x_8 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(8),
vdin_1_iv_0_m2_x_9 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(9),
vdin_1_iv_0_m2_x_10 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(10),
vdin_1_iv_0_m2_x_11 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(11),
vdin_1_iv_0_m2_x_12 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(12),
vdin_1_iv_0_m2_x_13 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(13),
vdin_1_iv_0_m2_x_0 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(0),
vdin_1_iv_0_m2_x_1 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(1),
vdin_1_iv_0_m2_x_2 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(2),
vdin_1_iv_0_m2_x_3 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(3),
vdin_1_iv_0_m2_x_4 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(4),
vdin_1_iv_0_m2_x_5 => \ENTITY_RCB.PWC2.VDIN_1_IV_0_M2_X\(5),
clk_c => CLK_C,
reset_c => RESET_C,
dav_c => DAV_C,
finish => \ENTITY_RCB.PWC.FINISH\,
N_180_i_0_a2 => \ENTITY_RCB.PWC2.N_180_I_0_A2\,
startcmd_i => \ENTITY_DB.STARTCMD_I\);
N_1 <= CLK_INTERNAL;
N_2 <= RESET_INTERNAL;
N_3 <= HDB_INTERNAL;
N_4 <= HDB_INTERNAL_0;
N_5 <= HDB_INTERNAL_1;
N_6 <= HDB_INTERNAL_2;
N_7 <= HDB_INTERNAL_3;
N_8 <= HDB_INTERNAL_4;
N_9 <= HDB_INTERNAL_5;
N_10 <= HDB_INTERNAL_6;
N_11 <= HDB_INTERNAL_7;
N_12 <= HDB_INTERNAL_8;
N_13 <= HDB_INTERNAL_9;
N_14 <= HDB_INTERNAL_10;
N_15 <= HDB_INTERNAL_11;
N_16 <= HDB_INTERNAL_12;
N_17 <= HDB_INTERNAL_13;
N_18 <= HDB_INTERNAL_14;
N_19 <= DAV_INTERNAL;
N_55_0 <= HDB_BUSYZ;
N_56_0 <= VDINZ(0);
N_57_0 <= VDINZ(1);
N_58_0 <= VDINZ(2);
N_59_0 <= VDINZ(3);
N_60_0 <= VDINZ(4);
N_61_0 <= VDINZ(5);
N_62_0 <= VDINZ(6);
N_63 <= VDINZ(7);
N_64 <= VDINZ(8);
N_65 <= VDINZ(9);
N_66 <= VDINZ(10);
N_67 <= VDINZ(11);
N_68 <= VDINZ(12);
N_69 <= VDINZ(13);
N_70 <= VDINZ(14);
N_71 <= VDINZ(15);
N_37 <= VDOUT_INTERNAL;
N_38 <= VDOUT_INTERNAL_0;
N_39 <= VDOUT_INTERNAL_1;
N_40 <= VDOUT_INTERNAL_2;
N_41 <= VDOUT_INTERNAL_3;
N_42 <= VDOUT_INTERNAL_4;
N_43 <= VDOUT_INTERNAL_5;
N_44 <= VDOUT_INTERNAL_6;
N_45 <= VDOUT_INTERNAL_7;
N_46 <= VDOUT_INTERNAL_8;
N_47 <= VDOUT_INTERNAL_9;
N_48 <= VDOUT_INTERNAL_10;
N_49 <= VDOUT_INTERNAL_11;
N_50 <= VDOUT_INTERNAL_12;
N_51 <= VDOUT_INTERNAL_13;
N_52 <= VDOUT_INTERNAL_14;
N_72 <= VADDRZ(0);
N_73 <= VADDRZ(1);
N_74 <= VADDRZ(2);
N_75 <= VADDRZ(3);
N_76 <= VADDRZ(4);
N_77 <= VADDRZ(5);
N_78 <= VADDRZ(6);
N_79 <= VADDRZ(7);
N_80 <= VWRITEZ;
N_81 <= FINISHZ;
hdb_busy <= N_55_0;
vdin(0) <= N_56_0;
vdin(1) <= N_57_0;
vdin(2) <= N_58_0;
vdin(3) <= N_59_0;
vdin(4) <= N_60_0;
vdin(5) <= N_61_0;
vdin(6) <= N_62_0;
vdin(7) <= N_63;
vdin(8) <= N_64;
vdin(9) <= N_65;
vdin(10) <= N_66;
vdin(11) <= N_67;
vdin(12) <= N_68;
vdin(13) <= N_69;
vdin(14) <= N_70;
vdin(15) <= N_71;
vaddr(0) <= N_72;
vaddr(1) <= N_73;
vaddr(2) <= N_74;
vaddr(3) <= N_75;
vaddr(4) <= N_76;
vaddr(5) <= N_77;
vaddr(6) <= N_78;
vaddr(7) <= N_79;
vwrite <= N_80;
finish <= N_81;
CLK_INTERNAL <= clk;
RESET_INTERNAL <= reset;
HDB_INTERNAL <= hdb(0);
HDB_INTERNAL_0 <= hdb(1);
HDB_INTERNAL_1 <= hdb(2);
HDB_INTERNAL_2 <= hdb(3);
HDB_INTERNAL_3 <= hdb(4);
HDB_INTERNAL_4 <= hdb(5);
HDB_INTERNAL_5 <= hdb(6);
HDB_INTERNAL_6 <= hdb(7);
HDB_INTERNAL_7 <= hdb(8);
HDB_INTERNAL_8 <= hdb(9);
HDB_INTERNAL_9 <= hdb(10);
HDB_INTERNAL_10 <= hdb(11);
HDB_INTERNAL_11 <= hdb(12);
HDB_INTERNAL_12 <= hdb(13);
HDB_INTERNAL_13 <= hdb(14);
HDB_INTERNAL_14 <= hdb(15);
DAV_INTERNAL <= dav;
VDOUT_INTERNAL <= vdout(0);
VDOUT_INTERNAL_0 <= vdout(1);
VDOUT_INTERNAL_1 <= vdout(2);
VDOUT_INTERNAL_2 <= vdout(3);
VDOUT_INTERNAL_3 <= vdout(4);
VDOUT_INTERNAL_4 <= vdout(5);
VDOUT_INTERNAL_5 <= vdout(6);
VDOUT_INTERNAL_6 <= vdout(7);
VDOUT_INTERNAL_7 <= vdout(8);
VDOUT_INTERNAL_8 <= vdout(9);
VDOUT_INTERNAL_9 <= vdout(10);
VDOUT_INTERNAL_10 <= vdout(11);
VDOUT_INTERNAL_11 <= vdout(12);
VDOUT_INTERNAL_12 <= vdout(13);
VDOUT_INTERNAL_13 <= vdout(14);
VDOUT_INTERNAL_14 <= vdout(15);
end beh;

