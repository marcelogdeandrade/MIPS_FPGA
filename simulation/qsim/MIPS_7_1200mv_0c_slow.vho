-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "11/16/2017 17:24:59"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	INV_A : IN std_logic;
	INV_B : IN std_logic;
	Cin : IN std_logic;
	Cout : OUT std_logic;
	SEL : IN std_logic_vector(1 DOWNTO 0);
	S : OUT std_logic_vector(31 DOWNTO 0);
	ZERO : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- Cout	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZERO	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INV_A	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INV_B	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_INV_A : std_logic;
SIGNAL ww_INV_B : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ZERO : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \ZERO~output_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \INV_B~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \mux_b|X[31]~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \mux_b|X[29]~2_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \mux_b|X[26]~5_combout\ : std_logic;
SIGNAL \INV_A~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \mux_b|X[25]~6_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \mux_b|X[19]~12_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \mux_b|X[14]~17_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \mux_b|X[11]~20_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \mux_b|X[8]~23_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \mux_b|X[6]~25_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \mux_b|X[4]~27_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \mux_b|X[3]~28_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \mux_b|X[1]~30_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \mux_b|X[0]~31_combout\ : std_logic;
SIGNAL \full_adder|FA:0:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \full_adder|FA:1:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \mux_b|X[2]~29_combout\ : std_logic;
SIGNAL \full_adder|FA:2:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \full_adder|FA:3:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \full_adder|FA:4:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \mux_b|X[5]~26_combout\ : std_logic;
SIGNAL \full_adder|FA:5:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \full_adder|FA:6:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \mux_b|X[7]~24_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \full_adder|FA:7:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \full_adder|FA:8:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \mux_b|X[9]~22_combout\ : std_logic;
SIGNAL \full_adder|FA:9:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \mux_b|X[10]~21_combout\ : std_logic;
SIGNAL \full_adder|FA:10:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \full_adder|FA:11:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \mux_b|X[12]~19_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \full_adder|FA:12:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \mux_b|X[13]~18_combout\ : std_logic;
SIGNAL \full_adder|FA:13:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \full_adder|FA:14:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \mux_b|X[15]~16_combout\ : std_logic;
SIGNAL \full_adder|FA:15:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \mux_b|X[16]~15_combout\ : std_logic;
SIGNAL \full_adder|FA:16:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \mux_b|X[17]~14_combout\ : std_logic;
SIGNAL \full_adder|FA:17:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \mux_b|X[18]~13_combout\ : std_logic;
SIGNAL \full_adder|FA:18:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \full_adder|FA:19:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \mux_b|X[20]~11_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \full_adder|FA:20:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \mux_b|X[21]~10_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \full_adder|FA:21:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \mux_b|X[22]~9_combout\ : std_logic;
SIGNAL \full_adder|FA:22:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \mux_b|X[23]~8_combout\ : std_logic;
SIGNAL \full_adder|FA:23:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \mux_b|X[24]~7_combout\ : std_logic;
SIGNAL \full_adder|FA:24:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \full_adder|FA:25:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \full_adder|FA:26:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \mux_b|X[27]~4_combout\ : std_logic;
SIGNAL \full_adder|FA:27:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \mux_b|X[28]~3_combout\ : std_logic;
SIGNAL \full_adder|FA:28:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \full_adder|FA:29:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \mux_b|X[30]~1_combout\ : std_logic;
SIGNAL \full_adder|FA:30:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \full_adder|FA:31:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \mux_a|X[31]~1_combout\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \mux_a|X[0]~0_combout\ : std_logic;
SIGNAL \mux_sel|X[0]~0_combout\ : std_logic;
SIGNAL \full_adder|FA:0:FA_i|S~combout\ : std_logic;
SIGNAL \mux_sel|X[0]~1_combout\ : std_logic;
SIGNAL \mux_sel|X[1]~2_combout\ : std_logic;
SIGNAL \mux_sel|X[1]~3_combout\ : std_logic;
SIGNAL \mux_sel|X[2]~4_combout\ : std_logic;
SIGNAL \mux_sel|X[2]~5_combout\ : std_logic;
SIGNAL \mux_sel|X[3]~6_combout\ : std_logic;
SIGNAL \mux_sel|X[3]~7_combout\ : std_logic;
SIGNAL \mux_sel|X[4]~8_combout\ : std_logic;
SIGNAL \mux_sel|X[4]~9_combout\ : std_logic;
SIGNAL \mux_sel|X[5]~10_combout\ : std_logic;
SIGNAL \mux_sel|X[5]~11_combout\ : std_logic;
SIGNAL \mux_sel|X[6]~12_combout\ : std_logic;
SIGNAL \mux_sel|X[6]~13_combout\ : std_logic;
SIGNAL \mux_sel|X[7]~14_combout\ : std_logic;
SIGNAL \mux_sel|X[7]~15_combout\ : std_logic;
SIGNAL \mux_sel|X[8]~16_combout\ : std_logic;
SIGNAL \mux_sel|X[8]~17_combout\ : std_logic;
SIGNAL \mux_sel|X[9]~18_combout\ : std_logic;
SIGNAL \mux_sel|X[9]~19_combout\ : std_logic;
SIGNAL \mux_sel|X[10]~20_combout\ : std_logic;
SIGNAL \mux_sel|X[10]~21_combout\ : std_logic;
SIGNAL \mux_sel|X[11]~22_combout\ : std_logic;
SIGNAL \mux_sel|X[11]~23_combout\ : std_logic;
SIGNAL \mux_sel|X[12]~24_combout\ : std_logic;
SIGNAL \mux_sel|X[12]~25_combout\ : std_logic;
SIGNAL \mux_sel|X[13]~26_combout\ : std_logic;
SIGNAL \mux_sel|X[13]~27_combout\ : std_logic;
SIGNAL \mux_sel|X[14]~28_combout\ : std_logic;
SIGNAL \mux_sel|X[14]~29_combout\ : std_logic;
SIGNAL \mux_sel|X[15]~30_combout\ : std_logic;
SIGNAL \mux_sel|X[15]~31_combout\ : std_logic;
SIGNAL \mux_sel|X[16]~32_combout\ : std_logic;
SIGNAL \mux_sel|X[16]~33_combout\ : std_logic;
SIGNAL \mux_sel|X[17]~34_combout\ : std_logic;
SIGNAL \mux_sel|X[17]~35_combout\ : std_logic;
SIGNAL \mux_sel|X[18]~36_combout\ : std_logic;
SIGNAL \mux_sel|X[18]~37_combout\ : std_logic;
SIGNAL \mux_sel|X[19]~38_combout\ : std_logic;
SIGNAL \mux_sel|X[19]~39_combout\ : std_logic;
SIGNAL \mux_sel|X[20]~40_combout\ : std_logic;
SIGNAL \mux_sel|X[20]~41_combout\ : std_logic;
SIGNAL \mux_sel|X[21]~42_combout\ : std_logic;
SIGNAL \full_adder|FA:21:FA_i|S~combout\ : std_logic;
SIGNAL \mux_sel|X[21]~43_combout\ : std_logic;
SIGNAL \mux_sel|X[22]~44_combout\ : std_logic;
SIGNAL \mux_sel|X[22]~45_combout\ : std_logic;
SIGNAL \mux_sel|X[23]~46_combout\ : std_logic;
SIGNAL \mux_sel|X[23]~47_combout\ : std_logic;
SIGNAL \mux_sel|X[24]~48_combout\ : std_logic;
SIGNAL \mux_sel|X[24]~49_combout\ : std_logic;
SIGNAL \mux_sel|X[25]~50_combout\ : std_logic;
SIGNAL \mux_sel|X[25]~51_combout\ : std_logic;
SIGNAL \mux_sel|X[26]~52_combout\ : std_logic;
SIGNAL \mux_sel|X[26]~53_combout\ : std_logic;
SIGNAL \mux_sel|X[27]~54_combout\ : std_logic;
SIGNAL \mux_sel|X[27]~55_combout\ : std_logic;
SIGNAL \mux_sel|X[28]~56_combout\ : std_logic;
SIGNAL \mux_sel|X[28]~57_combout\ : std_logic;
SIGNAL \mux_a|X[29]~2_combout\ : std_logic;
SIGNAL \mux_sel|X[29]~58_combout\ : std_logic;
SIGNAL \mux_sel|X[1]~59_combout\ : std_logic;
SIGNAL \full_adder|FA:29:FA_i|S~0_combout\ : std_logic;
SIGNAL \mux_sel|X[29]~60_combout\ : std_logic;
SIGNAL \mux_sel|X[30]~61_combout\ : std_logic;
SIGNAL \mux_sel|X[30]~62_combout\ : std_logic;
SIGNAL \mux_sel|X[30]~63_combout\ : std_logic;
SIGNAL \mux_sel|X[30]~64_combout\ : std_logic;
SIGNAL \mux_sel|X[31]~65_combout\ : std_logic;
SIGNAL \full_adder|FA:31:FA_i|S~0_combout\ : std_logic;
SIGNAL \mux_sel|X[31]~66_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~9_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~8_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~5_combout\ : std_logic;
SIGNAL \mux_sel|X[21]~67_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~6_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~7_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~1_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~2_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~3_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~0_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~4_combout\ : std_logic;
SIGNAL \flag_zero|tmp[31]~10_combout\ : std_logic;
SIGNAL \slt|S\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \flag_zero|ALT_INV_tmp[31]~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_INV_A <= INV_A;
ww_INV_B <= INV_B;
ww_Cin <= Cin;
Cout <= ww_Cout;
ww_SEL <= SEL;
S <= ww_S;
ZERO <= ww_ZERO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\flag_zero|ALT_INV_tmp[31]~10_combout\ <= NOT \flag_zero|tmp[31]~10_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \full_adder|FA:31:FA_i|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[0]~1_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[1]~3_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[2]~5_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[3]~7_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[4]~9_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[5]~11_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[6]~13_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[7]~15_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[8]~17_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[9]~19_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[10]~21_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[11]~23_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[12]~25_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[13]~27_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[14]~29_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[15]~31_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[16]~33_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[17]~35_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[18]~37_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[19]~39_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[20]~41_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[21]~43_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[22]~45_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[23]~47_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[24]~49_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[25]~51_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[26]~53_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[27]~55_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[28]~57_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[29]~60_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[30]~64_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_sel|X[31]~66_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\ZERO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag_zero|ALT_INV_tmp[31]~10_combout\,
	devoe => ww_devoe,
	o => \ZERO~output_o\);

-- Location: IOIBUF_X60_Y73_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\INV_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INV_B,
	o => \INV_B~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X59_Y69_N24
\mux_b|X[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[31]~0_combout\ = \INV_B~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INV_B~input_o\,
	datac => \B[31]~input_o\,
	combout => \mux_b|X[31]~0_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X53_Y70_N2
\mux_b|X[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[29]~2_combout\ = \B[29]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[29]~2_combout\);

-- Location: IOIBUF_X35_Y73_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X47_Y69_N28
\mux_b|X[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[26]~5_combout\ = \B[26]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[26]~5_combout\);

-- Location: IOIBUF_X65_Y73_N8
\INV_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INV_A,
	o => \INV_A~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X53_Y70_N28
\mux_b|X[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[25]~6_combout\ = \B[25]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[25]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[25]~6_combout\);

-- Location: IOIBUF_X13_Y73_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X55_Y69_N12
\mux_b|X[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[19]~12_combout\ = \INV_B~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[19]~input_o\,
	combout => \mux_b|X[19]~12_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X50_Y69_N12
\mux_b|X[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[14]~17_combout\ = \INV_B~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[14]~input_o\,
	combout => \mux_b|X[14]~17_combout\);

-- Location: IOIBUF_X23_Y73_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X58_Y69_N2
\mux_b|X[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[11]~20_combout\ = \B[11]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \INV_B~input_o\,
	combout => \mux_b|X[11]~20_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X58_Y69_N30
\mux_b|X[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[8]~23_combout\ = \INV_B~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[8]~input_o\,
	combout => \mux_b|X[8]~23_combout\);

-- Location: IOIBUF_X60_Y73_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X65_Y69_N24
\mux_b|X[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[6]~25_combout\ = \INV_B~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INV_B~input_o\,
	datad => \B[6]~input_o\,
	combout => \mux_b|X[6]~25_combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X65_Y69_N12
\mux_b|X[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[4]~27_combout\ = \INV_B~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INV_B~input_o\,
	datad => \B[4]~input_o\,
	combout => \mux_b|X[4]~27_combout\);

-- Location: IOIBUF_X72_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X65_Y69_N6
\mux_b|X[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[3]~28_combout\ = \INV_B~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INV_B~input_o\,
	datad => \B[3]~input_o\,
	combout => \mux_b|X[3]~28_combout\);

-- Location: IOIBUF_X74_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X63_Y70_N10
\mux_b|X[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[1]~30_combout\ = \INV_B~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[1]~input_o\,
	combout => \mux_b|X[1]~30_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X63_Y70_N28
\mux_b|X[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[0]~31_combout\ = \INV_B~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INV_B~input_o\,
	datac => \B[0]~input_o\,
	combout => \mux_b|X[0]~31_combout\);

-- Location: LCCOMB_X63_Y70_N30
\full_adder|FA:0:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:0:FA_i|Cout~0_combout\ = (\Cin~input_o\ & ((\mux_b|X[0]~31_combout\) # (\A[0]~input_o\ $ (\INV_A~input_o\)))) # (!\Cin~input_o\ & (\mux_b|X[0]~31_combout\ & (\A[0]~input_o\ $ (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \mux_b|X[0]~31_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:0:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X63_Y70_N16
\full_adder|FA:1:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:1:FA_i|Cout~0_combout\ = (\mux_b|X[1]~30_combout\ & ((\full_adder|FA:0:FA_i|Cout~0_combout\) # (\A[1]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[1]~30_combout\ & (\full_adder|FA:0:FA_i|Cout~0_combout\ & (\A[1]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[1]~30_combout\,
	datab => \A[1]~input_o\,
	datac => \full_adder|FA:0:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:1:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X74_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X63_Y70_N0
\mux_b|X[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[2]~29_combout\ = \INV_B~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INV_B~input_o\,
	datac => \B[2]~input_o\,
	combout => \mux_b|X[2]~29_combout\);

-- Location: LCCOMB_X63_Y70_N18
\full_adder|FA:2:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:2:FA_i|Cout~0_combout\ = (\full_adder|FA:1:FA_i|Cout~0_combout\ & ((\mux_b|X[2]~29_combout\) # (\INV_A~input_o\ $ (\A[2]~input_o\)))) # (!\full_adder|FA:1:FA_i|Cout~0_combout\ & (\mux_b|X[2]~29_combout\ & (\INV_A~input_o\ $ 
-- (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \full_adder|FA:1:FA_i|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \mux_b|X[2]~29_combout\,
	combout => \full_adder|FA:2:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X65_Y69_N8
\full_adder|FA:3:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:3:FA_i|Cout~0_combout\ = (\mux_b|X[3]~28_combout\ & ((\full_adder|FA:2:FA_i|Cout~0_combout\) # (\A[3]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[3]~28_combout\ & (\full_adder|FA:2:FA_i|Cout~0_combout\ & (\A[3]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[3]~28_combout\,
	datab => \full_adder|FA:2:FA_i|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:3:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X65_Y69_N18
\full_adder|FA:4:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:4:FA_i|Cout~0_combout\ = (\mux_b|X[4]~27_combout\ & ((\full_adder|FA:3:FA_i|Cout~0_combout\) # (\INV_A~input_o\ $ (\A[4]~input_o\)))) # (!\mux_b|X[4]~27_combout\ & (\full_adder|FA:3:FA_i|Cout~0_combout\ & (\INV_A~input_o\ $ 
-- (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \mux_b|X[4]~27_combout\,
	datac => \full_adder|FA:3:FA_i|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \full_adder|FA:4:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X65_Y69_N2
\mux_b|X[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[5]~26_combout\ = \B[5]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[5]~26_combout\);

-- Location: LCCOMB_X65_Y69_N4
\full_adder|FA:5:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:5:FA_i|Cout~0_combout\ = (\full_adder|FA:4:FA_i|Cout~0_combout\ & ((\mux_b|X[5]~26_combout\) # (\INV_A~input_o\ $ (\A[5]~input_o\)))) # (!\full_adder|FA:4:FA_i|Cout~0_combout\ & (\mux_b|X[5]~26_combout\ & (\INV_A~input_o\ $ 
-- (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \full_adder|FA:4:FA_i|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \mux_b|X[5]~26_combout\,
	combout => \full_adder|FA:5:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X65_Y69_N30
\full_adder|FA:6:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:6:FA_i|Cout~0_combout\ = (\mux_b|X[6]~25_combout\ & ((\full_adder|FA:5:FA_i|Cout~0_combout\) # (\INV_A~input_o\ $ (\A[6]~input_o\)))) # (!\mux_b|X[6]~25_combout\ & (\full_adder|FA:5:FA_i|Cout~0_combout\ & (\INV_A~input_o\ $ 
-- (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \mux_b|X[6]~25_combout\,
	datac => \full_adder|FA:5:FA_i|Cout~0_combout\,
	datad => \A[6]~input_o\,
	combout => \full_adder|FA:6:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X58_Y69_N24
\mux_b|X[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[7]~24_combout\ = \INV_B~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[7]~input_o\,
	combout => \mux_b|X[7]~24_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X58_Y69_N26
\full_adder|FA:7:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:7:FA_i|Cout~0_combout\ = (\full_adder|FA:6:FA_i|Cout~0_combout\ & ((\mux_b|X[7]~24_combout\) # (\A[7]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:6:FA_i|Cout~0_combout\ & (\mux_b|X[7]~24_combout\ & (\A[7]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:6:FA_i|Cout~0_combout\,
	datab => \mux_b|X[7]~24_combout\,
	datac => \A[7]~input_o\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:7:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X58_Y69_N12
\full_adder|FA:8:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:8:FA_i|Cout~0_combout\ = (\mux_b|X[8]~23_combout\ & ((\full_adder|FA:7:FA_i|Cout~0_combout\) # (\A[8]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[8]~23_combout\ & (\full_adder|FA:7:FA_i|Cout~0_combout\ & (\A[8]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[8]~23_combout\,
	datab => \A[8]~input_o\,
	datac => \full_adder|FA:7:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:8:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X58_Y69_N28
\mux_b|X[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[9]~22_combout\ = \INV_B~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INV_B~input_o\,
	datac => \B[9]~input_o\,
	combout => \mux_b|X[9]~22_combout\);

-- Location: LCCOMB_X57_Y69_N10
\full_adder|FA:9:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:9:FA_i|Cout~0_combout\ = (\full_adder|FA:8:FA_i|Cout~0_combout\ & ((\mux_b|X[9]~22_combout\) # (\INV_A~input_o\ $ (\A[9]~input_o\)))) # (!\full_adder|FA:8:FA_i|Cout~0_combout\ & (\mux_b|X[9]~22_combout\ & (\INV_A~input_o\ $ 
-- (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \full_adder|FA:8:FA_i|Cout~0_combout\,
	datac => \A[9]~input_o\,
	datad => \mux_b|X[9]~22_combout\,
	combout => \full_adder|FA:9:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X57_Y69_N0
\mux_b|X[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[10]~21_combout\ = \B[10]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[10]~21_combout\);

-- Location: LCCOMB_X57_Y69_N28
\full_adder|FA:10:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:10:FA_i|Cout~0_combout\ = (\full_adder|FA:9:FA_i|Cout~0_combout\ & ((\mux_b|X[10]~21_combout\) # (\INV_A~input_o\ $ (\A[10]~input_o\)))) # (!\full_adder|FA:9:FA_i|Cout~0_combout\ & (\mux_b|X[10]~21_combout\ & (\INV_A~input_o\ $ 
-- (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \A[10]~input_o\,
	datac => \full_adder|FA:9:FA_i|Cout~0_combout\,
	datad => \mux_b|X[10]~21_combout\,
	combout => \full_adder|FA:10:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X57_Y69_N14
\full_adder|FA:11:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:11:FA_i|Cout~0_combout\ = (\mux_b|X[11]~20_combout\ & ((\full_adder|FA:10:FA_i|Cout~0_combout\) # (\A[11]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[11]~20_combout\ & (\full_adder|FA:10:FA_i|Cout~0_combout\ & (\A[11]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[11]~20_combout\,
	datab => \full_adder|FA:10:FA_i|Cout~0_combout\,
	datac => \A[11]~input_o\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:11:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X79_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X58_Y69_N16
\mux_b|X[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[12]~19_combout\ = \INV_B~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INV_B~input_o\,
	datad => \B[12]~input_o\,
	combout => \mux_b|X[12]~19_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X58_Y69_N14
\full_adder|FA:12:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:12:FA_i|Cout~0_combout\ = (\full_adder|FA:11:FA_i|Cout~0_combout\ & ((\mux_b|X[12]~19_combout\) # (\A[12]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:11:FA_i|Cout~0_combout\ & (\mux_b|X[12]~19_combout\ & (\A[12]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:11:FA_i|Cout~0_combout\,
	datab => \mux_b|X[12]~19_combout\,
	datac => \A[12]~input_o\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:12:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X59_Y69_N12
\mux_b|X[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[13]~18_combout\ = \INV_B~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[13]~input_o\,
	combout => \mux_b|X[13]~18_combout\);

-- Location: LCCOMB_X50_Y69_N22
\full_adder|FA:13:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:13:FA_i|Cout~0_combout\ = (\full_adder|FA:12:FA_i|Cout~0_combout\ & ((\mux_b|X[13]~18_combout\) # (\A[13]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:12:FA_i|Cout~0_combout\ & (\mux_b|X[13]~18_combout\ & (\A[13]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:12:FA_i|Cout~0_combout\,
	datab => \A[13]~input_o\,
	datac => \mux_b|X[13]~18_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:13:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X50_Y69_N16
\full_adder|FA:14:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:14:FA_i|Cout~0_combout\ = (\mux_b|X[14]~17_combout\ & ((\full_adder|FA:13:FA_i|Cout~0_combout\) # (\A[14]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[14]~17_combout\ & (\full_adder|FA:13:FA_i|Cout~0_combout\ & (\A[14]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[14]~17_combout\,
	datab => \A[14]~input_o\,
	datac => \full_adder|FA:13:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:14:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X42_Y73_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X50_Y69_N26
\mux_b|X[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[15]~16_combout\ = \INV_B~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[15]~input_o\,
	combout => \mux_b|X[15]~16_combout\);

-- Location: LCCOMB_X50_Y69_N18
\full_adder|FA:15:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:15:FA_i|Cout~0_combout\ = (\full_adder|FA:14:FA_i|Cout~0_combout\ & ((\mux_b|X[15]~16_combout\) # (\A[15]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:14:FA_i|Cout~0_combout\ & (\mux_b|X[15]~16_combout\ & (\A[15]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \full_adder|FA:14:FA_i|Cout~0_combout\,
	datac => \mux_b|X[15]~16_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:15:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X23_Y73_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X50_Y69_N8
\mux_b|X[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[16]~15_combout\ = \B[16]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datac => \INV_B~input_o\,
	combout => \mux_b|X[16]~15_combout\);

-- Location: LCCOMB_X50_Y69_N4
\full_adder|FA:16:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:16:FA_i|Cout~0_combout\ = (\full_adder|FA:15:FA_i|Cout~0_combout\ & ((\mux_b|X[16]~15_combout\) # (\A[16]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:15:FA_i|Cout~0_combout\ & (\mux_b|X[16]~15_combout\ & (\A[16]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \full_adder|FA:15:FA_i|Cout~0_combout\,
	datac => \mux_b|X[16]~15_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:16:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X59_Y69_N18
\mux_b|X[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[17]~14_combout\ = \B[17]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datac => \INV_B~input_o\,
	combout => \mux_b|X[17]~14_combout\);

-- Location: LCCOMB_X58_Y69_N0
\full_adder|FA:17:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:17:FA_i|Cout~0_combout\ = (\full_adder|FA:16:FA_i|Cout~0_combout\ & ((\mux_b|X[17]~14_combout\) # (\INV_A~input_o\ $ (\A[17]~input_o\)))) # (!\full_adder|FA:16:FA_i|Cout~0_combout\ & (\mux_b|X[17]~14_combout\ & (\INV_A~input_o\ $ 
-- (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \full_adder|FA:16:FA_i|Cout~0_combout\,
	datac => \A[17]~input_o\,
	datad => \mux_b|X[17]~14_combout\,
	combout => \full_adder|FA:17:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X27_Y73_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X55_Y69_N14
\mux_b|X[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[18]~13_combout\ = \INV_B~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[18]~input_o\,
	combout => \mux_b|X[18]~13_combout\);

-- Location: LCCOMB_X55_Y69_N8
\full_adder|FA:18:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:18:FA_i|Cout~0_combout\ = (\full_adder|FA:17:FA_i|Cout~0_combout\ & ((\mux_b|X[18]~13_combout\) # (\A[18]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:17:FA_i|Cout~0_combout\ & (\mux_b|X[18]~13_combout\ & (\A[18]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \full_adder|FA:17:FA_i|Cout~0_combout\,
	datac => \mux_b|X[18]~13_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:18:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X55_Y69_N10
\full_adder|FA:19:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:19:FA_i|Cout~0_combout\ = (\mux_b|X[19]~12_combout\ & ((\full_adder|FA:18:FA_i|Cout~0_combout\) # (\A[19]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[19]~12_combout\ & (\full_adder|FA:18:FA_i|Cout~0_combout\ & (\A[19]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[19]~12_combout\,
	datab => \A[19]~input_o\,
	datac => \full_adder|FA:18:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:19:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X54_Y73_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X55_Y69_N18
\mux_b|X[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[20]~11_combout\ = \B[20]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \INV_B~input_o\,
	combout => \mux_b|X[20]~11_combout\);

-- Location: IOIBUF_X54_Y0_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X55_Y69_N28
\full_adder|FA:20:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:20:FA_i|Cout~0_combout\ = (\full_adder|FA:19:FA_i|Cout~0_combout\ & ((\mux_b|X[20]~11_combout\) # (\A[20]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:19:FA_i|Cout~0_combout\ & (\mux_b|X[20]~11_combout\ & (\A[20]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:19:FA_i|Cout~0_combout\,
	datab => \mux_b|X[20]~11_combout\,
	datac => \A[20]~input_o\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:20:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X55_Y69_N24
\mux_b|X[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[21]~10_combout\ = \INV_B~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[21]~input_o\,
	combout => \mux_b|X[21]~10_combout\);

-- Location: IOIBUF_X25_Y73_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X55_Y69_N30
\full_adder|FA:21:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:21:FA_i|Cout~0_combout\ = (\full_adder|FA:20:FA_i|Cout~0_combout\ & ((\mux_b|X[21]~10_combout\) # (\INV_A~input_o\ $ (\A[21]~input_o\)))) # (!\full_adder|FA:20:FA_i|Cout~0_combout\ & (\mux_b|X[21]~10_combout\ & (\INV_A~input_o\ $ 
-- (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \full_adder|FA:20:FA_i|Cout~0_combout\,
	datac => \mux_b|X[21]~10_combout\,
	datad => \A[21]~input_o\,
	combout => \full_adder|FA:21:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X52_Y73_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X53_Y70_N30
\mux_b|X[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[22]~9_combout\ = \B[22]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[22]~9_combout\);

-- Location: LCCOMB_X54_Y69_N20
\full_adder|FA:22:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:22:FA_i|Cout~0_combout\ = (\full_adder|FA:21:FA_i|Cout~0_combout\ & ((\mux_b|X[22]~9_combout\) # (\A[22]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:21:FA_i|Cout~0_combout\ & (\mux_b|X[22]~9_combout\ & (\A[22]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \INV_A~input_o\,
	datac => \full_adder|FA:21:FA_i|Cout~0_combout\,
	datad => \mux_b|X[22]~9_combout\,
	combout => \full_adder|FA:22:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X25_Y73_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X54_Y69_N10
\mux_b|X[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[23]~8_combout\ = \INV_B~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[23]~input_o\,
	combout => \mux_b|X[23]~8_combout\);

-- Location: LCCOMB_X54_Y69_N22
\full_adder|FA:23:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:23:FA_i|Cout~0_combout\ = (\full_adder|FA:22:FA_i|Cout~0_combout\ & ((\mux_b|X[23]~8_combout\) # (\A[23]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:22:FA_i|Cout~0_combout\ & (\mux_b|X[23]~8_combout\ & (\A[23]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \full_adder|FA:22:FA_i|Cout~0_combout\,
	datac => \INV_A~input_o\,
	datad => \mux_b|X[23]~8_combout\,
	combout => \full_adder|FA:23:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X54_Y69_N24
\mux_b|X[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[24]~7_combout\ = \INV_B~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INV_B~input_o\,
	datad => \B[24]~input_o\,
	combout => \mux_b|X[24]~7_combout\);

-- Location: LCCOMB_X54_Y69_N8
\full_adder|FA:24:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:24:FA_i|Cout~0_combout\ = (\full_adder|FA:23:FA_i|Cout~0_combout\ & ((\mux_b|X[24]~7_combout\) # (\A[24]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:23:FA_i|Cout~0_combout\ & (\mux_b|X[24]~7_combout\ & (\A[24]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \INV_A~input_o\,
	datac => \full_adder|FA:23:FA_i|Cout~0_combout\,
	datad => \mux_b|X[24]~7_combout\,
	combout => \full_adder|FA:24:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X47_Y69_N6
\full_adder|FA:25:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:25:FA_i|Cout~0_combout\ = (\mux_b|X[25]~6_combout\ & ((\full_adder|FA:24:FA_i|Cout~0_combout\) # (\A[25]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[25]~6_combout\ & (\full_adder|FA:24:FA_i|Cout~0_combout\ & (\A[25]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[25]~6_combout\,
	datab => \A[25]~input_o\,
	datac => \INV_A~input_o\,
	datad => \full_adder|FA:24:FA_i|Cout~0_combout\,
	combout => \full_adder|FA:25:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X47_Y69_N8
\full_adder|FA:26:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:26:FA_i|Cout~0_combout\ = (\mux_b|X[26]~5_combout\ & ((\full_adder|FA:25:FA_i|Cout~0_combout\) # (\A[26]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[26]~5_combout\ & (\full_adder|FA:25:FA_i|Cout~0_combout\ & (\A[26]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \mux_b|X[26]~5_combout\,
	datac => \INV_A~input_o\,
	datad => \full_adder|FA:25:FA_i|Cout~0_combout\,
	combout => \full_adder|FA:26:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X20_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X47_Y69_N10
\mux_b|X[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[27]~4_combout\ = \B[27]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[27]~4_combout\);

-- Location: LCCOMB_X47_Y69_N26
\full_adder|FA:27:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:27:FA_i|Cout~0_combout\ = (\full_adder|FA:26:FA_i|Cout~0_combout\ & ((\mux_b|X[27]~4_combout\) # (\A[27]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:26:FA_i|Cout~0_combout\ & (\mux_b|X[27]~4_combout\ & (\A[27]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \full_adder|FA:26:FA_i|Cout~0_combout\,
	datac => \INV_A~input_o\,
	datad => \mux_b|X[27]~4_combout\,
	combout => \full_adder|FA:27:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X47_Y69_N24
\mux_b|X[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[28]~3_combout\ = \B[28]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[28]~3_combout\);

-- Location: LCCOMB_X47_Y69_N4
\full_adder|FA:28:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:28:FA_i|Cout~0_combout\ = (\full_adder|FA:27:FA_i|Cout~0_combout\ & ((\mux_b|X[28]~3_combout\) # (\A[28]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:27:FA_i|Cout~0_combout\ & (\mux_b|X[28]~3_combout\ & (\A[28]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:27:FA_i|Cout~0_combout\,
	datab => \A[28]~input_o\,
	datac => \INV_A~input_o\,
	datad => \mux_b|X[28]~3_combout\,
	combout => \full_adder|FA:28:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X53_Y70_N16
\full_adder|FA:29:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:29:FA_i|Cout~0_combout\ = (\mux_b|X[29]~2_combout\ & ((\full_adder|FA:28:FA_i|Cout~0_combout\) # (\A[29]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[29]~2_combout\ & (\full_adder|FA:28:FA_i|Cout~0_combout\ & (\A[29]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \mux_b|X[29]~2_combout\,
	datac => \full_adder|FA:28:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:29:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X23_Y73_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X53_Y70_N8
\mux_b|X[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_b|X[30]~1_combout\ = \B[30]~input_o\ $ (\INV_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \INV_B~input_o\,
	combout => \mux_b|X[30]~1_combout\);

-- Location: LCCOMB_X53_Y70_N10
\full_adder|FA:30:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:30:FA_i|Cout~0_combout\ = (\full_adder|FA:29:FA_i|Cout~0_combout\ & ((\mux_b|X[30]~1_combout\) # (\A[30]~input_o\ $ (\INV_A~input_o\)))) # (!\full_adder|FA:29:FA_i|Cout~0_combout\ & (\mux_b|X[30]~1_combout\ & (\A[30]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \full_adder|FA:29:FA_i|Cout~0_combout\,
	datac => \mux_b|X[30]~1_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:30:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X59_Y69_N22
\full_adder|FA:31:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:31:FA_i|Cout~0_combout\ = (\mux_b|X[31]~0_combout\ & ((\full_adder|FA:30:FA_i|Cout~0_combout\) # (\A[31]~input_o\ $ (\INV_A~input_o\)))) # (!\mux_b|X[31]~0_combout\ & (\full_adder|FA:30:FA_i|Cout~0_combout\ & (\A[31]~input_o\ $ 
-- (\INV_A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \mux_b|X[31]~0_combout\,
	datac => \full_adder|FA:30:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:31:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X59_Y69_N0
\mux_a|X[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_a|X[31]~1_combout\ = \A[31]~input_o\ $ (\INV_A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_a|X[31]~1_combout\);

-- Location: LCCOMB_X59_Y69_N2
\slt|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \slt|S\(0) = \full_adder|FA:30:FA_i|Cout~0_combout\ $ (\mux_a|X[31]~1_combout\ $ (\full_adder|FA:31:FA_i|Cout~0_combout\ $ (\mux_b|X[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:30:FA_i|Cout~0_combout\,
	datab => \mux_a|X[31]~1_combout\,
	datac => \full_adder|FA:31:FA_i|Cout~0_combout\,
	datad => \mux_b|X[31]~0_combout\,
	combout => \slt|S\(0));

-- Location: IOIBUF_X56_Y73_N1
\SEL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X56_Y73_N8
\SEL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: LCCOMB_X63_Y70_N20
\mux_a|X[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_a|X[0]~0_combout\ = \INV_A~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datad => \A[0]~input_o\,
	combout => \mux_a|X[0]~0_combout\);

-- Location: LCCOMB_X63_Y70_N22
\mux_sel|X[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[0]~0_combout\ = (\SEL[0]~input_o\ & ((\mux_b|X[0]~31_combout\) # ((\SEL[1]~input_o\) # (\mux_a|X[0]~0_combout\)))) # (!\SEL[0]~input_o\ & (\mux_b|X[0]~31_combout\ & (!\SEL[1]~input_o\ & \mux_a|X[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_b|X[0]~31_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_a|X[0]~0_combout\,
	combout => \mux_sel|X[0]~0_combout\);

-- Location: LCCOMB_X63_Y70_N2
\full_adder|FA:0:FA_i|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:0:FA_i|S~combout\ = \Cin~input_o\ $ (\INV_B~input_o\ $ (\B[0]~input_o\ $ (\mux_a|X[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \INV_B~input_o\,
	datac => \B[0]~input_o\,
	datad => \mux_a|X[0]~0_combout\,
	combout => \full_adder|FA:0:FA_i|S~combout\);

-- Location: LCCOMB_X63_Y70_N8
\mux_sel|X[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[0]~1_combout\ = (\SEL[1]~input_o\ & ((\mux_sel|X[0]~0_combout\ & (\slt|S\(0))) # (!\mux_sel|X[0]~0_combout\ & ((\full_adder|FA:0:FA_i|S~combout\))))) # (!\SEL[1]~input_o\ & (((\mux_sel|X[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slt|S\(0),
	datab => \SEL[1]~input_o\,
	datac => \mux_sel|X[0]~0_combout\,
	datad => \full_adder|FA:0:FA_i|S~combout\,
	combout => \mux_sel|X[0]~1_combout\);

-- Location: LCCOMB_X63_Y70_N26
\mux_sel|X[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[1]~2_combout\ = \A[1]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:0:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:0:FA_i|Cout~0_combout\,
	datab => \A[1]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[1]~2_combout\);

-- Location: LCCOMB_X63_Y70_N12
\mux_sel|X[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[1]~3_combout\ = (\mux_sel|X[1]~2_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[1]~30_combout\))))) # (!\mux_sel|X[1]~2_combout\ & (\mux_b|X[1]~30_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \mux_sel|X[1]~2_combout\,
	datad => \mux_b|X[1]~30_combout\,
	combout => \mux_sel|X[1]~3_combout\);

-- Location: LCCOMB_X63_Y70_N6
\mux_sel|X[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[2]~4_combout\ = \INV_A~input_o\ $ (\A[2]~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:1:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \full_adder|FA:1:FA_i|Cout~0_combout\,
	combout => \mux_sel|X[2]~4_combout\);

-- Location: LCCOMB_X63_Y70_N24
\mux_sel|X[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[2]~5_combout\ = (\mux_b|X[2]~29_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_sel|X[2]~4_combout\))))) # (!\mux_b|X[2]~29_combout\ & (\mux_sel|X[2]~4_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_b|X[2]~29_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_sel|X[2]~4_combout\,
	combout => \mux_sel|X[2]~5_combout\);

-- Location: LCCOMB_X65_Y69_N0
\mux_sel|X[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[3]~6_combout\ = \A[3]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:2:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \full_adder|FA:2:FA_i|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[3]~6_combout\);

-- Location: LCCOMB_X65_Y69_N10
\mux_sel|X[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[3]~7_combout\ = (\mux_sel|X[3]~6_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[3]~28_combout\))))) # (!\mux_sel|X[3]~6_combout\ & (\mux_b|X[3]~28_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_sel|X[3]~6_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_b|X[3]~28_combout\,
	combout => \mux_sel|X[3]~7_combout\);

-- Location: LCCOMB_X65_Y69_N20
\mux_sel|X[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[4]~8_combout\ = \INV_A~input_o\ $ (\A[4]~input_o\ $ (((\full_adder|FA:3:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \full_adder|FA:3:FA_i|Cout~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \mux_sel|X[4]~8_combout\);

-- Location: LCCOMB_X65_Y69_N14
\mux_sel|X[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[4]~9_combout\ = (\mux_sel|X[4]~8_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[4]~27_combout\))))) # (!\mux_sel|X[4]~8_combout\ & (\mux_b|X[4]~27_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_sel|X[4]~8_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_b|X[4]~27_combout\,
	combout => \mux_sel|X[4]~9_combout\);

-- Location: LCCOMB_X65_Y69_N16
\mux_sel|X[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[5]~10_combout\ = \A[5]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:4:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \full_adder|FA:4:FA_i|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[5]~10_combout\);

-- Location: LCCOMB_X65_Y69_N26
\mux_sel|X[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[5]~11_combout\ = (\mux_sel|X[5]~10_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[5]~26_combout\))))) # (!\mux_sel|X[5]~10_combout\ & (\mux_b|X[5]~26_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_sel|X[5]~10_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_b|X[5]~26_combout\,
	combout => \mux_sel|X[5]~11_combout\);

-- Location: LCCOMB_X65_Y69_N28
\mux_sel|X[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[6]~12_combout\ = \INV_A~input_o\ $ (\A[6]~input_o\ $ (((\full_adder|FA:5:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \full_adder|FA:5:FA_i|Cout~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \mux_sel|X[6]~12_combout\);

-- Location: LCCOMB_X65_Y69_N22
\mux_sel|X[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[6]~13_combout\ = (\mux_sel|X[6]~12_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[6]~25_combout\))))) # (!\mux_sel|X[6]~12_combout\ & (\mux_b|X[6]~25_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_sel|X[6]~12_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_b|X[6]~25_combout\,
	combout => \mux_sel|X[6]~13_combout\);

-- Location: LCCOMB_X57_Y69_N8
\mux_sel|X[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[7]~14_combout\ = \A[7]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:6:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \full_adder|FA:6:FA_i|Cout~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[7]~14_combout\);

-- Location: LCCOMB_X58_Y69_N10
\mux_sel|X[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[7]~15_combout\ = (\mux_b|X[7]~24_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_sel|X[7]~14_combout\))))) # (!\mux_b|X[7]~24_combout\ & (\mux_sel|X[7]~14_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \mux_b|X[7]~24_combout\,
	datac => \SEL[0]~input_o\,
	datad => \mux_sel|X[7]~14_combout\,
	combout => \mux_sel|X[7]~15_combout\);

-- Location: LCCOMB_X58_Y69_N4
\mux_sel|X[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[8]~16_combout\ = \A[8]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:7:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \A[8]~input_o\,
	datac => \full_adder|FA:7:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[8]~16_combout\);

-- Location: LCCOMB_X58_Y69_N22
\mux_sel|X[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[8]~17_combout\ = (\mux_sel|X[8]~16_combout\ & (\SEL[1]~input_o\ $ (((\mux_b|X[8]~23_combout\) # (\SEL[0]~input_o\))))) # (!\mux_sel|X[8]~16_combout\ & (\mux_b|X[8]~23_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \mux_sel|X[8]~16_combout\,
	datac => \mux_b|X[8]~23_combout\,
	datad => \SEL[0]~input_o\,
	combout => \mux_sel|X[8]~17_combout\);

-- Location: LCCOMB_X57_Y69_N18
\mux_sel|X[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[9]~18_combout\ = \A[9]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:8:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \full_adder|FA:8:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[9]~18_combout\);

-- Location: LCCOMB_X57_Y69_N20
\mux_sel|X[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[9]~19_combout\ = (\mux_sel|X[9]~18_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[9]~22_combout\))))) # (!\mux_sel|X[9]~18_combout\ & (\mux_b|X[9]~22_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \mux_sel|X[9]~18_combout\,
	datac => \SEL[0]~input_o\,
	datad => \mux_b|X[9]~22_combout\,
	combout => \mux_sel|X[9]~19_combout\);

-- Location: LCCOMB_X57_Y69_N22
\mux_sel|X[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[10]~20_combout\ = \A[10]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:9:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:9:FA_i|Cout~0_combout\,
	datab => \A[10]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[10]~20_combout\);

-- Location: LCCOMB_X57_Y69_N24
\mux_sel|X[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[10]~21_combout\ = (\mux_sel|X[10]~20_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[10]~21_combout\))))) # (!\mux_sel|X[10]~20_combout\ & (\mux_b|X[10]~21_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[10]~20_combout\,
	datab => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \mux_b|X[10]~21_combout\,
	combout => \mux_sel|X[10]~21_combout\);

-- Location: LCCOMB_X57_Y69_N26
\mux_sel|X[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[11]~22_combout\ = \INV_A~input_o\ $ (\A[11]~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:10:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \A[11]~input_o\,
	datad => \full_adder|FA:10:FA_i|Cout~0_combout\,
	combout => \mux_sel|X[11]~22_combout\);

-- Location: LCCOMB_X57_Y69_N12
\mux_sel|X[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[11]~23_combout\ = (\mux_sel|X[11]~22_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[11]~20_combout\))))) # (!\mux_sel|X[11]~22_combout\ & (\mux_b|X[11]~20_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[11]~22_combout\,
	datab => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \mux_b|X[11]~20_combout\,
	combout => \mux_sel|X[11]~23_combout\);

-- Location: LCCOMB_X58_Y69_N8
\mux_sel|X[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[12]~24_combout\ = \A[12]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:11:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:11:FA_i|Cout~0_combout\,
	datab => \SEL[1]~input_o\,
	datac => \A[12]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[12]~24_combout\);

-- Location: LCCOMB_X57_Y69_N30
\mux_sel|X[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[12]~25_combout\ = (\mux_sel|X[12]~24_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[12]~19_combout\))))) # (!\mux_sel|X[12]~24_combout\ & (\mux_b|X[12]~19_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \mux_sel|X[12]~24_combout\,
	datad => \mux_b|X[12]~19_combout\,
	combout => \mux_sel|X[12]~25_combout\);

-- Location: LCCOMB_X50_Y69_N30
\mux_sel|X[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[13]~26_combout\ = \A[13]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:12:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:12:FA_i|Cout~0_combout\,
	datab => \A[13]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[13]~26_combout\);

-- Location: LCCOMB_X50_Y69_N0
\mux_sel|X[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[13]~27_combout\ = (\mux_sel|X[13]~26_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[13]~18_combout\))))) # (!\mux_sel|X[13]~26_combout\ & (\mux_b|X[13]~18_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[13]~26_combout\,
	datab => \SEL[0]~input_o\,
	datac => \mux_b|X[13]~18_combout\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[13]~27_combout\);

-- Location: LCCOMB_X50_Y69_N2
\mux_sel|X[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[14]~28_combout\ = \A[14]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:13:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \A[14]~input_o\,
	datac => \full_adder|FA:13:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[14]~28_combout\);

-- Location: LCCOMB_X50_Y69_N28
\mux_sel|X[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[14]~29_combout\ = (\mux_b|X[14]~17_combout\ & (\SEL[1]~input_o\ $ (((\mux_sel|X[14]~28_combout\) # (\SEL[0]~input_o\))))) # (!\mux_b|X[14]~17_combout\ & (\mux_sel|X[14]~28_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[14]~17_combout\,
	datab => \mux_sel|X[14]~28_combout\,
	datac => \SEL[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[14]~29_combout\);

-- Location: LCCOMB_X50_Y69_N14
\mux_sel|X[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[15]~30_combout\ = \A[15]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:14:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \full_adder|FA:14:FA_i|Cout~0_combout\,
	datac => \A[15]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[15]~30_combout\);

-- Location: LCCOMB_X50_Y69_N24
\mux_sel|X[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[15]~31_combout\ = (\mux_b|X[15]~16_combout\ & (\SEL[1]~input_o\ $ (((\mux_sel|X[15]~30_combout\) # (\SEL[0]~input_o\))))) # (!\mux_b|X[15]~16_combout\ & (\mux_sel|X[15]~30_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[15]~16_combout\,
	datab => \mux_sel|X[15]~30_combout\,
	datac => \SEL[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[15]~31_combout\);

-- Location: LCCOMB_X50_Y69_N10
\mux_sel|X[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[16]~32_combout\ = \A[16]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:15:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \full_adder|FA:15:FA_i|Cout~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[16]~32_combout\);

-- Location: LCCOMB_X50_Y69_N20
\mux_sel|X[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[16]~33_combout\ = (\mux_sel|X[16]~32_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[16]~15_combout\))))) # (!\mux_sel|X[16]~32_combout\ & (\mux_b|X[16]~15_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[16]~32_combout\,
	datab => \SEL[0]~input_o\,
	datac => \mux_b|X[16]~15_combout\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[16]~33_combout\);

-- Location: LCCOMB_X58_Y69_N18
\mux_sel|X[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[17]~34_combout\ = \A[17]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:16:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \full_adder|FA:16:FA_i|Cout~0_combout\,
	datac => \A[17]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[17]~34_combout\);

-- Location: LCCOMB_X58_Y69_N20
\mux_sel|X[17]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[17]~35_combout\ = (\mux_sel|X[17]~34_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[17]~14_combout\))))) # (!\mux_sel|X[17]~34_combout\ & (\mux_b|X[17]~14_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \mux_sel|X[17]~34_combout\,
	datac => \SEL[0]~input_o\,
	datad => \mux_b|X[17]~14_combout\,
	combout => \mux_sel|X[17]~35_combout\);

-- Location: LCCOMB_X55_Y69_N0
\mux_sel|X[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[18]~36_combout\ = \A[18]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:17:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \full_adder|FA:17:FA_i|Cout~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[18]~36_combout\);

-- Location: LCCOMB_X55_Y69_N26
\mux_sel|X[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[18]~37_combout\ = (\mux_b|X[18]~13_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_sel|X[18]~36_combout\))))) # (!\mux_b|X[18]~13_combout\ & (\mux_sel|X[18]~36_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_b|X[18]~13_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_sel|X[18]~36_combout\,
	combout => \mux_sel|X[18]~37_combout\);

-- Location: LCCOMB_X55_Y69_N20
\mux_sel|X[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[19]~38_combout\ = \A[19]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:18:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \full_adder|FA:18:FA_i|Cout~0_combout\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[19]~38_combout\);

-- Location: LCCOMB_X55_Y69_N6
\mux_sel|X[19]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[19]~39_combout\ = (\mux_b|X[19]~12_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_sel|X[19]~38_combout\))))) # (!\mux_b|X[19]~12_combout\ & (\mux_sel|X[19]~38_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[19]~12_combout\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \mux_sel|X[19]~38_combout\,
	combout => \mux_sel|X[19]~39_combout\);

-- Location: LCCOMB_X55_Y69_N16
\mux_sel|X[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[20]~40_combout\ = \A[20]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:19:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:19:FA_i|Cout~0_combout\,
	datab => \A[20]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[20]~40_combout\);

-- Location: LCCOMB_X55_Y69_N2
\mux_sel|X[20]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[20]~41_combout\ = (\mux_b|X[20]~11_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_sel|X[20]~40_combout\))))) # (!\mux_b|X[20]~11_combout\ & (\mux_sel|X[20]~40_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_b|X[20]~11_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_sel|X[20]~40_combout\,
	combout => \mux_sel|X[20]~41_combout\);

-- Location: LCCOMB_X55_Y69_N4
\mux_sel|X[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[21]~42_combout\ = (\mux_b|X[21]~10_combout\ & ((\SEL[0]~input_o\) # (\INV_A~input_o\ $ (\A[21]~input_o\)))) # (!\mux_b|X[21]~10_combout\ & (\SEL[0]~input_o\ & (\INV_A~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \mux_b|X[21]~10_combout\,
	datac => \SEL[0]~input_o\,
	datad => \A[21]~input_o\,
	combout => \mux_sel|X[21]~42_combout\);

-- Location: LCCOMB_X55_Y69_N22
\full_adder|FA:21:FA_i|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:21:FA_i|S~combout\ = \INV_A~input_o\ $ (\full_adder|FA:20:FA_i|Cout~0_combout\ $ (\mux_b|X[21]~10_combout\ $ (\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_A~input_o\,
	datab => \full_adder|FA:20:FA_i|Cout~0_combout\,
	datac => \mux_b|X[21]~10_combout\,
	datad => \A[21]~input_o\,
	combout => \full_adder|FA:21:FA_i|S~combout\);

-- Location: LCCOMB_X54_Y69_N26
\mux_sel|X[21]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[21]~43_combout\ = (\SEL[1]~input_o\ & (((\full_adder|FA:21:FA_i|S~combout\ & !\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & (\mux_sel|X[21]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[21]~42_combout\,
	datab => \full_adder|FA:21:FA_i|S~combout\,
	datac => \SEL[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[21]~43_combout\);

-- Location: LCCOMB_X54_Y69_N12
\mux_sel|X[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[22]~44_combout\ = \A[22]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:21:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \INV_A~input_o\,
	datac => \full_adder|FA:21:FA_i|Cout~0_combout\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[22]~44_combout\);

-- Location: LCCOMB_X54_Y69_N6
\mux_sel|X[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[22]~45_combout\ = (\mux_sel|X[22]~44_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[22]~9_combout\))))) # (!\mux_sel|X[22]~44_combout\ & (\mux_b|X[22]~9_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[22]~44_combout\,
	datab => \SEL[0]~input_o\,
	datac => \mux_b|X[22]~9_combout\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[22]~45_combout\);

-- Location: LCCOMB_X54_Y69_N0
\mux_sel|X[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[23]~46_combout\ = \A[23]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:22:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \full_adder|FA:22:FA_i|Cout~0_combout\,
	datac => \INV_A~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[23]~46_combout\);

-- Location: LCCOMB_X54_Y69_N18
\mux_sel|X[23]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[23]~47_combout\ = (\mux_b|X[23]~8_combout\ & (\SEL[1]~input_o\ $ (((\mux_sel|X[23]~46_combout\) # (\SEL[0]~input_o\))))) # (!\mux_b|X[23]~8_combout\ & (\mux_sel|X[23]~46_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[23]~8_combout\,
	datab => \mux_sel|X[23]~46_combout\,
	datac => \SEL[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[23]~47_combout\);

-- Location: LCCOMB_X54_Y69_N4
\mux_sel|X[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[24]~48_combout\ = \A[24]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:23:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \INV_A~input_o\,
	datac => \full_adder|FA:23:FA_i|Cout~0_combout\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[24]~48_combout\);

-- Location: LCCOMB_X54_Y69_N30
\mux_sel|X[24]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[24]~49_combout\ = (\mux_sel|X[24]~48_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[24]~7_combout\))))) # (!\mux_sel|X[24]~48_combout\ & (\mux_b|X[24]~7_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \mux_sel|X[24]~48_combout\,
	datac => \SEL[0]~input_o\,
	datad => \mux_b|X[24]~7_combout\,
	combout => \mux_sel|X[24]~49_combout\);

-- Location: LCCOMB_X47_Y69_N30
\mux_sel|X[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[25]~50_combout\ = \INV_A~input_o\ $ (\A[25]~input_o\ $ (((\full_adder|FA:24:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:24:FA_i|Cout~0_combout\,
	datab => \SEL[1]~input_o\,
	datac => \INV_A~input_o\,
	datad => \A[25]~input_o\,
	combout => \mux_sel|X[25]~50_combout\);

-- Location: LCCOMB_X47_Y69_N16
\mux_sel|X[25]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[25]~51_combout\ = (\mux_b|X[25]~6_combout\ & (\SEL[1]~input_o\ $ (((\mux_sel|X[25]~50_combout\) # (\SEL[0]~input_o\))))) # (!\mux_b|X[25]~6_combout\ & (\mux_sel|X[25]~50_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[25]~6_combout\,
	datab => \SEL[1]~input_o\,
	datac => \mux_sel|X[25]~50_combout\,
	datad => \SEL[0]~input_o\,
	combout => \mux_sel|X[25]~51_combout\);

-- Location: LCCOMB_X47_Y69_N18
\mux_sel|X[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[26]~52_combout\ = \A[26]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:25:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \INV_A~input_o\,
	datad => \full_adder|FA:25:FA_i|Cout~0_combout\,
	combout => \mux_sel|X[26]~52_combout\);

-- Location: LCCOMB_X47_Y69_N12
\mux_sel|X[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[26]~53_combout\ = (\mux_sel|X[26]~52_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[26]~5_combout\))))) # (!\mux_sel|X[26]~52_combout\ & (\mux_b|X[26]~5_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_sel|X[26]~52_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_b|X[26]~5_combout\,
	combout => \mux_sel|X[26]~53_combout\);

-- Location: LCCOMB_X47_Y69_N22
\mux_sel|X[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[27]~54_combout\ = \A[27]~input_o\ $ (\INV_A~input_o\ $ (((\SEL[1]~input_o\ & \full_adder|FA:26:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \INV_A~input_o\,
	datad => \full_adder|FA:26:FA_i|Cout~0_combout\,
	combout => \mux_sel|X[27]~54_combout\);

-- Location: LCCOMB_X47_Y69_N0
\mux_sel|X[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[27]~55_combout\ = (\mux_b|X[27]~4_combout\ & (\SEL[1]~input_o\ $ (((\mux_sel|X[27]~54_combout\) # (\SEL[0]~input_o\))))) # (!\mux_b|X[27]~4_combout\ & (\mux_sel|X[27]~54_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_b|X[27]~4_combout\,
	datab => \SEL[1]~input_o\,
	datac => \mux_sel|X[27]~54_combout\,
	datad => \SEL[0]~input_o\,
	combout => \mux_sel|X[27]~55_combout\);

-- Location: LCCOMB_X47_Y69_N2
\mux_sel|X[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[28]~56_combout\ = \A[28]~input_o\ $ (\INV_A~input_o\ $ (((\full_adder|FA:27:FA_i|Cout~0_combout\ & \SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder|FA:27:FA_i|Cout~0_combout\,
	datab => \A[28]~input_o\,
	datac => \INV_A~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[28]~56_combout\);

-- Location: LCCOMB_X47_Y69_N20
\mux_sel|X[28]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[28]~57_combout\ = (\mux_sel|X[28]~56_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\mux_b|X[28]~3_combout\))))) # (!\mux_sel|X[28]~56_combout\ & (\mux_b|X[28]~3_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \mux_sel|X[28]~56_combout\,
	datac => \SEL[1]~input_o\,
	datad => \mux_b|X[28]~3_combout\,
	combout => \mux_sel|X[28]~57_combout\);

-- Location: LCCOMB_X53_Y70_N12
\mux_a|X[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_a|X[29]~2_combout\ = \A[29]~input_o\ $ (\INV_A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_a|X[29]~2_combout\);

-- Location: LCCOMB_X53_Y70_N22
\mux_sel|X[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[29]~58_combout\ = (!\SEL[1]~input_o\ & ((\mux_a|X[29]~2_combout\ & ((\mux_b|X[29]~2_combout\) # (\SEL[0]~input_o\))) # (!\mux_a|X[29]~2_combout\ & (\mux_b|X[29]~2_combout\ & \SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_a|X[29]~2_combout\,
	datab => \mux_b|X[29]~2_combout\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \mux_sel|X[29]~58_combout\);

-- Location: LCCOMB_X59_Y69_N20
\mux_sel|X[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[1]~59_combout\ = (!\SEL[0]~input_o\ & \SEL[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \mux_sel|X[1]~59_combout\);

-- Location: LCCOMB_X53_Y70_N0
\full_adder|FA:29:FA_i|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:29:FA_i|S~0_combout\ = \A[29]~input_o\ $ (\INV_A~input_o\ $ (\B[29]~input_o\ $ (\INV_B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \INV_A~input_o\,
	datac => \B[29]~input_o\,
	datad => \INV_B~input_o\,
	combout => \full_adder|FA:29:FA_i|S~0_combout\);

-- Location: LCCOMB_X53_Y70_N18
\mux_sel|X[29]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[29]~60_combout\ = (\mux_sel|X[29]~58_combout\) # ((\mux_sel|X[1]~59_combout\ & (\full_adder|FA:28:FA_i|Cout~0_combout\ $ (\full_adder|FA:29:FA_i|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[29]~58_combout\,
	datab => \full_adder|FA:28:FA_i|Cout~0_combout\,
	datac => \mux_sel|X[1]~59_combout\,
	datad => \full_adder|FA:29:FA_i|S~0_combout\,
	combout => \mux_sel|X[29]~60_combout\);

-- Location: LCCOMB_X53_Y70_N20
\mux_sel|X[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[30]~61_combout\ = \A[30]~input_o\ $ (\INV_A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[30]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[30]~61_combout\);

-- Location: LCCOMB_X53_Y70_N6
\mux_sel|X[30]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[30]~62_combout\ = (!\SEL[1]~input_o\ & ((\mux_sel|X[30]~61_combout\ & ((\mux_b|X[30]~1_combout\) # (\SEL[0]~input_o\))) # (!\mux_sel|X[30]~61_combout\ & (\mux_b|X[30]~1_combout\ & \SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \mux_sel|X[30]~61_combout\,
	datac => \mux_b|X[30]~1_combout\,
	datad => \SEL[0]~input_o\,
	combout => \mux_sel|X[30]~62_combout\);

-- Location: LCCOMB_X53_Y70_N24
\mux_sel|X[30]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[30]~63_combout\ = \INV_B~input_o\ $ (\A[30]~input_o\ $ (\B[30]~input_o\ $ (\INV_A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INV_B~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \INV_A~input_o\,
	combout => \mux_sel|X[30]~63_combout\);

-- Location: LCCOMB_X53_Y70_N26
\mux_sel|X[30]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[30]~64_combout\ = (\mux_sel|X[30]~62_combout\) # ((\mux_sel|X[1]~59_combout\ & (\full_adder|FA:29:FA_i|Cout~0_combout\ $ (\mux_sel|X[30]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[30]~62_combout\,
	datab => \full_adder|FA:29:FA_i|Cout~0_combout\,
	datac => \mux_sel|X[1]~59_combout\,
	datad => \mux_sel|X[30]~63_combout\,
	combout => \mux_sel|X[30]~64_combout\);

-- Location: LCCOMB_X59_Y69_N30
\mux_sel|X[31]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[31]~65_combout\ = (!\SEL[1]~input_o\ & ((\mux_a|X[31]~1_combout\ & ((\SEL[0]~input_o\) # (\mux_b|X[31]~0_combout\))) # (!\mux_a|X[31]~1_combout\ & (\SEL[0]~input_o\ & \mux_b|X[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \mux_a|X[31]~1_combout\,
	datac => \SEL[0]~input_o\,
	datad => \mux_b|X[31]~0_combout\,
	combout => \mux_sel|X[31]~65_combout\);

-- Location: LCCOMB_X59_Y69_N8
\full_adder|FA:31:FA_i|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_adder|FA:31:FA_i|S~0_combout\ = \A[31]~input_o\ $ (\INV_B~input_o\ $ (\B[31]~input_o\ $ (\INV_A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \INV_B~input_o\,
	datac => \B[31]~input_o\,
	datad => \INV_A~input_o\,
	combout => \full_adder|FA:31:FA_i|S~0_combout\);

-- Location: LCCOMB_X59_Y69_N26
\mux_sel|X[31]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[31]~66_combout\ = (\mux_sel|X[31]~65_combout\) # ((\mux_sel|X[1]~59_combout\ & (\full_adder|FA:30:FA_i|Cout~0_combout\ $ (\full_adder|FA:31:FA_i|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[31]~65_combout\,
	datab => \full_adder|FA:30:FA_i|Cout~0_combout\,
	datac => \full_adder|FA:31:FA_i|S~0_combout\,
	datad => \mux_sel|X[1]~59_combout\,
	combout => \mux_sel|X[31]~66_combout\);

-- Location: LCCOMB_X57_Y69_N4
\flag_zero|tmp[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~9_combout\ = (\mux_sel|X[29]~60_combout\) # ((\mux_sel|X[30]~64_combout\) # ((\mux_sel|X[31]~66_combout\) # (\mux_sel|X[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[29]~60_combout\,
	datab => \mux_sel|X[30]~64_combout\,
	datac => \mux_sel|X[31]~66_combout\,
	datad => \mux_sel|X[0]~1_combout\,
	combout => \flag_zero|tmp[31]~9_combout\);

-- Location: LCCOMB_X47_Y69_N14
\flag_zero|tmp[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~8_combout\ = (\mux_sel|X[26]~53_combout\) # ((\mux_sel|X[25]~51_combout\) # ((\mux_sel|X[28]~57_combout\) # (\mux_sel|X[27]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[26]~53_combout\,
	datab => \mux_sel|X[25]~51_combout\,
	datac => \mux_sel|X[28]~57_combout\,
	datad => \mux_sel|X[27]~55_combout\,
	combout => \flag_zero|tmp[31]~8_combout\);

-- Location: LCCOMB_X54_Y69_N16
\flag_zero|tmp[31]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~5_combout\ = (\mux_sel|X[19]~39_combout\) # ((\mux_sel|X[18]~37_combout\) # ((\mux_sel|X[20]~41_combout\) # (\mux_sel|X[17]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[19]~39_combout\,
	datab => \mux_sel|X[18]~37_combout\,
	datac => \mux_sel|X[20]~41_combout\,
	datad => \mux_sel|X[17]~35_combout\,
	combout => \flag_zero|tmp[31]~5_combout\);

-- Location: LCCOMB_X54_Y69_N2
\mux_sel|X[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel|X[21]~67_combout\ = (\SEL[1]~input_o\ & (\full_adder|FA:21:FA_i|S~combout\ & !\SEL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \full_adder|FA:21:FA_i|S~combout\,
	datac => \SEL[0]~input_o\,
	combout => \mux_sel|X[21]~67_combout\);

-- Location: LCCOMB_X54_Y69_N28
\flag_zero|tmp[31]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~6_combout\ = (\mux_sel|X[21]~67_combout\) # ((\mux_sel|X[22]~45_combout\) # ((\mux_sel|X[21]~42_combout\ & !\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[21]~42_combout\,
	datab => \mux_sel|X[21]~67_combout\,
	datac => \mux_sel|X[22]~45_combout\,
	datad => \SEL[1]~input_o\,
	combout => \flag_zero|tmp[31]~6_combout\);

-- Location: LCCOMB_X54_Y69_N14
\flag_zero|tmp[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~7_combout\ = (\mux_sel|X[23]~47_combout\) # ((\flag_zero|tmp[31]~5_combout\) # ((\mux_sel|X[24]~49_combout\) # (\flag_zero|tmp[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[23]~47_combout\,
	datab => \flag_zero|tmp[31]~5_combout\,
	datac => \mux_sel|X[24]~49_combout\,
	datad => \flag_zero|tmp[31]~6_combout\,
	combout => \flag_zero|tmp[31]~7_combout\);

-- Location: LCCOMB_X58_Y69_N6
\flag_zero|tmp[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~1_combout\ = (\mux_sel|X[8]~17_combout\) # ((\mux_sel|X[5]~11_combout\) # ((\mux_sel|X[6]~13_combout\) # (\mux_sel|X[7]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[8]~17_combout\,
	datab => \mux_sel|X[5]~11_combout\,
	datac => \mux_sel|X[6]~13_combout\,
	datad => \mux_sel|X[7]~15_combout\,
	combout => \flag_zero|tmp[31]~1_combout\);

-- Location: LCCOMB_X57_Y69_N16
\flag_zero|tmp[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~2_combout\ = (\mux_sel|X[11]~23_combout\) # ((\mux_sel|X[12]~25_combout\) # ((\mux_sel|X[10]~21_combout\) # (\mux_sel|X[9]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[11]~23_combout\,
	datab => \mux_sel|X[12]~25_combout\,
	datac => \mux_sel|X[10]~21_combout\,
	datad => \mux_sel|X[9]~19_combout\,
	combout => \flag_zero|tmp[31]~2_combout\);

-- Location: LCCOMB_X50_Y69_N6
\flag_zero|tmp[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~3_combout\ = (\mux_sel|X[16]~33_combout\) # ((\mux_sel|X[15]~31_combout\) # ((\mux_sel|X[14]~29_combout\) # (\mux_sel|X[13]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[16]~33_combout\,
	datab => \mux_sel|X[15]~31_combout\,
	datac => \mux_sel|X[14]~29_combout\,
	datad => \mux_sel|X[13]~27_combout\,
	combout => \flag_zero|tmp[31]~3_combout\);

-- Location: LCCOMB_X62_Y70_N24
\flag_zero|tmp[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~0_combout\ = (\mux_sel|X[4]~9_combout\) # ((\mux_sel|X[2]~5_combout\) # ((\mux_sel|X[1]~3_combout\) # (\mux_sel|X[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel|X[4]~9_combout\,
	datab => \mux_sel|X[2]~5_combout\,
	datac => \mux_sel|X[1]~3_combout\,
	datad => \mux_sel|X[3]~7_combout\,
	combout => \flag_zero|tmp[31]~0_combout\);

-- Location: LCCOMB_X57_Y69_N2
\flag_zero|tmp[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~4_combout\ = (\flag_zero|tmp[31]~1_combout\) # ((\flag_zero|tmp[31]~2_combout\) # ((\flag_zero|tmp[31]~3_combout\) # (\flag_zero|tmp[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag_zero|tmp[31]~1_combout\,
	datab => \flag_zero|tmp[31]~2_combout\,
	datac => \flag_zero|tmp[31]~3_combout\,
	datad => \flag_zero|tmp[31]~0_combout\,
	combout => \flag_zero|tmp[31]~4_combout\);

-- Location: LCCOMB_X56_Y69_N16
\flag_zero|tmp[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_zero|tmp[31]~10_combout\ = (\flag_zero|tmp[31]~9_combout\) # ((\flag_zero|tmp[31]~8_combout\) # ((\flag_zero|tmp[31]~7_combout\) # (\flag_zero|tmp[31]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag_zero|tmp[31]~9_combout\,
	datab => \flag_zero|tmp[31]~8_combout\,
	datac => \flag_zero|tmp[31]~7_combout\,
	datad => \flag_zero|tmp[31]~4_combout\,
	combout => \flag_zero|tmp[31]~10_combout\);

ww_Cout <= \Cout~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_ZERO <= \ZERO~output_o\;
END structure;


