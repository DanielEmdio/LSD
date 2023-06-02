-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/13/2022 10:22:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TesteDemo IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END TesteDemo;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TesteDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Stop|s_start~0_combout\ : std_logic;
SIGNAL \Stop|s_start~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Counter|Add0~0_combout\ : std_logic;
SIGNAL \Pulse|Add0~0_combout\ : std_logic;
SIGNAL \Pulse|Add0~1\ : std_logic;
SIGNAL \Pulse|Add0~2_combout\ : std_logic;
SIGNAL \Pulse|Add0~3\ : std_logic;
SIGNAL \Pulse|Add0~4_combout\ : std_logic;
SIGNAL \Pulse|Add0~5\ : std_logic;
SIGNAL \Pulse|Add0~6_combout\ : std_logic;
SIGNAL \Pulse|Add0~7\ : std_logic;
SIGNAL \Pulse|Add0~8_combout\ : std_logic;
SIGNAL \Pulse|Add0~9\ : std_logic;
SIGNAL \Pulse|Add0~10_combout\ : std_logic;
SIGNAL \Pulse|Add0~11\ : std_logic;
SIGNAL \Pulse|Add0~12_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~5_combout\ : std_logic;
SIGNAL \Pulse|Add0~13\ : std_logic;
SIGNAL \Pulse|Add0~14_combout\ : std_logic;
SIGNAL \Pulse|Add0~15\ : std_logic;
SIGNAL \Pulse|Add0~16_combout\ : std_logic;
SIGNAL \Pulse|Add0~17\ : std_logic;
SIGNAL \Pulse|Add0~18_combout\ : std_logic;
SIGNAL \Pulse|Add0~19\ : std_logic;
SIGNAL \Pulse|Add0~20_combout\ : std_logic;
SIGNAL \Pulse|Add0~21\ : std_logic;
SIGNAL \Pulse|Add0~22_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~4_combout\ : std_logic;
SIGNAL \Pulse|Add0~23\ : std_logic;
SIGNAL \Pulse|Add0~24_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~3_combout\ : std_logic;
SIGNAL \Pulse|Add0~25\ : std_logic;
SIGNAL \Pulse|Add0~26_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~2_combout\ : std_logic;
SIGNAL \Pulse|Add0~27\ : std_logic;
SIGNAL \Pulse|Add0~28_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~1_combout\ : std_logic;
SIGNAL \Pulse|Add0~29\ : std_logic;
SIGNAL \Pulse|Add0~30_combout\ : std_logic;
SIGNAL \Pulse|Add0~31\ : std_logic;
SIGNAL \Pulse|Add0~32_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~0_combout\ : std_logic;
SIGNAL \Pulse|Add0~33\ : std_logic;
SIGNAL \Pulse|Add0~34_combout\ : std_logic;
SIGNAL \Pulse|Add0~35\ : std_logic;
SIGNAL \Pulse|Add0~36_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~6_combout\ : std_logic;
SIGNAL \Pulse|Add0~37\ : std_logic;
SIGNAL \Pulse|Add0~38_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~7_combout\ : std_logic;
SIGNAL \Pulse|Add0~39\ : std_logic;
SIGNAL \Pulse|Add0~40_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~9_combout\ : std_logic;
SIGNAL \Pulse|Add0~41\ : std_logic;
SIGNAL \Pulse|Add0~42_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~10_combout\ : std_logic;
SIGNAL \Pulse|Add0~43\ : std_logic;
SIGNAL \Pulse|Add0~44_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~11_combout\ : std_logic;
SIGNAL \Pulse|Add0~45\ : std_logic;
SIGNAL \Pulse|Add0~46_combout\ : std_logic;
SIGNAL \Pulse|Add0~47\ : std_logic;
SIGNAL \Pulse|Add0~48_combout\ : std_logic;
SIGNAL \Pulse|s_cnt~8_combout\ : std_logic;
SIGNAL \Pulse|Equal0~6_combout\ : std_logic;
SIGNAL \Pulse|Equal0~5_combout\ : std_logic;
SIGNAL \Pulse|Equal0~0_combout\ : std_logic;
SIGNAL \Pulse|Equal0~1_combout\ : std_logic;
SIGNAL \Pulse|Equal0~3_combout\ : std_logic;
SIGNAL \Pulse|Equal0~2_combout\ : std_logic;
SIGNAL \Pulse|Equal0~4_combout\ : std_logic;
SIGNAL \Pulse|Equal0~7_combout\ : std_logic;
SIGNAL \Pulse|pulse~feeder_combout\ : std_logic;
SIGNAL \Pulse|pulse~q\ : std_logic;
SIGNAL \Counter|s_count[0]~10_combout\ : std_logic;
SIGNAL \Counter|s_count[0]~11_combout\ : std_logic;
SIGNAL \Counter|Add0~1\ : std_logic;
SIGNAL \Counter|Add0~2_combout\ : std_logic;
SIGNAL \Counter|s_count[1]~8_combout\ : std_logic;
SIGNAL \Counter|s_count[1]~9_combout\ : std_logic;
SIGNAL \Counter|Add0~3\ : std_logic;
SIGNAL \Counter|Add0~4_combout\ : std_logic;
SIGNAL \Counter|s_count[6]~4_combout\ : std_logic;
SIGNAL \Counter|s_count[2]~7_combout\ : std_logic;
SIGNAL \Counter|Add0~5\ : std_logic;
SIGNAL \Counter|Add0~6_combout\ : std_logic;
SIGNAL \Counter|s_count[3]~6_combout\ : std_logic;
SIGNAL \Counter|Equal0~0_combout\ : std_logic;
SIGNAL \Counter|Add0~7\ : std_logic;
SIGNAL \Counter|Add0~8_combout\ : std_logic;
SIGNAL \Counter|s_count[4]~5_combout\ : std_logic;
SIGNAL \Counter|Add0~9\ : std_logic;
SIGNAL \Counter|Add0~10_combout\ : std_logic;
SIGNAL \Counter|s_count[5]~2_combout\ : std_logic;
SIGNAL \Counter|s_count[5]~3_combout\ : std_logic;
SIGNAL \Counter|Equal0~1_combout\ : std_logic;
SIGNAL \Counter|process_0~0_combout\ : std_logic;
SIGNAL \Counter|Add0~11\ : std_logic;
SIGNAL \Counter|Add0~12_combout\ : std_logic;
SIGNAL \Counter|s_count[6]~0_combout\ : std_logic;
SIGNAL \Counter|s_count[6]~1_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[54]~64_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[53]~65_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[52]~66_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[51]~67_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~0_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~1_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~2_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~3_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~4_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~5_combout\ : std_logic;
SIGNAL \BIN0|decOut_n~6_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~6_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~4_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~2_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~3_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~5_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~7_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~10_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~11_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~12_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~9_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~13_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~14_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~8_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~15_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~17_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~18_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~40_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~16_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~19_combout\ : std_logic;
SIGNAL \BIN1|Equal0~0_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~22_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~23_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~24_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~20_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~21_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~25_combout\ : std_logic;
SIGNAL \BIN1|Equal6~0_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~27_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~28_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~29_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~30_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~31_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~26_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~32_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~33_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~34_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~35_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~36_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~37_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~38_combout\ : std_logic;
SIGNAL \BIN1|decOut_n~39_combout\ : std_logic;
SIGNAL \Counter|s_count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Pulse|s_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN0|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~15_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~40_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~25_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~32_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~37_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN1|decOut_n~39_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X111_Y46_N2
\Stop|s_start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stop|s_start~0_combout\ = !\Stop|s_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Stop|s_start~q\,
	combout => \Stop|s_start~0_combout\);

-- Location: FF_X111_Y46_N3
\Stop|s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Stop|s_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stop|s_start~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X111_Y46_N12
\Counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Add0~0_combout\ = \Counter|s_count\(0) $ (VCC)
-- \Counter|Add0~1\ = CARRY(\Counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(0),
	datad => VCC,
	combout => \Counter|Add0~0_combout\,
	cout => \Counter|Add0~1\);

-- Location: LCCOMB_X102_Y53_N8
\Pulse|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~0_combout\ = \Pulse|s_cnt\(0) $ (VCC)
-- \Pulse|Add0~1\ = CARRY(\Pulse|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(0),
	datad => VCC,
	combout => \Pulse|Add0~0_combout\,
	cout => \Pulse|Add0~1\);

-- Location: FF_X102_Y53_N9
\Pulse|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(0));

-- Location: LCCOMB_X102_Y53_N10
\Pulse|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~2_combout\ = (\Pulse|s_cnt\(1) & (!\Pulse|Add0~1\)) # (!\Pulse|s_cnt\(1) & ((\Pulse|Add0~1\) # (GND)))
-- \Pulse|Add0~3\ = CARRY((!\Pulse|Add0~1\) # (!\Pulse|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(1),
	datad => VCC,
	cin => \Pulse|Add0~1\,
	combout => \Pulse|Add0~2_combout\,
	cout => \Pulse|Add0~3\);

-- Location: FF_X102_Y53_N11
\Pulse|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(1));

-- Location: LCCOMB_X102_Y53_N12
\Pulse|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~4_combout\ = (\Pulse|s_cnt\(2) & (\Pulse|Add0~3\ $ (GND))) # (!\Pulse|s_cnt\(2) & (!\Pulse|Add0~3\ & VCC))
-- \Pulse|Add0~5\ = CARRY((\Pulse|s_cnt\(2) & !\Pulse|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(2),
	datad => VCC,
	cin => \Pulse|Add0~3\,
	combout => \Pulse|Add0~4_combout\,
	cout => \Pulse|Add0~5\);

-- Location: FF_X102_Y53_N13
\Pulse|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(2));

-- Location: LCCOMB_X102_Y53_N14
\Pulse|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~6_combout\ = (\Pulse|s_cnt\(3) & (!\Pulse|Add0~5\)) # (!\Pulse|s_cnt\(3) & ((\Pulse|Add0~5\) # (GND)))
-- \Pulse|Add0~7\ = CARRY((!\Pulse|Add0~5\) # (!\Pulse|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(3),
	datad => VCC,
	cin => \Pulse|Add0~5\,
	combout => \Pulse|Add0~6_combout\,
	cout => \Pulse|Add0~7\);

-- Location: FF_X102_Y53_N15
\Pulse|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(3));

-- Location: LCCOMB_X102_Y53_N16
\Pulse|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~8_combout\ = (\Pulse|s_cnt\(4) & (\Pulse|Add0~7\ $ (GND))) # (!\Pulse|s_cnt\(4) & (!\Pulse|Add0~7\ & VCC))
-- \Pulse|Add0~9\ = CARRY((\Pulse|s_cnt\(4) & !\Pulse|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(4),
	datad => VCC,
	cin => \Pulse|Add0~7\,
	combout => \Pulse|Add0~8_combout\,
	cout => \Pulse|Add0~9\);

-- Location: FF_X102_Y53_N17
\Pulse|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(4));

-- Location: LCCOMB_X102_Y53_N18
\Pulse|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~10_combout\ = (\Pulse|s_cnt\(5) & (!\Pulse|Add0~9\)) # (!\Pulse|s_cnt\(5) & ((\Pulse|Add0~9\) # (GND)))
-- \Pulse|Add0~11\ = CARRY((!\Pulse|Add0~9\) # (!\Pulse|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(5),
	datad => VCC,
	cin => \Pulse|Add0~9\,
	combout => \Pulse|Add0~10_combout\,
	cout => \Pulse|Add0~11\);

-- Location: FF_X102_Y53_N19
\Pulse|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(5));

-- Location: LCCOMB_X102_Y53_N20
\Pulse|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~12_combout\ = (\Pulse|s_cnt\(6) & (\Pulse|Add0~11\ $ (GND))) # (!\Pulse|s_cnt\(6) & (!\Pulse|Add0~11\ & VCC))
-- \Pulse|Add0~13\ = CARRY((\Pulse|s_cnt\(6) & !\Pulse|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(6),
	datad => VCC,
	cin => \Pulse|Add0~11\,
	combout => \Pulse|Add0~12_combout\,
	cout => \Pulse|Add0~13\);

-- Location: LCCOMB_X102_Y53_N2
\Pulse|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~5_combout\ = (\Pulse|Add0~12_combout\ & !\Pulse|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|Add0~12_combout\,
	datad => \Pulse|Equal0~7_combout\,
	combout => \Pulse|s_cnt~5_combout\);

-- Location: FF_X102_Y53_N3
\Pulse|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(6));

-- Location: LCCOMB_X102_Y53_N22
\Pulse|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~14_combout\ = (\Pulse|s_cnt\(7) & (!\Pulse|Add0~13\)) # (!\Pulse|s_cnt\(7) & ((\Pulse|Add0~13\) # (GND)))
-- \Pulse|Add0~15\ = CARRY((!\Pulse|Add0~13\) # (!\Pulse|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(7),
	datad => VCC,
	cin => \Pulse|Add0~13\,
	combout => \Pulse|Add0~14_combout\,
	cout => \Pulse|Add0~15\);

-- Location: FF_X102_Y53_N23
\Pulse|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(7));

-- Location: LCCOMB_X102_Y53_N24
\Pulse|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~16_combout\ = (\Pulse|s_cnt\(8) & (\Pulse|Add0~15\ $ (GND))) # (!\Pulse|s_cnt\(8) & (!\Pulse|Add0~15\ & VCC))
-- \Pulse|Add0~17\ = CARRY((\Pulse|s_cnt\(8) & !\Pulse|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(8),
	datad => VCC,
	cin => \Pulse|Add0~15\,
	combout => \Pulse|Add0~16_combout\,
	cout => \Pulse|Add0~17\);

-- Location: FF_X102_Y53_N25
\Pulse|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(8));

-- Location: LCCOMB_X102_Y53_N26
\Pulse|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~18_combout\ = (\Pulse|s_cnt\(9) & (!\Pulse|Add0~17\)) # (!\Pulse|s_cnt\(9) & ((\Pulse|Add0~17\) # (GND)))
-- \Pulse|Add0~19\ = CARRY((!\Pulse|Add0~17\) # (!\Pulse|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(9),
	datad => VCC,
	cin => \Pulse|Add0~17\,
	combout => \Pulse|Add0~18_combout\,
	cout => \Pulse|Add0~19\);

-- Location: FF_X102_Y53_N27
\Pulse|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(9));

-- Location: LCCOMB_X102_Y53_N28
\Pulse|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~20_combout\ = (\Pulse|s_cnt\(10) & (\Pulse|Add0~19\ $ (GND))) # (!\Pulse|s_cnt\(10) & (!\Pulse|Add0~19\ & VCC))
-- \Pulse|Add0~21\ = CARRY((\Pulse|s_cnt\(10) & !\Pulse|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(10),
	datad => VCC,
	cin => \Pulse|Add0~19\,
	combout => \Pulse|Add0~20_combout\,
	cout => \Pulse|Add0~21\);

-- Location: FF_X102_Y53_N29
\Pulse|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(10));

-- Location: LCCOMB_X102_Y53_N30
\Pulse|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~22_combout\ = (\Pulse|s_cnt\(11) & (!\Pulse|Add0~21\)) # (!\Pulse|s_cnt\(11) & ((\Pulse|Add0~21\) # (GND)))
-- \Pulse|Add0~23\ = CARRY((!\Pulse|Add0~21\) # (!\Pulse|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(11),
	datad => VCC,
	cin => \Pulse|Add0~21\,
	combout => \Pulse|Add0~22_combout\,
	cout => \Pulse|Add0~23\);

-- Location: LCCOMB_X102_Y53_N0
\Pulse|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~4_combout\ = (\Pulse|Add0~22_combout\ & !\Pulse|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|Add0~22_combout\,
	datad => \Pulse|Equal0~7_combout\,
	combout => \Pulse|s_cnt~4_combout\);

-- Location: FF_X102_Y53_N1
\Pulse|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(11));

-- Location: LCCOMB_X102_Y52_N0
\Pulse|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~24_combout\ = (\Pulse|s_cnt\(12) & (\Pulse|Add0~23\ $ (GND))) # (!\Pulse|s_cnt\(12) & (!\Pulse|Add0~23\ & VCC))
-- \Pulse|Add0~25\ = CARRY((\Pulse|s_cnt\(12) & !\Pulse|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(12),
	datad => VCC,
	cin => \Pulse|Add0~23\,
	combout => \Pulse|Add0~24_combout\,
	cout => \Pulse|Add0~25\);

-- Location: LCCOMB_X103_Y52_N12
\Pulse|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~3_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|Equal0~7_combout\,
	datac => \Pulse|Add0~24_combout\,
	combout => \Pulse|s_cnt~3_combout\);

-- Location: FF_X103_Y52_N13
\Pulse|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(12));

-- Location: LCCOMB_X102_Y52_N2
\Pulse|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~26_combout\ = (\Pulse|s_cnt\(13) & (!\Pulse|Add0~25\)) # (!\Pulse|s_cnt\(13) & ((\Pulse|Add0~25\) # (GND)))
-- \Pulse|Add0~27\ = CARRY((!\Pulse|Add0~25\) # (!\Pulse|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(13),
	datad => VCC,
	cin => \Pulse|Add0~25\,
	combout => \Pulse|Add0~26_combout\,
	cout => \Pulse|Add0~27\);

-- Location: LCCOMB_X103_Y52_N28
\Pulse|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~2_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|Equal0~7_combout\,
	datad => \Pulse|Add0~26_combout\,
	combout => \Pulse|s_cnt~2_combout\);

-- Location: FF_X103_Y52_N29
\Pulse|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(13));

-- Location: LCCOMB_X102_Y52_N4
\Pulse|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~28_combout\ = (\Pulse|s_cnt\(14) & (\Pulse|Add0~27\ $ (GND))) # (!\Pulse|s_cnt\(14) & (!\Pulse|Add0~27\ & VCC))
-- \Pulse|Add0~29\ = CARRY((\Pulse|s_cnt\(14) & !\Pulse|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(14),
	datad => VCC,
	cin => \Pulse|Add0~27\,
	combout => \Pulse|Add0~28_combout\,
	cout => \Pulse|Add0~29\);

-- Location: LCCOMB_X103_Y52_N2
\Pulse|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~1_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|Equal0~7_combout\,
	datac => \Pulse|Add0~28_combout\,
	combout => \Pulse|s_cnt~1_combout\);

-- Location: FF_X103_Y52_N3
\Pulse|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(14));

-- Location: LCCOMB_X102_Y52_N6
\Pulse|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~30_combout\ = (\Pulse|s_cnt\(15) & (!\Pulse|Add0~29\)) # (!\Pulse|s_cnt\(15) & ((\Pulse|Add0~29\) # (GND)))
-- \Pulse|Add0~31\ = CARRY((!\Pulse|Add0~29\) # (!\Pulse|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(15),
	datad => VCC,
	cin => \Pulse|Add0~29\,
	combout => \Pulse|Add0~30_combout\,
	cout => \Pulse|Add0~31\);

-- Location: FF_X102_Y52_N7
\Pulse|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(15));

-- Location: LCCOMB_X102_Y52_N8
\Pulse|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~32_combout\ = (\Pulse|s_cnt\(16) & (\Pulse|Add0~31\ $ (GND))) # (!\Pulse|s_cnt\(16) & (!\Pulse|Add0~31\ & VCC))
-- \Pulse|Add0~33\ = CARRY((\Pulse|s_cnt\(16) & !\Pulse|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(16),
	datad => VCC,
	cin => \Pulse|Add0~31\,
	combout => \Pulse|Add0~32_combout\,
	cout => \Pulse|Add0~33\);

-- Location: LCCOMB_X102_Y52_N26
\Pulse|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~0_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|Equal0~7_combout\,
	datac => \Pulse|Add0~32_combout\,
	combout => \Pulse|s_cnt~0_combout\);

-- Location: FF_X102_Y52_N27
\Pulse|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(16));

-- Location: LCCOMB_X102_Y52_N10
\Pulse|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~34_combout\ = (\Pulse|s_cnt\(17) & (!\Pulse|Add0~33\)) # (!\Pulse|s_cnt\(17) & ((\Pulse|Add0~33\) # (GND)))
-- \Pulse|Add0~35\ = CARRY((!\Pulse|Add0~33\) # (!\Pulse|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(17),
	datad => VCC,
	cin => \Pulse|Add0~33\,
	combout => \Pulse|Add0~34_combout\,
	cout => \Pulse|Add0~35\);

-- Location: FF_X102_Y52_N11
\Pulse|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(17));

-- Location: LCCOMB_X102_Y52_N12
\Pulse|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~36_combout\ = (\Pulse|s_cnt\(18) & (\Pulse|Add0~35\ $ (GND))) # (!\Pulse|s_cnt\(18) & (!\Pulse|Add0~35\ & VCC))
-- \Pulse|Add0~37\ = CARRY((\Pulse|s_cnt\(18) & !\Pulse|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(18),
	datad => VCC,
	cin => \Pulse|Add0~35\,
	combout => \Pulse|Add0~36_combout\,
	cout => \Pulse|Add0~37\);

-- Location: LCCOMB_X102_Y52_N28
\Pulse|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~6_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|Equal0~7_combout\,
	datad => \Pulse|Add0~36_combout\,
	combout => \Pulse|s_cnt~6_combout\);

-- Location: FF_X102_Y52_N29
\Pulse|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(18));

-- Location: LCCOMB_X102_Y52_N14
\Pulse|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~38_combout\ = (\Pulse|s_cnt\(19) & (!\Pulse|Add0~37\)) # (!\Pulse|s_cnt\(19) & ((\Pulse|Add0~37\) # (GND)))
-- \Pulse|Add0~39\ = CARRY((!\Pulse|Add0~37\) # (!\Pulse|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(19),
	datad => VCC,
	cin => \Pulse|Add0~37\,
	combout => \Pulse|Add0~38_combout\,
	cout => \Pulse|Add0~39\);

-- Location: LCCOMB_X103_Y52_N6
\Pulse|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~7_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|Equal0~7_combout\,
	datad => \Pulse|Add0~38_combout\,
	combout => \Pulse|s_cnt~7_combout\);

-- Location: FF_X103_Y52_N7
\Pulse|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(19));

-- Location: LCCOMB_X102_Y52_N16
\Pulse|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~40_combout\ = (\Pulse|s_cnt\(20) & (\Pulse|Add0~39\ $ (GND))) # (!\Pulse|s_cnt\(20) & (!\Pulse|Add0~39\ & VCC))
-- \Pulse|Add0~41\ = CARRY((\Pulse|s_cnt\(20) & !\Pulse|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(20),
	datad => VCC,
	cin => \Pulse|Add0~39\,
	combout => \Pulse|Add0~40_combout\,
	cout => \Pulse|Add0~41\);

-- Location: LCCOMB_X103_Y52_N4
\Pulse|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~9_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|Equal0~7_combout\,
	datac => \Pulse|Add0~40_combout\,
	combout => \Pulse|s_cnt~9_combout\);

-- Location: FF_X103_Y52_N5
\Pulse|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(20));

-- Location: LCCOMB_X102_Y52_N18
\Pulse|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~42_combout\ = (\Pulse|s_cnt\(21) & (!\Pulse|Add0~41\)) # (!\Pulse|s_cnt\(21) & ((\Pulse|Add0~41\) # (GND)))
-- \Pulse|Add0~43\ = CARRY((!\Pulse|Add0~41\) # (!\Pulse|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(21),
	datad => VCC,
	cin => \Pulse|Add0~41\,
	combout => \Pulse|Add0~42_combout\,
	cout => \Pulse|Add0~43\);

-- Location: LCCOMB_X102_Y52_N30
\Pulse|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~10_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|Equal0~7_combout\,
	datad => \Pulse|Add0~42_combout\,
	combout => \Pulse|s_cnt~10_combout\);

-- Location: FF_X102_Y52_N31
\Pulse|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(21));

-- Location: LCCOMB_X102_Y52_N20
\Pulse|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~44_combout\ = (\Pulse|s_cnt\(22) & (\Pulse|Add0~43\ $ (GND))) # (!\Pulse|s_cnt\(22) & (!\Pulse|Add0~43\ & VCC))
-- \Pulse|Add0~45\ = CARRY((\Pulse|s_cnt\(22) & !\Pulse|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Pulse|s_cnt\(22),
	datad => VCC,
	cin => \Pulse|Add0~43\,
	combout => \Pulse|Add0~44_combout\,
	cout => \Pulse|Add0~45\);

-- Location: LCCOMB_X103_Y52_N22
\Pulse|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~11_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|Equal0~7_combout\,
	datad => \Pulse|Add0~44_combout\,
	combout => \Pulse|s_cnt~11_combout\);

-- Location: FF_X103_Y52_N23
\Pulse|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(22));

-- Location: LCCOMB_X102_Y52_N22
\Pulse|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~46_combout\ = (\Pulse|s_cnt\(23) & (!\Pulse|Add0~45\)) # (!\Pulse|s_cnt\(23) & ((\Pulse|Add0~45\) # (GND)))
-- \Pulse|Add0~47\ = CARRY((!\Pulse|Add0~45\) # (!\Pulse|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(23),
	datad => VCC,
	cin => \Pulse|Add0~45\,
	combout => \Pulse|Add0~46_combout\,
	cout => \Pulse|Add0~47\);

-- Location: FF_X102_Y52_N23
\Pulse|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(23));

-- Location: LCCOMB_X102_Y52_N24
\Pulse|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Add0~48_combout\ = \Pulse|Add0~47\ $ (!\Pulse|s_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Pulse|s_cnt\(24),
	cin => \Pulse|Add0~47\,
	combout => \Pulse|Add0~48_combout\);

-- Location: LCCOMB_X103_Y52_N26
\Pulse|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|s_cnt~8_combout\ = (!\Pulse|Equal0~7_combout\ & \Pulse|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|Equal0~7_combout\,
	datad => \Pulse|Add0~48_combout\,
	combout => \Pulse|s_cnt~8_combout\);

-- Location: FF_X103_Y52_N27
\Pulse|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|s_cnt\(24));

-- Location: LCCOMB_X103_Y52_N16
\Pulse|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Equal0~6_combout\ = (\Pulse|s_cnt\(22) & (!\Pulse|s_cnt\(23) & (\Pulse|s_cnt\(20) & \Pulse|s_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(22),
	datab => \Pulse|s_cnt\(23),
	datac => \Pulse|s_cnt\(20),
	datad => \Pulse|s_cnt\(21),
	combout => \Pulse|Equal0~6_combout\);

-- Location: LCCOMB_X103_Y52_N8
\Pulse|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Equal0~5_combout\ = (!\Pulse|s_cnt\(17) & (\Pulse|s_cnt\(0) & (\Pulse|s_cnt\(18) & \Pulse|s_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(17),
	datab => \Pulse|s_cnt\(0),
	datac => \Pulse|s_cnt\(18),
	datad => \Pulse|s_cnt\(19),
	combout => \Pulse|Equal0~5_combout\);

-- Location: LCCOMB_X103_Y52_N10
\Pulse|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Equal0~0_combout\ = (\Pulse|s_cnt\(13) & (!\Pulse|s_cnt\(15) & (\Pulse|s_cnt\(16) & \Pulse|s_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(13),
	datab => \Pulse|s_cnt\(15),
	datac => \Pulse|s_cnt\(16),
	datad => \Pulse|s_cnt\(14),
	combout => \Pulse|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y52_N18
\Pulse|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Equal0~1_combout\ = (\Pulse|s_cnt\(11) & (!\Pulse|s_cnt\(9) & (!\Pulse|s_cnt\(10) & \Pulse|s_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(11),
	datab => \Pulse|s_cnt\(9),
	datac => \Pulse|s_cnt\(10),
	datad => \Pulse|s_cnt\(12),
	combout => \Pulse|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y53_N6
\Pulse|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Equal0~3_combout\ = (\Pulse|s_cnt\(1) & (\Pulse|s_cnt\(4) & (\Pulse|s_cnt\(3) & \Pulse|s_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(1),
	datab => \Pulse|s_cnt\(4),
	datac => \Pulse|s_cnt\(3),
	datad => \Pulse|s_cnt\(2),
	combout => \Pulse|Equal0~3_combout\);

-- Location: LCCOMB_X102_Y53_N4
\Pulse|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Equal0~2_combout\ = (!\Pulse|s_cnt\(7) & (!\Pulse|s_cnt\(6) & (\Pulse|s_cnt\(5) & !\Pulse|s_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(7),
	datab => \Pulse|s_cnt\(6),
	datac => \Pulse|s_cnt\(5),
	datad => \Pulse|s_cnt\(8),
	combout => \Pulse|Equal0~2_combout\);

-- Location: LCCOMB_X103_Y52_N24
\Pulse|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Equal0~4_combout\ = (\Pulse|Equal0~0_combout\ & (\Pulse|Equal0~1_combout\ & (\Pulse|Equal0~3_combout\ & \Pulse|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|Equal0~0_combout\,
	datab => \Pulse|Equal0~1_combout\,
	datac => \Pulse|Equal0~3_combout\,
	datad => \Pulse|Equal0~2_combout\,
	combout => \Pulse|Equal0~4_combout\);

-- Location: LCCOMB_X103_Y52_N30
\Pulse|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|Equal0~7_combout\ = (\Pulse|s_cnt\(24) & (\Pulse|Equal0~6_combout\ & (\Pulse|Equal0~5_combout\ & \Pulse|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|s_cnt\(24),
	datab => \Pulse|Equal0~6_combout\,
	datac => \Pulse|Equal0~5_combout\,
	datad => \Pulse|Equal0~4_combout\,
	combout => \Pulse|Equal0~7_combout\);

-- Location: LCCOMB_X103_Y52_N20
\Pulse|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pulse|pulse~feeder_combout\ = \Pulse|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|Equal0~7_combout\,
	combout => \Pulse|pulse~feeder_combout\);

-- Location: FF_X103_Y52_N21
\Pulse|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Pulse|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pulse|pulse~q\);

-- Location: LCCOMB_X112_Y46_N28
\Counter|s_count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[0]~10_combout\ = (\Pulse|pulse~q\ & (\Counter|Add0~0_combout\)) # (!\Pulse|pulse~q\ & ((\Counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|Add0~0_combout\,
	datac => \Counter|s_count\(0),
	datad => \Pulse|pulse~q\,
	combout => \Counter|s_count[0]~10_combout\);

-- Location: LCCOMB_X111_Y46_N6
\Counter|s_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[0]~11_combout\ = (!\Counter|process_0~0_combout\ & ((\Stop|s_start~q\ & ((\Counter|s_count[0]~10_combout\))) # (!\Stop|s_start~q\ & (\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stop|s_start~q\,
	datab => \Counter|process_0~0_combout\,
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count[0]~10_combout\,
	combout => \Counter|s_count[0]~11_combout\);

-- Location: FF_X111_Y46_N7
\Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(0));

-- Location: LCCOMB_X111_Y46_N14
\Counter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Add0~2_combout\ = (\Counter|s_count\(1) & (!\Counter|Add0~1\)) # (!\Counter|s_count\(1) & ((\Counter|Add0~1\) # (GND)))
-- \Counter|Add0~3\ = CARRY((!\Counter|Add0~1\) # (!\Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(1),
	datad => VCC,
	cin => \Counter|Add0~1\,
	combout => \Counter|Add0~2_combout\,
	cout => \Counter|Add0~3\);

-- Location: LCCOMB_X112_Y46_N6
\Counter|s_count[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[1]~8_combout\ = (\Pulse|pulse~q\ & ((\Counter|Add0~2_combout\))) # (!\Pulse|pulse~q\ & (\Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datac => \Counter|Add0~2_combout\,
	datad => \Pulse|pulse~q\,
	combout => \Counter|s_count[1]~8_combout\);

-- Location: LCCOMB_X111_Y46_N8
\Counter|s_count[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[1]~9_combout\ = (!\Counter|process_0~0_combout\ & ((\Stop|s_start~q\ & (\Counter|s_count[1]~8_combout\)) # (!\Stop|s_start~q\ & ((\Counter|s_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count[1]~8_combout\,
	datab => \Counter|process_0~0_combout\,
	datac => \Counter|s_count\(1),
	datad => \Stop|s_start~q\,
	combout => \Counter|s_count[1]~9_combout\);

-- Location: FF_X111_Y46_N9
\Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(1));

-- Location: LCCOMB_X111_Y46_N16
\Counter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Add0~4_combout\ = (\Counter|s_count\(2) & (\Counter|Add0~3\ $ (GND))) # (!\Counter|s_count\(2) & (!\Counter|Add0~3\ & VCC))
-- \Counter|Add0~5\ = CARRY((\Counter|s_count\(2) & !\Counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datad => VCC,
	cin => \Counter|Add0~3\,
	combout => \Counter|Add0~4_combout\,
	cout => \Counter|Add0~5\);

-- Location: LCCOMB_X111_Y46_N10
\Counter|s_count[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[6]~4_combout\ = (\Pulse|pulse~q\ & \Stop|s_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pulse|pulse~q\,
	datad => \Stop|s_start~q\,
	combout => \Counter|s_count[6]~4_combout\);

-- Location: LCCOMB_X111_Y46_N30
\Counter|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[2]~7_combout\ = (!\Counter|process_0~0_combout\ & ((\Counter|s_count[6]~4_combout\ & (\Counter|Add0~4_combout\)) # (!\Counter|s_count[6]~4_combout\ & ((\Counter|s_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|Add0~4_combout\,
	datab => \Counter|process_0~0_combout\,
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count[6]~4_combout\,
	combout => \Counter|s_count[2]~7_combout\);

-- Location: FF_X111_Y46_N31
\Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(2));

-- Location: LCCOMB_X111_Y46_N18
\Counter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Add0~6_combout\ = (\Counter|s_count\(3) & (!\Counter|Add0~5\)) # (!\Counter|s_count\(3) & ((\Counter|Add0~5\) # (GND)))
-- \Counter|Add0~7\ = CARRY((!\Counter|Add0~5\) # (!\Counter|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(3),
	datad => VCC,
	cin => \Counter|Add0~5\,
	combout => \Counter|Add0~6_combout\,
	cout => \Counter|Add0~7\);

-- Location: LCCOMB_X111_Y46_N4
\Counter|s_count[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[3]~6_combout\ = (!\Counter|process_0~0_combout\ & ((\Counter|s_count[6]~4_combout\ & (\Counter|Add0~6_combout\)) # (!\Counter|s_count[6]~4_combout\ & ((\Counter|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|Add0~6_combout\,
	datab => \Counter|process_0~0_combout\,
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count[6]~4_combout\,
	combout => \Counter|s_count[3]~6_combout\);

-- Location: FF_X111_Y46_N5
\Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(3));

-- Location: LCCOMB_X112_Y46_N30
\Counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Equal0~0_combout\ = (\Counter|s_count\(6) & (!\Counter|s_count\(0) & (!\Counter|s_count\(3) & \Counter|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \Counter|s_count\(0),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count\(2),
	combout => \Counter|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y46_N20
\Counter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Add0~8_combout\ = (\Counter|s_count\(4) & (\Counter|Add0~7\ $ (GND))) # (!\Counter|s_count\(4) & (!\Counter|Add0~7\ & VCC))
-- \Counter|Add0~9\ = CARRY((\Counter|s_count\(4) & !\Counter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datad => VCC,
	cin => \Counter|Add0~7\,
	combout => \Counter|Add0~8_combout\,
	cout => \Counter|Add0~9\);

-- Location: LCCOMB_X111_Y46_N26
\Counter|s_count[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[4]~5_combout\ = (!\Counter|process_0~0_combout\ & ((\Counter|s_count[6]~4_combout\ & (\Counter|Add0~8_combout\)) # (!\Counter|s_count[6]~4_combout\ & ((\Counter|s_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|Add0~8_combout\,
	datab => \Counter|process_0~0_combout\,
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count[6]~4_combout\,
	combout => \Counter|s_count[4]~5_combout\);

-- Location: FF_X111_Y46_N27
\Counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(4));

-- Location: LCCOMB_X111_Y46_N22
\Counter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Add0~10_combout\ = (\Counter|s_count\(5) & (!\Counter|Add0~9\)) # (!\Counter|s_count\(5) & ((\Counter|Add0~9\) # (GND)))
-- \Counter|Add0~11\ = CARRY((!\Counter|Add0~9\) # (!\Counter|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datad => VCC,
	cin => \Counter|Add0~9\,
	combout => \Counter|Add0~10_combout\,
	cout => \Counter|Add0~11\);

-- Location: LCCOMB_X112_Y46_N12
\Counter|s_count[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[5]~2_combout\ = (\Pulse|pulse~q\ & ((\Counter|Add0~10_combout\))) # (!\Pulse|pulse~q\ & (\Counter|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pulse|pulse~q\,
	datab => \Counter|s_count\(5),
	datad => \Counter|Add0~10_combout\,
	combout => \Counter|s_count[5]~2_combout\);

-- Location: LCCOMB_X112_Y46_N4
\Counter|s_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[5]~3_combout\ = (!\Counter|process_0~0_combout\ & ((\Stop|s_start~q\ & (\Counter|s_count[5]~2_combout\)) # (!\Stop|s_start~q\ & ((\Counter|s_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count[5]~2_combout\,
	datab => \Counter|process_0~0_combout\,
	datac => \Counter|s_count\(5),
	datad => \Stop|s_start~q\,
	combout => \Counter|s_count[5]~3_combout\);

-- Location: FF_X112_Y46_N5
\Counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(5));

-- Location: LCCOMB_X112_Y46_N16
\Counter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Equal0~1_combout\ = (\Counter|s_count\(5) & (!\Counter|s_count\(4) & !\Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(1),
	combout => \Counter|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y46_N18
\Counter|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|process_0~0_combout\ = ((\Counter|Equal0~0_combout\ & \Counter|Equal0~1_combout\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \Counter|Equal0~0_combout\,
	datad => \Counter|Equal0~1_combout\,
	combout => \Counter|process_0~0_combout\);

-- Location: LCCOMB_X111_Y46_N24
\Counter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Add0~12_combout\ = \Counter|Add0~11\ $ (!\Counter|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Counter|s_count\(6),
	cin => \Counter|Add0~11\,
	combout => \Counter|Add0~12_combout\);

-- Location: LCCOMB_X111_Y46_N0
\Counter|s_count[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[6]~0_combout\ = (\Pulse|pulse~q\ & ((\Counter|Add0~12_combout\))) # (!\Pulse|pulse~q\ & (\Counter|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(6),
	datac => \Pulse|pulse~q\,
	datad => \Counter|Add0~12_combout\,
	combout => \Counter|s_count[6]~0_combout\);

-- Location: LCCOMB_X111_Y46_N28
\Counter|s_count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[6]~1_combout\ = (!\Counter|process_0~0_combout\ & ((\Stop|s_start~q\ & ((\Counter|s_count[6]~0_combout\))) # (!\Stop|s_start~q\ & (\Counter|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stop|s_start~q\,
	datab => \Counter|process_0~0_combout\,
	datac => \Counter|s_count\(6),
	datad => \Counter|s_count[6]~0_combout\,
	combout => \Counter|s_count[6]~1_combout\);

-- Location: FF_X111_Y46_N29
\Counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(6));

-- Location: LCCOMB_X113_Y45_N6
\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Counter|s_count\(4) $ (VCC)
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\Counter|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(4),
	datad => VCC,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X113_Y45_N8
\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Counter|s_count\(5) & (\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\Counter|s_count\(5) & 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Counter|s_count\(5) & !\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X113_Y45_N10
\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Counter|s_count\(6) & (\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\Counter|s_count\(6) & 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\Counter|s_count\(6) & !\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X113_Y45_N12
\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X113_Y45_N14
\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X113_Y45_N20
\BCD|Mod0|auto_generated|divider|divider|StageOut[36]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\);

-- Location: LCCOMB_X113_Y45_N30
\BCD|Mod0|auto_generated|divider|divider|StageOut[35]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(6),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\);

-- Location: LCCOMB_X113_Y45_N28
\BCD|Mod0|auto_generated|divider|divider|StageOut[35]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\);

-- Location: LCCOMB_X113_Y45_N4
\BCD|Mod0|auto_generated|divider|divider|StageOut[34]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\ = (\Counter|s_count\(5) & \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\);

-- Location: LCCOMB_X113_Y45_N22
\BCD|Mod0|auto_generated|divider|divider|StageOut[34]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\);

-- Location: LCCOMB_X113_Y45_N26
\BCD|Mod0|auto_generated|divider|divider|StageOut[33]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\);

-- Location: LCCOMB_X113_Y45_N0
\BCD|Mod0|auto_generated|divider|divider|StageOut[33]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(4),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\);

-- Location: LCCOMB_X113_Y45_N2
\BCD|Mod0|auto_generated|divider|divider|StageOut[32]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(3),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\);

-- Location: LCCOMB_X113_Y45_N24
\BCD|Mod0|auto_generated|divider|divider|StageOut[32]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(3),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\);

-- Location: LCCOMB_X112_Y45_N14
\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\BCD|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\BCD|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datad => VCC,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X112_Y45_N16
\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\ & 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\ & 
-- !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X112_Y45_N18
\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\BCD|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\)))))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X112_Y45_N20
\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\ & 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\ & 
-- !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X112_Y45_N22
\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\ & ((GND) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\ & (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\BCD|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X112_Y45_N24
\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X112_Y45_N30
\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\);

-- Location: LCCOMB_X112_Y45_N28
\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\);

-- Location: LCCOMB_X112_Y45_N10
\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\);

-- Location: LCCOMB_X112_Y45_N0
\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Counter|s_count\(6))) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\);

-- Location: LCCOMB_X112_Y45_N6
\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Counter|s_count\(5)))) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(5),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\);

-- Location: LCCOMB_X112_Y45_N12
\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\);

-- Location: LCCOMB_X112_Y45_N2
\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\);

-- Location: LCCOMB_X113_Y45_N16
\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Counter|s_count\(4)))) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Counter|s_count\(4),
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\);

-- Location: LCCOMB_X112_Y45_N4
\BCD|Mod0|auto_generated|divider|divider|StageOut[41]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\);

-- Location: LCCOMB_X111_Y45_N24
\BCD|Mod0|auto_generated|divider|divider|StageOut[41]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Counter|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Counter|s_count\(3),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\);

-- Location: LCCOMB_X112_Y45_N26
\BCD|Mod0|auto_generated|divider|divider|StageOut[40]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\ = (\Counter|s_count\(2) & \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|s_count\(2),
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\);

-- Location: LCCOMB_X112_Y45_N8
\BCD|Mod0|auto_generated|divider|divider|StageOut[40]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ = (\Counter|s_count\(2) & !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|s_count\(2),
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X111_Y45_N8
\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\BCD|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\BCD|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datad => VCC,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X111_Y45_N10
\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\ & 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\ & 
-- !\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X111_Y45_N12
\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\)))))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X111_Y45_N14
\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ & 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\ & 
-- !\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X111_Y45_N16
\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\))))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\) # 
-- ((\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # (GND))))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\) # ((\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X111_Y45_N18
\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ & 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\ & 
-- !\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X111_Y45_N20
\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X110_Y45_N30
\BCD|Mod0|auto_generated|divider|divider|StageOut[48]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Counter|s_count\(1),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\);

-- Location: LCCOMB_X110_Y45_N28
\BCD|Mod0|auto_generated|divider|divider|StageOut[48]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Counter|s_count\(1),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\);

-- Location: LCCOMB_X110_Y45_N8
\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\BCD|Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\BCD|Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\,
	datad => VCC,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X111_Y45_N30
\BCD|Mod0|auto_generated|divider|divider|StageOut[54]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\) # 
-- ((!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\);

-- Location: LCCOMB_X111_Y45_N28
\BCD|Mod0|auto_generated|divider|divider|StageOut[54]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[54]~64_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[54]~64_combout\);

-- Location: LCCOMB_X111_Y45_N4
\BCD|Mod0|auto_generated|divider|divider|StageOut[53]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # 
-- ((!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\);

-- Location: LCCOMB_X110_Y45_N4
\BCD|Mod0|auto_generated|divider|divider|StageOut[53]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[53]~65_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[53]~65_combout\);

-- Location: LCCOMB_X111_Y45_N2
\BCD|Mod0|auto_generated|divider|divider|StageOut[52]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\) # 
-- ((\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\);

-- Location: LCCOMB_X110_Y45_N2
\BCD|Mod0|auto_generated|divider|divider|StageOut[52]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[52]~66_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[52]~66_combout\);

-- Location: LCCOMB_X111_Y45_N6
\BCD|Mod0|auto_generated|divider|divider|StageOut[51]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[51]~67_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[51]~67_combout\);

-- Location: LCCOMB_X111_Y45_N0
\BCD|Mod0|auto_generated|divider|divider|StageOut[51]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\) # 
-- ((\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\);

-- Location: LCCOMB_X111_Y45_N22
\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Counter|s_count\(3)))) 
-- # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Counter|s_count\(3),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\);

-- Location: LCCOMB_X111_Y45_N26
\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\);

-- Location: LCCOMB_X110_Y45_N6
\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\);

-- Location: LCCOMB_X110_Y45_N24
\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Counter|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Counter|s_count\(2),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\);

-- Location: LCCOMB_X110_Y45_N10
\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\ & 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\)))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\ & 
-- !\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X110_Y45_N12
\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\)))))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X110_Y45_N14
\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|StageOut[51]~67_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\ & 
-- !\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[51]~67_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y45_N16
\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\BCD|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\) # ((\BCD|Mod0|auto_generated|divider|divider|StageOut[52]~66_combout\) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[52]~66_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X110_Y45_N18
\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\BCD|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[53]~65_combout\ & 
-- !\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[53]~65_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X110_Y45_N20
\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\BCD|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\) # ((\BCD|Mod0|auto_generated|divider|divider|StageOut[54]~64_combout\) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[54]~64_combout\,
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X110_Y45_N22
\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X110_Y45_N26
\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Counter|s_count\(1)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ 
-- & (\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Counter|s_count\(1),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\);

-- Location: LCCOMB_X110_Y45_N0
\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[50]~59_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\);

-- Location: LCCOMB_X109_Y45_N0
\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\) # 
-- ((\BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~61_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[49]~60_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\);

-- Location: LCCOMB_X110_Y46_N24
\BIN0|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~0_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & (\Counter|s_count\(0) & (\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ $ 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & (\Counter|s_count\(0) $ 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\,
	datac => \Counter|s_count\(0),
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	combout => \BIN0|decOut_n~0_combout\);

-- Location: LCCOMB_X110_Y46_N22
\BIN0|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~1_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & ((\Counter|s_count\(0) & (\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\)) # (!\Counter|s_count\(0) & 
-- ((\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\))))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\ & 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ $ (\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\,
	datac => \Counter|s_count\(0),
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	combout => \BIN0|decOut_n~1_combout\);

-- Location: LCCOMB_X110_Y46_N12
\BIN0|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~2_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\) # 
-- (!\Counter|s_count\(0))))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & (!\Counter|s_count\(0) & 
-- !\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\,
	datac => \Counter|s_count\(0),
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	combout => \BIN0|decOut_n~2_combout\);

-- Location: LCCOMB_X110_Y46_N10
\BIN0|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~3_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & ((\Counter|s_count\(0) & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\))) # (!\Counter|s_count\(0) & 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & !\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & (\Counter|s_count\(0) $ (\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\,
	datac => \Counter|s_count\(0),
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	combout => \BIN0|decOut_n~3_combout\);

-- Location: LCCOMB_X110_Y46_N4
\BIN0|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~4_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & (\Counter|s_count\(0)))) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\)) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\ & ((\Counter|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\,
	datac => \Counter|s_count\(0),
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	combout => \BIN0|decOut_n~4_combout\);

-- Location: LCCOMB_X110_Y46_N26
\BIN0|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~5_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & ((\Counter|s_count\(0)) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\)))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & (\Counter|s_count\(0) & (\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ $ 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\,
	datac => \Counter|s_count\(0),
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	combout => \BIN0|decOut_n~5_combout\);

-- Location: LCCOMB_X110_Y46_N0
\BIN0|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN0|decOut_n~6_combout\ = (\Counter|s_count\(0) & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ $ 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\)))) # (!\Counter|s_count\(0) & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\ $ 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[59]~68_combout\,
	datac => \Counter|s_count\(0),
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	combout => \BIN0|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y42_N14
\BIN1|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~6_combout\ = (\Counter|s_count\(6) & (\Counter|s_count\(5))) # (!\Counter|s_count\(6) & (!\Counter|s_count\(2) & ((!\Counter|s_count\(1)) # (!\Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datab => \Counter|s_count\(1),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(6),
	combout => \BIN1|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y42_N30
\BIN1|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~4_combout\ = (\Counter|s_count\(5) & (((\Counter|s_count\(1) & \Counter|s_count\(2))) # (!\Counter|s_count\(6)))) # (!\Counter|s_count\(5) & (!\Counter|s_count\(6) & ((\Counter|s_count\(1)) # (\Counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datab => \Counter|s_count\(1),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(6),
	combout => \BIN1|decOut_n~4_combout\);

-- Location: LCCOMB_X111_Y42_N14
\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Counter|s_count\(4) $ (VCC)
-- \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\Counter|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(4),
	datad => VCC,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X111_Y42_N16
\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Counter|s_count\(5) & (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\Counter|s_count\(5) & 
-- (!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Counter|s_count\(5) & !\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X111_Y42_N18
\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Counter|s_count\(6) & (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\Counter|s_count\(6) & 
-- (!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\Counter|s_count\(6) & !\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X111_Y42_N20
\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X111_Y42_N22
\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X111_Y42_N0
\BCD|Div0|auto_generated|divider|divider|StageOut[23]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\);

-- Location: LCCOMB_X112_Y42_N0
\BCD|Div0|auto_generated|divider|divider|StageOut[23]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(6),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X111_Y42_N30
\BCD|Div0|auto_generated|divider|divider|StageOut[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(5),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\);

-- Location: LCCOMB_X111_Y42_N24
\BCD|Div0|auto_generated|divider|divider|StageOut[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\);

-- Location: LCCOMB_X112_Y42_N6
\BCD|Div0|auto_generated|divider|divider|StageOut[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(4),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\);

-- Location: LCCOMB_X111_Y42_N2
\BCD|Div0|auto_generated|divider|divider|StageOut[21]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\);

-- Location: LCCOMB_X112_Y42_N4
\BCD|Div0|auto_generated|divider|divider|StageOut[20]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(3),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\);

-- Location: LCCOMB_X112_Y42_N26
\BCD|Div0|auto_generated|divider|divider|StageOut[20]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Counter|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(3),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\);

-- Location: LCCOMB_X111_Y42_N4
\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\BCD|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\) # (\BCD|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\)))
-- \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\BCD|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\) # (\BCD|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\,
	datad => VCC,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X111_Y42_N6
\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\BCD|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\)))) # (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\BCD|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ & 
-- (!\BCD|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\)))
-- \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ & (!\BCD|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ & 
-- !\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X111_Y42_N8
\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\BCD|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\)))) # (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\BCD|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\)))))
-- \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\BCD|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X111_Y42_N10
\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ & (!\BCD|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- !\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X111_Y42_N12
\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X110_Y42_N12
\BCD|Div0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X111_Y42_N28
\BCD|Div0|auto_generated|divider|divider|StageOut[28]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Counter|s_count\(5)))) # 
-- (!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(5),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\);

-- Location: LCCOMB_X110_Y42_N10
\BCD|Div0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X111_Y42_N26
\BCD|Div0|auto_generated|divider|divider|StageOut[27]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Counter|s_count\(4)))) # 
-- (!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Counter|s_count\(4),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\);

-- Location: LCCOMB_X110_Y42_N6
\BCD|Div0|auto_generated|divider|divider|StageOut[26]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\);

-- Location: LCCOMB_X110_Y42_N20
\BCD|Div0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\Counter|s_count\(3) & \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(3),
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X109_Y42_N26
\BCD|Div0|auto_generated|divider|divider|StageOut[25]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Counter|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Counter|s_count\(2),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\);

-- Location: LCCOMB_X109_Y42_N24
\BCD|Div0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Counter|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Counter|s_count\(2),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X110_Y42_N22
\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\BCD|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\) # (\BCD|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\BCD|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\) # (\BCD|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X110_Y42_N24
\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\BCD|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\BCD|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ & 
-- (!\BCD|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\)))
-- \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ & (!\BCD|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ & 
-- !\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X110_Y42_N26
\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\BCD|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\)))) # (!\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\BCD|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\)))))
-- \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\BCD|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X110_Y42_N28
\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ & (!\BCD|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ & 
-- !\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y42_N30
\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X110_Y42_N4
\BCD|Div0|auto_generated|divider|divider|StageOut[33]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\) # 
-- ((!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\);

-- Location: LCCOMB_X109_Y42_N18
\BCD|Div0|auto_generated|divider|divider|StageOut[33]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\);

-- Location: LCCOMB_X110_Y42_N2
\BCD|Div0|auto_generated|divider|divider|StageOut[32]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Counter|s_count\(3))) # 
-- (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Counter|s_count\(3),
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\);

-- Location: LCCOMB_X109_Y42_N20
\BCD|Div0|auto_generated|divider|divider|StageOut[32]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\);

-- Location: LCCOMB_X109_Y42_N30
\BCD|Div0|auto_generated|divider|divider|StageOut[31]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Counter|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Counter|s_count\(2),
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\);

-- Location: LCCOMB_X109_Y42_N16
\BCD|Div0|auto_generated|divider|divider|StageOut[31]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\);

-- Location: LCCOMB_X109_Y42_N22
\BCD|Div0|auto_generated|divider|divider|StageOut[30]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\ = (\Counter|s_count\(1) & \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(1),
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\);

-- Location: LCCOMB_X109_Y42_N28
\BCD|Div0|auto_generated|divider|divider|StageOut[30]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\ = (\Counter|s_count\(1) & !\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(1),
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \BCD|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\);

-- Location: LCCOMB_X109_Y42_N4
\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\BCD|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\) # (\BCD|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\,
	datad => VCC,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X109_Y42_N6
\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ & (!\BCD|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ & 
-- !\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X109_Y42_N8
\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\BCD|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\) # 
-- (\BCD|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X109_Y42_N10
\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\BCD|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ & (!\BCD|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ & 
-- !\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y42_N12
\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y42_N16
\BIN1|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~2_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BIN1|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y42_N12
\BIN1|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~3_combout\ = (\BIN1|decOut_n~2_combout\ & ((\Counter|s_count\(6) & (\Counter|s_count\(4) & \Counter|s_count\(5))) # (!\Counter|s_count\(6) & (!\Counter|s_count\(4) & !\Counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~2_combout\,
	datab => \Counter|s_count\(6),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(5),
	combout => \BIN1|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y42_N0
\BIN1|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~5_combout\ = (\BIN1|decOut_n~3_combout\) # ((\Counter|s_count\(3) & (!\Counter|s_count\(4) & \BIN1|decOut_n~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(4),
	datac => \BIN1|decOut_n~4_combout\,
	datad => \BIN1|decOut_n~3_combout\,
	combout => \BIN1|decOut_n~5_combout\);

-- Location: LCCOMB_X114_Y42_N28
\BIN1|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~7_combout\ = (\BIN1|decOut_n~5_combout\) # ((!\Counter|s_count\(3) & (\BIN1|decOut_n~6_combout\ & \Counter|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \BIN1|decOut_n~6_combout\,
	datac => \Counter|s_count\(4),
	datad => \BIN1|decOut_n~5_combout\,
	combout => \BIN1|decOut_n~7_combout\);

-- Location: LCCOMB_X112_Y42_N30
\BIN1|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~10_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BIN1|decOut_n~10_combout\);

-- Location: LCCOMB_X113_Y42_N16
\BIN1|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~11_combout\ = (\Counter|s_count\(2)) # (\Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(2),
	datad => \Counter|s_count\(1),
	combout => \BIN1|decOut_n~11_combout\);

-- Location: LCCOMB_X113_Y42_N18
\BIN1|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~12_combout\ = (\BIN1|decOut_n~10_combout\ & (!\Counter|s_count\(5) & ((!\BIN1|decOut_n~11_combout\) # (!\Counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \BIN1|decOut_n~10_combout\,
	datac => \Counter|s_count\(5),
	datad => \BIN1|decOut_n~11_combout\,
	combout => \BIN1|decOut_n~12_combout\);

-- Location: LCCOMB_X112_Y42_N8
\BIN1|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~9_combout\ = (\Counter|s_count\(5) & (((!\Counter|s_count\(3)) # (!\Counter|s_count\(2))) # (!\Counter|s_count\(1)))) # (!\Counter|s_count\(5) & ((\Counter|s_count\(3)) # ((\Counter|s_count\(1) & \Counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(3),
	combout => \BIN1|decOut_n~9_combout\);

-- Location: LCCOMB_X112_Y42_N12
\BIN1|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~13_combout\ = (\Counter|s_count\(6) & (((\Counter|s_count\(4)) # (!\BIN1|decOut_n~9_combout\)))) # (!\Counter|s_count\(6) & (\BIN1|decOut_n~12_combout\ & ((!\Counter|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~12_combout\,
	datab => \Counter|s_count\(6),
	datac => \BIN1|decOut_n~9_combout\,
	datad => \Counter|s_count\(4),
	combout => \BIN1|decOut_n~13_combout\);

-- Location: LCCOMB_X112_Y42_N22
\BIN1|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~14_combout\ = (\Counter|s_count\(5) & ((\BIN1|decOut_n~10_combout\) # (!\Counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(5),
	datac => \BIN1|decOut_n~10_combout\,
	combout => \BIN1|decOut_n~14_combout\);

-- Location: LCCOMB_X112_Y42_N18
\BIN1|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~8_combout\ = (\Counter|s_count\(5) & ((\Counter|s_count\(1)) # ((\Counter|s_count\(2)) # (\Counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(5),
	datad => \Counter|s_count\(3),
	combout => \BIN1|decOut_n~8_combout\);

-- Location: LCCOMB_X112_Y42_N20
\BIN1|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~15_combout\ = (\BIN1|decOut_n~13_combout\ & (((\BIN1|decOut_n~14_combout\)) # (!\Counter|s_count\(4)))) # (!\BIN1|decOut_n~13_combout\ & (\Counter|s_count\(4) & ((\BIN1|decOut_n~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~13_combout\,
	datab => \Counter|s_count\(4),
	datac => \BIN1|decOut_n~14_combout\,
	datad => \BIN1|decOut_n~8_combout\,
	combout => \BIN1|decOut_n~15_combout\);

-- Location: LCCOMB_X113_Y42_N6
\BIN1|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~17_combout\ = (\Counter|s_count\(2) & ((\Counter|s_count\(6) & ((\Counter|s_count\(3)))) # (!\Counter|s_count\(6) & ((!\Counter|s_count\(3)) # (!\Counter|s_count\(1)))))) # (!\Counter|s_count\(2) & (((\Counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(6),
	datad => \Counter|s_count\(3),
	combout => \BIN1|decOut_n~17_combout\);

-- Location: LCCOMB_X113_Y42_N0
\BIN1|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~18_combout\ = (\BIN1|decOut_n~17_combout\ & ((\Counter|s_count\(6) & (\BIN1|decOut_n~10_combout\ & \Counter|s_count\(5))) # (!\Counter|s_count\(6) & ((!\Counter|s_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \BIN1|decOut_n~10_combout\,
	datac => \Counter|s_count\(5),
	datad => \BIN1|decOut_n~17_combout\,
	combout => \BIN1|decOut_n~18_combout\);

-- Location: LCCOMB_X113_Y42_N30
\BIN1|decOut_n~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~40_combout\ = (\Counter|s_count\(4) & (((\BIN1|decOut_n~18_combout\)))) # (!\Counter|s_count\(4) & (!\Counter|s_count\(6) & ((\BIN1|decOut_n~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \BIN1|decOut_n~18_combout\,
	datac => \Counter|s_count\(4),
	datad => \BIN1|decOut_n~12_combout\,
	combout => \BIN1|decOut_n~40_combout\);

-- Location: LCCOMB_X113_Y42_N28
\BIN1|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~16_combout\ = (!\Counter|s_count\(6) & !\Counter|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datac => \Counter|s_count\(4),
	combout => \BIN1|decOut_n~16_combout\);

-- Location: LCCOMB_X113_Y42_N14
\BIN1|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~19_combout\ = (\Counter|s_count\(5)) # ((\BIN1|decOut_n~16_combout\ & ((!\BIN1|decOut_n~11_combout\) # (!\Counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \BIN1|decOut_n~11_combout\,
	datac => \Counter|s_count\(5),
	datad => \BIN1|decOut_n~16_combout\,
	combout => \BIN1|decOut_n~19_combout\);

-- Location: LCCOMB_X112_Y42_N10
\BIN1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|Equal0~0_combout\ = (!\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BIN1|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y42_N6
\BIN1|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~22_combout\ = (\Counter|s_count\(2) & ((\Counter|s_count\(4)) # (\Counter|s_count\(6)))) # (!\Counter|s_count\(2) & (\Counter|s_count\(4) & \Counter|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(6),
	combout => \BIN1|decOut_n~22_combout\);

-- Location: LCCOMB_X114_Y42_N16
\BIN1|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~23_combout\ = (\Counter|s_count\(1) & (!\Counter|s_count\(4) & (\Counter|s_count\(3) $ (\BIN1|decOut_n~22_combout\)))) # (!\Counter|s_count\(1) & (\Counter|s_count\(4) $ (((\Counter|s_count\(3)) # (\BIN1|decOut_n~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(1),
	datac => \Counter|s_count\(4),
	datad => \BIN1|decOut_n~22_combout\,
	combout => \BIN1|decOut_n~23_combout\);

-- Location: LCCOMB_X114_Y42_N26
\BIN1|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~24_combout\ = (\Counter|s_count\(5) & ((\BIN1|decOut_n~23_combout\))) # (!\Counter|s_count\(5) & (\BIN1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datac => \BIN1|Equal0~0_combout\,
	datad => \BIN1|decOut_n~23_combout\,
	combout => \BIN1|decOut_n~24_combout\);

-- Location: LCCOMB_X114_Y42_N10
\BIN1|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~20_combout\ = (\Counter|s_count\(3)) # ((\Counter|s_count\(2) & ((\Counter|s_count\(1)) # (\Counter|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(2),
	datab => \Counter|s_count\(1),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(3),
	combout => \BIN1|decOut_n~20_combout\);

-- Location: LCCOMB_X114_Y42_N24
\BIN1|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~21_combout\ = (!\BIN1|decOut_n~19_combout\ & ((\BIN1|decOut_n~20_combout\ & ((!\Counter|s_count\(4)))) # (!\BIN1|decOut_n~20_combout\ & (!\Counter|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~19_combout\,
	datab => \Counter|s_count\(6),
	datac => \Counter|s_count\(4),
	datad => \BIN1|decOut_n~20_combout\,
	combout => \BIN1|decOut_n~21_combout\);

-- Location: LCCOMB_X114_Y42_N4
\BIN1|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~25_combout\ = (\BIN1|decOut_n~21_combout\) # ((\BIN1|decOut_n~19_combout\ & \BIN1|decOut_n~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~19_combout\,
	datac => \BIN1|decOut_n~24_combout\,
	datad => \BIN1|decOut_n~21_combout\,
	combout => \BIN1|decOut_n~25_combout\);

-- Location: LCCOMB_X112_Y42_N24
\BIN1|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|Equal6~0_combout\ = (\BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BIN1|Equal6~0_combout\);

-- Location: LCCOMB_X113_Y42_N2
\BIN1|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~27_combout\ = (!\Counter|s_count\(4) & ((\Counter|s_count\(3)) # ((\Counter|s_count\(1) & \Counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(3),
	combout => \BIN1|decOut_n~27_combout\);

-- Location: LCCOMB_X113_Y42_N8
\BIN1|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~28_combout\ = (\BIN1|decOut_n~27_combout\) # ((\Counter|s_count\(3) & (\BIN1|decOut_n~11_combout\ & \BIN1|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \BIN1|decOut_n~11_combout\,
	datac => \BIN1|Equal6~0_combout\,
	datad => \BIN1|decOut_n~27_combout\,
	combout => \BIN1|decOut_n~28_combout\);

-- Location: LCCOMB_X113_Y42_N26
\BIN1|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~29_combout\ = (\Counter|s_count\(4) & (\Counter|s_count\(3))) # (!\Counter|s_count\(4) & ((\BIN1|Equal6~0_combout\) # ((\Counter|s_count\(3) & \BIN1|decOut_n~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \BIN1|Equal6~0_combout\,
	datac => \Counter|s_count\(4),
	datad => \BIN1|decOut_n~11_combout\,
	combout => \BIN1|decOut_n~29_combout\);

-- Location: LCCOMB_X113_Y42_N12
\BIN1|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~30_combout\ = (\Counter|s_count\(4) & ((\Counter|s_count\(2) & (\BIN1|decOut_n~29_combout\ & \Counter|s_count\(1))) # (!\Counter|s_count\(2) & (!\BIN1|decOut_n~29_combout\)))) # (!\Counter|s_count\(4) & (((\BIN1|decOut_n~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(4),
	datab => \Counter|s_count\(2),
	datac => \BIN1|decOut_n~29_combout\,
	datad => \Counter|s_count\(1),
	combout => \BIN1|decOut_n~30_combout\);

-- Location: LCCOMB_X113_Y42_N10
\BIN1|decOut_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~31_combout\ = (\Counter|s_count\(6) & ((\Counter|s_count\(5)) # ((\BIN1|decOut_n~28_combout\)))) # (!\Counter|s_count\(6) & (!\Counter|s_count\(5) & ((\BIN1|decOut_n~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(6),
	datab => \Counter|s_count\(5),
	datac => \BIN1|decOut_n~28_combout\,
	datad => \BIN1|decOut_n~30_combout\,
	combout => \BIN1|decOut_n~31_combout\);

-- Location: LCCOMB_X113_Y42_N20
\BIN1|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~26_combout\ = (\Counter|s_count\(2) & (\Counter|s_count\(4) & \Counter|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(3),
	combout => \BIN1|decOut_n~26_combout\);

-- Location: LCCOMB_X113_Y42_N4
\BIN1|decOut_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~32_combout\ = (\BIN1|decOut_n~31_combout\ & ((\BIN1|Equal6~0_combout\) # ((!\Counter|s_count\(5))))) # (!\BIN1|decOut_n~31_combout\ & (((\Counter|s_count\(5) & !\BIN1|decOut_n~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~31_combout\,
	datab => \BIN1|Equal6~0_combout\,
	datac => \Counter|s_count\(5),
	datad => \BIN1|decOut_n~26_combout\,
	combout => \BIN1|decOut_n~32_combout\);

-- Location: LCCOMB_X113_Y42_N22
\BIN1|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~33_combout\ = (\BIN1|decOut_n~2_combout\) # ((\Counter|s_count\(4)) # ((\BIN1|decOut_n~11_combout\ & \Counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~2_combout\,
	datab => \BIN1|decOut_n~11_combout\,
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(3),
	combout => \BIN1|decOut_n~33_combout\);

-- Location: LCCOMB_X113_Y42_N24
\BIN1|decOut_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~34_combout\ = (!\Counter|s_count\(5) & ((\Counter|s_count\(6) & ((\BIN1|decOut_n~27_combout\))) # (!\Counter|s_count\(6) & (\BIN1|decOut_n~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN1|decOut_n~33_combout\,
	datab => \Counter|s_count\(5),
	datac => \Counter|s_count\(6),
	datad => \BIN1|decOut_n~27_combout\,
	combout => \BIN1|decOut_n~34_combout\);

-- Location: LCCOMB_X114_Y42_N18
\BIN1|decOut_n~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~35_combout\ = (\Counter|s_count\(3) & (\Counter|s_count\(4) & \Counter|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datac => \Counter|s_count\(4),
	datad => \Counter|s_count\(6),
	combout => \BIN1|decOut_n~35_combout\);

-- Location: LCCOMB_X114_Y42_N20
\BIN1|decOut_n~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~36_combout\ = (\Counter|s_count\(3) & (((\BIN1|decOut_n~2_combout\ & \BIN1|decOut_n~35_combout\)))) # (!\Counter|s_count\(3) & ((\BIN1|decOut_n~16_combout\) # ((\BIN1|decOut_n~2_combout\ & \BIN1|decOut_n~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \BIN1|decOut_n~16_combout\,
	datac => \BIN1|decOut_n~2_combout\,
	datad => \BIN1|decOut_n~35_combout\,
	combout => \BIN1|decOut_n~36_combout\);

-- Location: LCCOMB_X114_Y42_N2
\BIN1|decOut_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~37_combout\ = (\BIN1|decOut_n~34_combout\) # ((\Counter|s_count\(5) & \BIN1|decOut_n~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datab => \BIN1|decOut_n~34_combout\,
	datad => \BIN1|decOut_n~36_combout\,
	combout => \BIN1|decOut_n~37_combout\);

-- Location: LCCOMB_X114_Y42_N8
\BIN1|decOut_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~38_combout\ = (\BIN1|decOut_n~19_combout\ & ((\Counter|s_count\(5) & (\BIN1|decOut_n~35_combout\)) # (!\Counter|s_count\(5) & ((!\BIN1|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(5),
	datab => \BIN1|decOut_n~35_combout\,
	datac => \BIN1|Equal0~0_combout\,
	datad => \BIN1|decOut_n~19_combout\,
	combout => \BIN1|decOut_n~38_combout\);

-- Location: LCCOMB_X114_Y42_N22
\BIN1|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \BIN1|decOut_n~39_combout\ = (\BIN1|decOut_n~38_combout\) # (\BIN1|decOut_n~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BIN1|decOut_n~38_combout\,
	datad => \BIN1|decOut_n~21_combout\,
	combout => \BIN1|decOut_n~39_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;
END structure;


