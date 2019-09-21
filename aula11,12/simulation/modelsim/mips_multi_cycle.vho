-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "12/14/2016 15:44:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PCupdate IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	zero : IN std_logic;
	PCSource : IN std_logic_vector(1 DOWNTO 0);
	PCWrite : IN std_logic;
	PCWriteCond : IN std_logic;
	PC4 : IN std_logic_vector(31 DOWNTO 0);
	BTA : IN std_logic_vector(31 DOWNTO 0);
	jAddr : IN std_logic_vector(25 DOWNTO 0);
	pc : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END PCupdate;

-- Design Ports Information
-- pc[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSource[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSource[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCWriteCond	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCWrite	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[4]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[7]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[8]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[9]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[10]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[8]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[10]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[11]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[11]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[12]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[10]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[12]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[13]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[11]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[14]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[14]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[15]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[15]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[16]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[16]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[17]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[15]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[17]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[18]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[16]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[18]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[19]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[17]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[19]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[20]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[18]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[20]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[21]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[19]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[21]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[22]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[20]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[22]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[23]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[21]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[23]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[24]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[22]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[24]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[25]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[25]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[26]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[24]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[26]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[27]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jAddr[25]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[27]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[28]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[28]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[29]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[29]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[30]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[30]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC4[31]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTA[31]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PCupdate IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_PCSource : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PCWrite : std_logic;
SIGNAL ww_PCWriteCond : std_logic;
SIGNAL ww_PC4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BTA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_jAddr : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc[0]~output_o\ : std_logic;
SIGNAL \pc[1]~output_o\ : std_logic;
SIGNAL \pc[2]~output_o\ : std_logic;
SIGNAL \pc[3]~output_o\ : std_logic;
SIGNAL \pc[4]~output_o\ : std_logic;
SIGNAL \pc[5]~output_o\ : std_logic;
SIGNAL \pc[6]~output_o\ : std_logic;
SIGNAL \pc[7]~output_o\ : std_logic;
SIGNAL \pc[8]~output_o\ : std_logic;
SIGNAL \pc[9]~output_o\ : std_logic;
SIGNAL \pc[10]~output_o\ : std_logic;
SIGNAL \pc[11]~output_o\ : std_logic;
SIGNAL \pc[12]~output_o\ : std_logic;
SIGNAL \pc[13]~output_o\ : std_logic;
SIGNAL \pc[14]~output_o\ : std_logic;
SIGNAL \pc[15]~output_o\ : std_logic;
SIGNAL \pc[16]~output_o\ : std_logic;
SIGNAL \pc[17]~output_o\ : std_logic;
SIGNAL \pc[18]~output_o\ : std_logic;
SIGNAL \pc[19]~output_o\ : std_logic;
SIGNAL \pc[20]~output_o\ : std_logic;
SIGNAL \pc[21]~output_o\ : std_logic;
SIGNAL \pc[22]~output_o\ : std_logic;
SIGNAL \pc[23]~output_o\ : std_logic;
SIGNAL \pc[24]~output_o\ : std_logic;
SIGNAL \pc[25]~output_o\ : std_logic;
SIGNAL \pc[26]~output_o\ : std_logic;
SIGNAL \pc[27]~output_o\ : std_logic;
SIGNAL \pc[28]~output_o\ : std_logic;
SIGNAL \pc[29]~output_o\ : std_logic;
SIGNAL \pc[30]~output_o\ : std_logic;
SIGNAL \pc[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC4[0]~input_o\ : std_logic;
SIGNAL \PCSource[0]~input_o\ : std_logic;
SIGNAL \PCSource[1]~input_o\ : std_logic;
SIGNAL \BTA[0]~input_o\ : std_logic;
SIGNAL \s_pc~26_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \PCWriteCond~input_o\ : std_logic;
SIGNAL \PCWrite~input_o\ : std_logic;
SIGNAL \zero~input_o\ : std_logic;
SIGNAL \s_pc[28]~27_combout\ : std_logic;
SIGNAL \BTA[1]~input_o\ : std_logic;
SIGNAL \PC4[1]~input_o\ : std_logic;
SIGNAL \s_pc~28_combout\ : std_logic;
SIGNAL \BTA[2]~input_o\ : std_logic;
SIGNAL \jAddr[0]~input_o\ : std_logic;
SIGNAL \s_pc[2]~0_combout\ : std_logic;
SIGNAL \PC4[2]~input_o\ : std_logic;
SIGNAL \s_pc[0]~29_combout\ : std_logic;
SIGNAL \BTA[3]~input_o\ : std_logic;
SIGNAL \jAddr[1]~input_o\ : std_logic;
SIGNAL \s_pc[3]~1_combout\ : std_logic;
SIGNAL \PC4[3]~input_o\ : std_logic;
SIGNAL \BTA[4]~input_o\ : std_logic;
SIGNAL \jAddr[2]~input_o\ : std_logic;
SIGNAL \s_pc[4]~2_combout\ : std_logic;
SIGNAL \PC4[4]~input_o\ : std_logic;
SIGNAL \jAddr[3]~input_o\ : std_logic;
SIGNAL \BTA[5]~input_o\ : std_logic;
SIGNAL \s_pc[5]~3_combout\ : std_logic;
SIGNAL \PC4[5]~input_o\ : std_logic;
SIGNAL \BTA[6]~input_o\ : std_logic;
SIGNAL \jAddr[4]~input_o\ : std_logic;
SIGNAL \s_pc[6]~4_combout\ : std_logic;
SIGNAL \PC4[6]~input_o\ : std_logic;
SIGNAL \jAddr[5]~input_o\ : std_logic;
SIGNAL \BTA[7]~input_o\ : std_logic;
SIGNAL \s_pc[7]~5_combout\ : std_logic;
SIGNAL \PC4[7]~input_o\ : std_logic;
SIGNAL \BTA[8]~input_o\ : std_logic;
SIGNAL \jAddr[6]~input_o\ : std_logic;
SIGNAL \s_pc[8]~6_combout\ : std_logic;
SIGNAL \PC4[8]~input_o\ : std_logic;
SIGNAL \jAddr[7]~input_o\ : std_logic;
SIGNAL \BTA[9]~input_o\ : std_logic;
SIGNAL \s_pc[9]~7_combout\ : std_logic;
SIGNAL \PC4[9]~input_o\ : std_logic;
SIGNAL \jAddr[8]~input_o\ : std_logic;
SIGNAL \BTA[10]~input_o\ : std_logic;
SIGNAL \s_pc[10]~8_combout\ : std_logic;
SIGNAL \PC4[10]~input_o\ : std_logic;
SIGNAL \BTA[11]~input_o\ : std_logic;
SIGNAL \jAddr[9]~input_o\ : std_logic;
SIGNAL \s_pc[11]~9_combout\ : std_logic;
SIGNAL \PC4[11]~input_o\ : std_logic;
SIGNAL \BTA[12]~input_o\ : std_logic;
SIGNAL \jAddr[10]~input_o\ : std_logic;
SIGNAL \s_pc[12]~10_combout\ : std_logic;
SIGNAL \PC4[12]~input_o\ : std_logic;
SIGNAL \BTA[13]~input_o\ : std_logic;
SIGNAL \jAddr[11]~input_o\ : std_logic;
SIGNAL \s_pc[13]~11_combout\ : std_logic;
SIGNAL \PC4[13]~input_o\ : std_logic;
SIGNAL \jAddr[12]~input_o\ : std_logic;
SIGNAL \BTA[14]~input_o\ : std_logic;
SIGNAL \s_pc[14]~12_combout\ : std_logic;
SIGNAL \PC4[14]~input_o\ : std_logic;
SIGNAL \jAddr[13]~input_o\ : std_logic;
SIGNAL \BTA[15]~input_o\ : std_logic;
SIGNAL \s_pc[15]~13_combout\ : std_logic;
SIGNAL \PC4[15]~input_o\ : std_logic;
SIGNAL \jAddr[14]~input_o\ : std_logic;
SIGNAL \BTA[16]~input_o\ : std_logic;
SIGNAL \s_pc[16]~14_combout\ : std_logic;
SIGNAL \PC4[16]~input_o\ : std_logic;
SIGNAL \BTA[17]~input_o\ : std_logic;
SIGNAL \jAddr[15]~input_o\ : std_logic;
SIGNAL \s_pc[17]~15_combout\ : std_logic;
SIGNAL \PC4[17]~input_o\ : std_logic;
SIGNAL \jAddr[16]~input_o\ : std_logic;
SIGNAL \BTA[18]~input_o\ : std_logic;
SIGNAL \s_pc[18]~16_combout\ : std_logic;
SIGNAL \PC4[18]~input_o\ : std_logic;
SIGNAL \BTA[19]~input_o\ : std_logic;
SIGNAL \jAddr[17]~input_o\ : std_logic;
SIGNAL \s_pc[19]~17_combout\ : std_logic;
SIGNAL \PC4[19]~input_o\ : std_logic;
SIGNAL \jAddr[18]~input_o\ : std_logic;
SIGNAL \BTA[20]~input_o\ : std_logic;
SIGNAL \s_pc[20]~18_combout\ : std_logic;
SIGNAL \PC4[20]~input_o\ : std_logic;
SIGNAL \jAddr[19]~input_o\ : std_logic;
SIGNAL \BTA[21]~input_o\ : std_logic;
SIGNAL \s_pc[21]~19_combout\ : std_logic;
SIGNAL \PC4[21]~input_o\ : std_logic;
SIGNAL \BTA[22]~input_o\ : std_logic;
SIGNAL \jAddr[20]~input_o\ : std_logic;
SIGNAL \s_pc[22]~20_combout\ : std_logic;
SIGNAL \PC4[22]~input_o\ : std_logic;
SIGNAL \BTA[23]~input_o\ : std_logic;
SIGNAL \jAddr[21]~input_o\ : std_logic;
SIGNAL \s_pc[23]~21_combout\ : std_logic;
SIGNAL \PC4[23]~input_o\ : std_logic;
SIGNAL \jAddr[22]~input_o\ : std_logic;
SIGNAL \BTA[24]~input_o\ : std_logic;
SIGNAL \s_pc[24]~22_combout\ : std_logic;
SIGNAL \PC4[24]~input_o\ : std_logic;
SIGNAL \BTA[25]~input_o\ : std_logic;
SIGNAL \jAddr[23]~input_o\ : std_logic;
SIGNAL \s_pc[25]~23_combout\ : std_logic;
SIGNAL \PC4[25]~input_o\ : std_logic;
SIGNAL \jAddr[24]~input_o\ : std_logic;
SIGNAL \BTA[26]~input_o\ : std_logic;
SIGNAL \s_pc[26]~24_combout\ : std_logic;
SIGNAL \PC4[26]~input_o\ : std_logic;
SIGNAL \jAddr[25]~input_o\ : std_logic;
SIGNAL \BTA[27]~input_o\ : std_logic;
SIGNAL \s_pc[27]~25_combout\ : std_logic;
SIGNAL \PC4[27]~input_o\ : std_logic;
SIGNAL \PC4[28]~input_o\ : std_logic;
SIGNAL \BTA[28]~input_o\ : std_logic;
SIGNAL \s_pc~30_combout\ : std_logic;
SIGNAL \s_pc[28]~31_combout\ : std_logic;
SIGNAL \PC4[29]~input_o\ : std_logic;
SIGNAL \BTA[29]~input_o\ : std_logic;
SIGNAL \s_pc~32_combout\ : std_logic;
SIGNAL \PC4[30]~input_o\ : std_logic;
SIGNAL \BTA[30]~input_o\ : std_logic;
SIGNAL \s_pc~33_combout\ : std_logic;
SIGNAL \PC4[31]~input_o\ : std_logic;
SIGNAL \BTA[31]~input_o\ : std_logic;
SIGNAL \s_pc~34_combout\ : std_logic;
SIGNAL s_pc : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_zero <= zero;
ww_PCSource <= PCSource;
ww_PCWrite <= PCWrite;
ww_PCWriteCond <= PCWriteCond;
ww_PC4 <= PC4;
ww_BTA <= BTA;
ww_jAddr <= jAddr;
pc <= ww_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y62_N16
\pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(0),
	devoe => ww_devoe,
	o => \pc[0]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(1),
	devoe => ww_devoe,
	o => \pc[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(2),
	devoe => ww_devoe,
	o => \pc[2]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(3),
	devoe => ww_devoe,
	o => \pc[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\pc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(4),
	devoe => ww_devoe,
	o => \pc[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\pc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(5),
	devoe => ww_devoe,
	o => \pc[5]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\pc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(6),
	devoe => ww_devoe,
	o => \pc[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\pc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(7),
	devoe => ww_devoe,
	o => \pc[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\pc[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(8),
	devoe => ww_devoe,
	o => \pc[8]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\pc[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(9),
	devoe => ww_devoe,
	o => \pc[9]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\pc[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(10),
	devoe => ww_devoe,
	o => \pc[10]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\pc[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(11),
	devoe => ww_devoe,
	o => \pc[11]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\pc[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(12),
	devoe => ww_devoe,
	o => \pc[12]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\pc[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(13),
	devoe => ww_devoe,
	o => \pc[13]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\pc[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(14),
	devoe => ww_devoe,
	o => \pc[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\pc[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(15),
	devoe => ww_devoe,
	o => \pc[15]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\pc[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(16),
	devoe => ww_devoe,
	o => \pc[16]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\pc[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(17),
	devoe => ww_devoe,
	o => \pc[17]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\pc[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(18),
	devoe => ww_devoe,
	o => \pc[18]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\pc[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(19),
	devoe => ww_devoe,
	o => \pc[19]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\pc[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(20),
	devoe => ww_devoe,
	o => \pc[20]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\pc[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(21),
	devoe => ww_devoe,
	o => \pc[21]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\pc[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(22),
	devoe => ww_devoe,
	o => \pc[22]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\pc[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(23),
	devoe => ww_devoe,
	o => \pc[23]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\pc[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(24),
	devoe => ww_devoe,
	o => \pc[24]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\pc[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(25),
	devoe => ww_devoe,
	o => \pc[25]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\pc[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(26),
	devoe => ww_devoe,
	o => \pc[26]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\pc[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(27),
	devoe => ww_devoe,
	o => \pc[27]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\pc[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(28),
	devoe => ww_devoe,
	o => \pc[28]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\pc[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(29),
	devoe => ww_devoe,
	o => \pc[29]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\pc[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(30),
	devoe => ww_devoe,
	o => \pc[30]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\pc[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_pc(31),
	devoe => ww_devoe,
	o => \pc[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X0_Y36_N15
\PC4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(0),
	o => \PC4[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\PCSource[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCSource(0),
	o => \PCSource[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\PCSource[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCSource(1),
	o => \PCSource[1]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\BTA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(0),
	o => \BTA[0]~input_o\);

-- Location: LCCOMB_X1_Y56_N0
\s_pc~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc~26_combout\ = (\PCSource[0]~input_o\ & ((\PCSource[1]~input_o\ & (\PC4[0]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[0]~input_o\))))) # (!\PCSource[0]~input_o\ & (\PC4[0]~input_o\ & (!\PCSource[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC4[0]~input_o\,
	datab => \PCSource[0]~input_o\,
	datac => \PCSource[1]~input_o\,
	datad => \BTA[0]~input_o\,
	combout => \s_pc~26_combout\);

-- Location: IOIBUF_X20_Y73_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\PCWriteCond~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCWriteCond,
	o => \PCWriteCond~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\PCWrite~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCWrite,
	o => \PCWrite~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\zero~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero,
	o => \zero~input_o\);

-- Location: LCCOMB_X1_Y56_N20
\s_pc[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[28]~27_combout\ = (\PCWrite~input_o\) # ((\reset~input_o\) # ((\PCWriteCond~input_o\ & \zero~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCWriteCond~input_o\,
	datab => \PCWrite~input_o\,
	datac => \reset~input_o\,
	datad => \zero~input_o\,
	combout => \s_pc[28]~27_combout\);

-- Location: FF_X1_Y56_N1
\s_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc~26_combout\,
	sclr => \reset~input_o\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(0));

-- Location: IOIBUF_X0_Y54_N8
\BTA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(1),
	o => \BTA[1]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\PC4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(1),
	o => \PC4[1]~input_o\);

-- Location: LCCOMB_X1_Y56_N26
\s_pc~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc~28_combout\ = (\PCSource[0]~input_o\ & ((\PCSource[1]~input_o\ & ((\PC4[1]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[1]~input_o\)))) # (!\PCSource[0]~input_o\ & (((!\PCSource[1]~input_o\ & \PC4[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[1]~input_o\,
	datab => \PCSource[0]~input_o\,
	datac => \PCSource[1]~input_o\,
	datad => \PC4[1]~input_o\,
	combout => \s_pc~28_combout\);

-- Location: FF_X1_Y56_N27
\s_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc~28_combout\,
	sclr => \reset~input_o\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(1));

-- Location: IOIBUF_X38_Y73_N8
\BTA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(2),
	o => \BTA[2]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\jAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(0),
	o => \jAddr[0]~input_o\);

-- Location: LCCOMB_X41_Y69_N24
\s_pc[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[2]~0_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[0]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[2]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[0]~input_o\,
	combout => \s_pc[2]~0_combout\);

-- Location: IOIBUF_X45_Y73_N1
\PC4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(2),
	o => \PC4[2]~input_o\);

-- Location: LCCOMB_X1_Y56_N6
\s_pc[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[0]~29_combout\ = \PCSource[1]~input_o\ $ (!\PCSource[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSource[1]~input_o\,
	datac => \PCSource[0]~input_o\,
	combout => \s_pc[0]~29_combout\);

-- Location: FF_X41_Y69_N25
\s_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[2]~0_combout\,
	asdata => \PC4[2]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(2));

-- Location: IOIBUF_X49_Y73_N22
\BTA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(3),
	o => \BTA[3]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\jAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(1),
	o => \jAddr[1]~input_o\);

-- Location: LCCOMB_X41_Y69_N18
\s_pc[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[3]~1_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[1]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[3]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[1]~input_o\,
	combout => \s_pc[3]~1_combout\);

-- Location: IOIBUF_X27_Y73_N22
\PC4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(3),
	o => \PC4[3]~input_o\);

-- Location: FF_X41_Y69_N19
\s_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[3]~1_combout\,
	asdata => \PC4[3]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(3));

-- Location: IOIBUF_X0_Y67_N15
\BTA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(4),
	o => \BTA[4]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\jAddr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(2),
	o => \jAddr[2]~input_o\);

-- Location: LCCOMB_X7_Y69_N0
\s_pc[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[4]~2_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[2]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[4]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[2]~input_o\,
	combout => \s_pc[4]~2_combout\);

-- Location: IOIBUF_X0_Y68_N15
\PC4[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(4),
	o => \PC4[4]~input_o\);

-- Location: FF_X7_Y69_N1
\s_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[4]~2_combout\,
	asdata => \PC4[4]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(4));

-- Location: IOIBUF_X35_Y73_N22
\jAddr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(3),
	o => \jAddr[3]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\BTA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(5),
	o => \BTA[5]~input_o\);

-- Location: LCCOMB_X41_Y69_N20
\s_pc[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[5]~3_combout\ = (\PCSource[1]~input_o\ & (\jAddr[3]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[3]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \BTA[5]~input_o\,
	combout => \s_pc[5]~3_combout\);

-- Location: IOIBUF_X52_Y73_N8
\PC4[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(5),
	o => \PC4[5]~input_o\);

-- Location: FF_X41_Y69_N21
\s_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[5]~3_combout\,
	asdata => \PC4[5]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(5));

-- Location: IOIBUF_X1_Y73_N22
\BTA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(6),
	o => \BTA[6]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\jAddr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(4),
	o => \jAddr[4]~input_o\);

-- Location: LCCOMB_X7_Y69_N2
\s_pc[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[6]~4_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[4]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[6]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[4]~input_o\,
	combout => \s_pc[6]~4_combout\);

-- Location: IOIBUF_X16_Y73_N1
\PC4[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(6),
	o => \PC4[6]~input_o\);

-- Location: FF_X7_Y69_N3
\s_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[6]~4_combout\,
	asdata => \PC4[6]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(6));

-- Location: IOIBUF_X0_Y45_N22
\jAddr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(5),
	o => \jAddr[5]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\BTA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(7),
	o => \BTA[7]~input_o\);

-- Location: LCCOMB_X1_Y47_N24
\s_pc[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[7]~5_combout\ = (\PCSource[1]~input_o\ & (\jAddr[5]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[5]~input_o\,
	datab => \BTA[7]~input_o\,
	datad => \PCSource[1]~input_o\,
	combout => \s_pc[7]~5_combout\);

-- Location: IOIBUF_X0_Y42_N1
\PC4[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(7),
	o => \PC4[7]~input_o\);

-- Location: FF_X1_Y47_N25
\s_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[7]~5_combout\,
	asdata => \PC4[7]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(7));

-- Location: IOIBUF_X45_Y73_N8
\BTA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(8),
	o => \BTA[8]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\jAddr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(6),
	o => \jAddr[6]~input_o\);

-- Location: LCCOMB_X41_Y69_N22
\s_pc[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[8]~6_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[6]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[8]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[6]~input_o\,
	combout => \s_pc[8]~6_combout\);

-- Location: IOIBUF_X38_Y73_N1
\PC4[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(8),
	o => \PC4[8]~input_o\);

-- Location: FF_X41_Y69_N23
\s_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[8]~6_combout\,
	asdata => \PC4[8]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(8));

-- Location: IOIBUF_X35_Y73_N15
\jAddr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(7),
	o => \jAddr[7]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\BTA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(9),
	o => \BTA[9]~input_o\);

-- Location: LCCOMB_X41_Y69_N8
\s_pc[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[9]~7_combout\ = (\PCSource[1]~input_o\ & (\jAddr[7]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[7]~input_o\,
	datab => \BTA[9]~input_o\,
	datad => \PCSource[1]~input_o\,
	combout => \s_pc[9]~7_combout\);

-- Location: IOIBUF_X52_Y73_N22
\PC4[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(9),
	o => \PC4[9]~input_o\);

-- Location: FF_X41_Y69_N9
\s_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[9]~7_combout\,
	asdata => \PC4[9]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(9));

-- Location: IOIBUF_X9_Y73_N1
\jAddr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(8),
	o => \jAddr[8]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\BTA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(10),
	o => \BTA[10]~input_o\);

-- Location: LCCOMB_X7_Y69_N4
\s_pc[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[10]~8_combout\ = (\PCSource[1]~input_o\ & (\jAddr[8]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[8]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \BTA[10]~input_o\,
	combout => \s_pc[10]~8_combout\);

-- Location: IOIBUF_X9_Y73_N8
\PC4[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(10),
	o => \PC4[10]~input_o\);

-- Location: FF_X7_Y69_N5
\s_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[10]~8_combout\,
	asdata => \PC4[10]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(10));

-- Location: IOIBUF_X0_Y67_N22
\BTA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(11),
	o => \BTA[11]~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\jAddr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(9),
	o => \jAddr[9]~input_o\);

-- Location: LCCOMB_X7_Y69_N30
\s_pc[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[11]~9_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[9]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[11]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[9]~input_o\,
	combout => \s_pc[11]~9_combout\);

-- Location: IOIBUF_X1_Y73_N15
\PC4[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(11),
	o => \PC4[11]~input_o\);

-- Location: FF_X7_Y69_N31
\s_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[11]~9_combout\,
	asdata => \PC4[11]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(11));

-- Location: IOIBUF_X0_Y46_N22
\BTA[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(12),
	o => \BTA[12]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\jAddr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(10),
	o => \jAddr[10]~input_o\);

-- Location: LCCOMB_X1_Y47_N26
\s_pc[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[12]~10_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[10]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[12]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[10]~input_o\,
	combout => \s_pc[12]~10_combout\);

-- Location: IOIBUF_X0_Y47_N1
\PC4[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(12),
	o => \PC4[12]~input_o\);

-- Location: FF_X1_Y47_N27
\s_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[12]~10_combout\,
	asdata => \PC4[12]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(12));

-- Location: IOIBUF_X25_Y73_N22
\BTA[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(13),
	o => \BTA[13]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\jAddr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(11),
	o => \jAddr[11]~input_o\);

-- Location: LCCOMB_X41_Y69_N2
\s_pc[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[13]~11_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[11]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[13]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[11]~input_o\,
	combout => \s_pc[13]~11_combout\);

-- Location: IOIBUF_X27_Y73_N15
\PC4[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(13),
	o => \PC4[13]~input_o\);

-- Location: FF_X41_Y69_N3
\s_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[13]~11_combout\,
	asdata => \PC4[13]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(13));

-- Location: IOIBUF_X18_Y73_N15
\jAddr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(12),
	o => \jAddr[12]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\BTA[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(14),
	o => \BTA[14]~input_o\);

-- Location: LCCOMB_X7_Y69_N16
\s_pc[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[14]~12_combout\ = (\PCSource[1]~input_o\ & (\jAddr[12]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[12]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \BTA[14]~input_o\,
	combout => \s_pc[14]~12_combout\);

-- Location: IOIBUF_X0_Y68_N8
\PC4[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(14),
	o => \PC4[14]~input_o\);

-- Location: FF_X7_Y69_N17
\s_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[14]~12_combout\,
	asdata => \PC4[14]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(14));

-- Location: IOIBUF_X52_Y73_N1
\jAddr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(13),
	o => \jAddr[13]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\BTA[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(15),
	o => \BTA[15]~input_o\);

-- Location: LCCOMB_X41_Y69_N12
\s_pc[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[15]~13_combout\ = (\PCSource[1]~input_o\ & (\jAddr[13]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[13]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \BTA[15]~input_o\,
	combout => \s_pc[15]~13_combout\);

-- Location: IOIBUF_X38_Y73_N15
\PC4[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(15),
	o => \PC4[15]~input_o\);

-- Location: FF_X41_Y69_N13
\s_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[15]~13_combout\,
	asdata => \PC4[15]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(15));

-- Location: IOIBUF_X0_Y66_N22
\jAddr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(14),
	o => \jAddr[14]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\BTA[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(16),
	o => \BTA[16]~input_o\);

-- Location: LCCOMB_X7_Y69_N18
\s_pc[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[16]~14_combout\ = (\PCSource[1]~input_o\ & (\jAddr[14]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[14]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \BTA[16]~input_o\,
	combout => \s_pc[16]~14_combout\);

-- Location: IOIBUF_X13_Y73_N8
\PC4[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(16),
	o => \PC4[16]~input_o\);

-- Location: FF_X7_Y69_N19
\s_pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[16]~14_combout\,
	asdata => \PC4[16]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(16));

-- Location: IOIBUF_X58_Y73_N8
\BTA[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(17),
	o => \BTA[17]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\jAddr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(15),
	o => \jAddr[15]~input_o\);

-- Location: LCCOMB_X41_Y69_N30
\s_pc[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[17]~15_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[15]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[17]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[15]~input_o\,
	combout => \s_pc[17]~15_combout\);

-- Location: IOIBUF_X60_Y73_N1
\PC4[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(17),
	o => \PC4[17]~input_o\);

-- Location: FF_X41_Y69_N31
\s_pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[17]~15_combout\,
	asdata => \PC4[17]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(17));

-- Location: IOIBUF_X58_Y73_N1
\jAddr[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(16),
	o => \jAddr[16]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\BTA[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(18),
	o => \BTA[18]~input_o\);

-- Location: LCCOMB_X41_Y69_N0
\s_pc[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[18]~16_combout\ = (\PCSource[1]~input_o\ & (\jAddr[16]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[16]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \BTA[18]~input_o\,
	combout => \s_pc[18]~16_combout\);

-- Location: IOIBUF_X47_Y73_N1
\PC4[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(18),
	o => \PC4[18]~input_o\);

-- Location: FF_X41_Y69_N1
\s_pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[18]~16_combout\,
	asdata => \PC4[18]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(18));

-- Location: IOIBUF_X0_Y52_N1
\BTA[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(19),
	o => \BTA[19]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\jAddr[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(17),
	o => \jAddr[17]~input_o\);

-- Location: LCCOMB_X1_Y47_N28
\s_pc[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[19]~17_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[17]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[19]~input_o\,
	datab => \jAddr[17]~input_o\,
	datad => \PCSource[1]~input_o\,
	combout => \s_pc[19]~17_combout\);

-- Location: IOIBUF_X0_Y44_N1
\PC4[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(19),
	o => \PC4[19]~input_o\);

-- Location: FF_X1_Y47_N29
\s_pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[19]~17_combout\,
	asdata => \PC4[19]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(19));

-- Location: IOIBUF_X0_Y48_N8
\jAddr[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(18),
	o => \jAddr[18]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\BTA[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(20),
	o => \BTA[20]~input_o\);

-- Location: LCCOMB_X1_Y47_N14
\s_pc[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[20]~18_combout\ = (\PCSource[1]~input_o\ & (\jAddr[18]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[18]~input_o\,
	datab => \BTA[20]~input_o\,
	datad => \PCSource[1]~input_o\,
	combout => \s_pc[20]~18_combout\);

-- Location: IOIBUF_X0_Y46_N15
\PC4[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(20),
	o => \PC4[20]~input_o\);

-- Location: FF_X1_Y47_N15
\s_pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[20]~18_combout\,
	asdata => \PC4[20]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(20));

-- Location: IOIBUF_X0_Y69_N8
\jAddr[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(19),
	o => \jAddr[19]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\BTA[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(21),
	o => \BTA[21]~input_o\);

-- Location: LCCOMB_X7_Y69_N12
\s_pc[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[21]~19_combout\ = (\PCSource[1]~input_o\ & (\jAddr[19]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[19]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \BTA[21]~input_o\,
	combout => \s_pc[21]~19_combout\);

-- Location: IOIBUF_X11_Y73_N1
\PC4[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(21),
	o => \PC4[21]~input_o\);

-- Location: FF_X7_Y69_N13
\s_pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[21]~19_combout\,
	asdata => \PC4[21]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(21));

-- Location: IOIBUF_X60_Y73_N8
\BTA[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(22),
	o => \BTA[22]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\jAddr[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(20),
	o => \jAddr[20]~input_o\);

-- Location: LCCOMB_X41_Y69_N26
\s_pc[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[22]~20_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[20]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[22]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[20]~input_o\,
	combout => \s_pc[22]~20_combout\);

-- Location: IOIBUF_X40_Y73_N1
\PC4[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(22),
	o => \PC4[22]~input_o\);

-- Location: FF_X41_Y69_N27
\s_pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[22]~20_combout\,
	asdata => \PC4[22]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(22));

-- Location: IOIBUF_X11_Y73_N15
\BTA[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(23),
	o => \BTA[23]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\jAddr[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(21),
	o => \jAddr[21]~input_o\);

-- Location: LCCOMB_X7_Y69_N6
\s_pc[23]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[23]~21_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[21]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[23]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \jAddr[21]~input_o\,
	combout => \s_pc[23]~21_combout\);

-- Location: IOIBUF_X20_Y73_N1
\PC4[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(23),
	o => \PC4[23]~input_o\);

-- Location: FF_X7_Y69_N7
\s_pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[23]~21_combout\,
	asdata => \PC4[23]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(23));

-- Location: IOIBUF_X0_Y49_N8
\jAddr[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(22),
	o => \jAddr[22]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\BTA[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(24),
	o => \BTA[24]~input_o\);

-- Location: LCCOMB_X1_Y47_N16
\s_pc[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[24]~22_combout\ = (\PCSource[1]~input_o\ & (\jAddr[22]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[22]~input_o\,
	datab => \BTA[24]~input_o\,
	datad => \PCSource[1]~input_o\,
	combout => \s_pc[24]~22_combout\);

-- Location: IOIBUF_X0_Y35_N8
\PC4[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(24),
	o => \PC4[24]~input_o\);

-- Location: FF_X1_Y47_N17
\s_pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[24]~22_combout\,
	asdata => \PC4[24]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(24));

-- Location: IOIBUF_X0_Y44_N15
\BTA[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(25),
	o => \BTA[25]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\jAddr[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(23),
	o => \jAddr[23]~input_o\);

-- Location: LCCOMB_X1_Y47_N10
\s_pc[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[25]~23_combout\ = (\PCSource[1]~input_o\ & ((\jAddr[23]~input_o\))) # (!\PCSource[1]~input_o\ & (\BTA[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTA[25]~input_o\,
	datab => \jAddr[23]~input_o\,
	datad => \PCSource[1]~input_o\,
	combout => \s_pc[25]~23_combout\);

-- Location: IOIBUF_X0_Y48_N1
\PC4[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(25),
	o => \PC4[25]~input_o\);

-- Location: FF_X1_Y47_N11
\s_pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[25]~23_combout\,
	asdata => \PC4[25]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(25));

-- Location: IOIBUF_X13_Y73_N15
\jAddr[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(24),
	o => \jAddr[24]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\BTA[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(26),
	o => \BTA[26]~input_o\);

-- Location: LCCOMB_X7_Y69_N24
\s_pc[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[26]~24_combout\ = (\PCSource[1]~input_o\ & (\jAddr[24]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[24]~input_o\,
	datab => \PCSource[1]~input_o\,
	datad => \BTA[26]~input_o\,
	combout => \s_pc[26]~24_combout\);

-- Location: IOIBUF_X13_Y73_N1
\PC4[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(26),
	o => \PC4[26]~input_o\);

-- Location: FF_X7_Y69_N25
\s_pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[26]~24_combout\,
	asdata => \PC4[26]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(26));

-- Location: IOIBUF_X0_Y50_N15
\jAddr[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jAddr(25),
	o => \jAddr[25]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\BTA[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(27),
	o => \BTA[27]~input_o\);

-- Location: LCCOMB_X1_Y47_N12
\s_pc[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[27]~25_combout\ = (\PCSource[1]~input_o\ & (\jAddr[25]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jAddr[25]~input_o\,
	datab => \BTA[27]~input_o\,
	datad => \PCSource[1]~input_o\,
	combout => \s_pc[27]~25_combout\);

-- Location: IOIBUF_X0_Y49_N1
\PC4[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(27),
	o => \PC4[27]~input_o\);

-- Location: FF_X1_Y47_N13
\s_pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc[27]~25_combout\,
	asdata => \PC4[27]~input_o\,
	sclr => \reset~input_o\,
	sload => \s_pc[0]~29_combout\,
	ena => \s_pc[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(27));

-- Location: IOIBUF_X0_Y55_N8
\PC4[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(28),
	o => \PC4[28]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\BTA[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(28),
	o => \BTA[28]~input_o\);

-- Location: LCCOMB_X1_Y56_N28
\s_pc~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc~30_combout\ = (\PCSource[0]~input_o\ & ((\PCSource[1]~input_o\ & (\PC4[28]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[28]~input_o\))))) # (!\PCSource[0]~input_o\ & (\PC4[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC4[28]~input_o\,
	datab => \PCSource[0]~input_o\,
	datac => \PCSource[1]~input_o\,
	datad => \BTA[28]~input_o\,
	combout => \s_pc~30_combout\);

-- Location: LCCOMB_X1_Y56_N24
\s_pc[28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc[28]~31_combout\ = (\s_pc[28]~27_combout\ & (((\PCSource[0]~input_o\) # (\reset~input_o\)) # (!\PCSource[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSource[1]~input_o\,
	datab => \PCSource[0]~input_o\,
	datac => \reset~input_o\,
	datad => \s_pc[28]~27_combout\,
	combout => \s_pc[28]~31_combout\);

-- Location: FF_X1_Y56_N29
\s_pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc~30_combout\,
	sclr => \reset~input_o\,
	ena => \s_pc[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(28));

-- Location: IOIBUF_X0_Y53_N1
\PC4[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(29),
	o => \PC4[29]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\BTA[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(29),
	o => \BTA[29]~input_o\);

-- Location: LCCOMB_X1_Y56_N22
\s_pc~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc~32_combout\ = (\PCSource[0]~input_o\ & ((\PCSource[1]~input_o\ & (\PC4[29]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[29]~input_o\))))) # (!\PCSource[0]~input_o\ & (\PC4[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC4[29]~input_o\,
	datab => \PCSource[0]~input_o\,
	datac => \PCSource[1]~input_o\,
	datad => \BTA[29]~input_o\,
	combout => \s_pc~32_combout\);

-- Location: FF_X1_Y56_N23
\s_pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc~32_combout\,
	sclr => \reset~input_o\,
	ena => \s_pc[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(29));

-- Location: IOIBUF_X0_Y57_N15
\PC4[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(30),
	o => \PC4[30]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\BTA[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(30),
	o => \BTA[30]~input_o\);

-- Location: LCCOMB_X1_Y56_N8
\s_pc~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc~33_combout\ = (\PCSource[0]~input_o\ & ((\PCSource[1]~input_o\ & (\PC4[30]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[30]~input_o\))))) # (!\PCSource[0]~input_o\ & (\PC4[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC4[30]~input_o\,
	datab => \PCSource[0]~input_o\,
	datac => \PCSource[1]~input_o\,
	datad => \BTA[30]~input_o\,
	combout => \s_pc~33_combout\);

-- Location: FF_X1_Y56_N9
\s_pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc~33_combout\,
	sclr => \reset~input_o\,
	ena => \s_pc[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(30));

-- Location: IOIBUF_X0_Y59_N15
\PC4[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC4(31),
	o => \PC4[31]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\BTA[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTA(31),
	o => \BTA[31]~input_o\);

-- Location: LCCOMB_X1_Y56_N18
\s_pc~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pc~34_combout\ = (\PCSource[0]~input_o\ & ((\PCSource[1]~input_o\ & (\PC4[31]~input_o\)) # (!\PCSource[1]~input_o\ & ((\BTA[31]~input_o\))))) # (!\PCSource[0]~input_o\ & (\PC4[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC4[31]~input_o\,
	datab => \PCSource[0]~input_o\,
	datac => \PCSource[1]~input_o\,
	datad => \BTA[31]~input_o\,
	combout => \s_pc~34_combout\);

-- Location: FF_X1_Y56_N19
\s_pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pc~34_combout\,
	sclr => \reset~input_o\,
	ena => \s_pc[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_pc(31));

ww_pc(0) <= \pc[0]~output_o\;

ww_pc(1) <= \pc[1]~output_o\;

ww_pc(2) <= \pc[2]~output_o\;

ww_pc(3) <= \pc[3]~output_o\;

ww_pc(4) <= \pc[4]~output_o\;

ww_pc(5) <= \pc[5]~output_o\;

ww_pc(6) <= \pc[6]~output_o\;

ww_pc(7) <= \pc[7]~output_o\;

ww_pc(8) <= \pc[8]~output_o\;

ww_pc(9) <= \pc[9]~output_o\;

ww_pc(10) <= \pc[10]~output_o\;

ww_pc(11) <= \pc[11]~output_o\;

ww_pc(12) <= \pc[12]~output_o\;

ww_pc(13) <= \pc[13]~output_o\;

ww_pc(14) <= \pc[14]~output_o\;

ww_pc(15) <= \pc[15]~output_o\;

ww_pc(16) <= \pc[16]~output_o\;

ww_pc(17) <= \pc[17]~output_o\;

ww_pc(18) <= \pc[18]~output_o\;

ww_pc(19) <= \pc[19]~output_o\;

ww_pc(20) <= \pc[20]~output_o\;

ww_pc(21) <= \pc[21]~output_o\;

ww_pc(22) <= \pc[22]~output_o\;

ww_pc(23) <= \pc[23]~output_o\;

ww_pc(24) <= \pc[24]~output_o\;

ww_pc(25) <= \pc[25]~output_o\;

ww_pc(26) <= \pc[26]~output_o\;

ww_pc(27) <= \pc[27]~output_o\;

ww_pc(28) <= \pc[28]~output_o\;

ww_pc(29) <= \pc[29]~output_o\;

ww_pc(30) <= \pc[30]~output_o\;

ww_pc(31) <= \pc[31]~output_o\;
END structure;


