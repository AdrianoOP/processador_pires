-- Copyright (C) 1991-2012 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 232 07/05/2012 Service Pack 1 SJ Web Edition"

-- DATE "09/04/2013 00:39:08"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	C : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	D : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	saida : OUT IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	ULA_ctrl : IN std_logic_vector(3 DOWNTO 0);
	Z : OUT std_logic;
	N : OUT std_logic;
	ULA_en : IN std_logic;
	reset : IN std_logic
	);
END ULA;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_en	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ULA_ctrl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_ULA_en : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \ULA_en~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux25~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \RESULT~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \ULA_en~input_o\ : std_logic;
SIGNAL \ULA_en~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ULA_ctrl[1]~input_o\ : std_logic;
SIGNAL \ULA_ctrl[3]~input_o\ : std_logic;
SIGNAL \ULA_ctrl[0]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~0clkctrl_outclk\ : std_logic;
SIGNAL \ULA_ctrl[2]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \saida[0]$latch~combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \saida[1]$latch~combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \saida[2]$latch~combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \saida[3]$latch~combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \saida[4]$latch~combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \saida[5]$latch~combout\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \saida[6]$latch~combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \saida[7]$latch~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL temp_mult : std_logic_vector(15 DOWNTO 0);
SIGNAL temp : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_C <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(C);
ww_D <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(D);
saida <= IEEE.NUMERIC_STD.SIGNED(ww_saida);
ww_ULA_ctrl <= ULA_ctrl;
Z <= ww_Z;
N <= ww_N;
ww_ULA_en <= ULA_en;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ULA_en~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ULA_en~input_o\);

\Mux25~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux25~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\C[0]~input_o\ & ((\Add0~1_combout\ & (\Add0~3_cout\ & VCC)) # (!\Add0~1_combout\ & (!\Add0~3_cout\)))) # (!\C[0]~input_o\ & ((\Add0~1_combout\ & (!\Add0~3_cout\)) # (!\Add0~1_combout\ & ((\Add0~3_cout\) # (GND)))))
-- \Add0~5\ = CARRY((\C[0]~input_o\ & (!\Add0~1_combout\ & !\Add0~3_cout\)) # (!\C[0]~input_o\ & ((!\Add0~3_cout\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add0~3_cout\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X26_Y20_N14
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = ((\Add0~8_combout\ $ (\C[1]~input_o\ $ (!\Add0~5\)))) # (GND)
-- \Add0~10\ = CARRY((\Add0~8_combout\ & ((\C[1]~input_o\) # (!\Add0~5\))) # (!\Add0~8_combout\ & (\C[1]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \C[1]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X26_Y20_N16
\Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12_combout\ & ((\C[2]~input_o\ & (\Add0~10\ & VCC)) # (!\C[2]~input_o\ & (!\Add0~10\)))) # (!\Add0~12_combout\ & ((\C[2]~input_o\ & (!\Add0~10\)) # (!\C[2]~input_o\ & ((\Add0~10\) # (GND)))))
-- \Add0~14\ = CARRY((\Add0~12_combout\ & (!\C[2]~input_o\ & !\Add0~10\)) # (!\Add0~12_combout\ & ((!\Add0~10\) # (!\C[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \C[2]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X25_Y19_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\ = (\D[1]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) $ (VCC))) # (!\D[1]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) 
-- & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\ = CARRY((\D[1]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\);

-- Location: LCCOMB_X24_Y19_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\);

-- Location: LCCOMB_X24_Y19_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\);

-- Location: LCCOMB_X24_Y19_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\);

-- Location: LCCOMB_X25_Y20_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ $ (GND))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) & ((GND) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\);

-- Location: LCCOMB_X26_Y19_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\);

-- Location: LCCOMB_X26_Y19_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\);

-- Location: LCCOMB_X26_Y19_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\);

-- Location: LCCOMB_X25_Y19_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\);

-- Location: LCCOMB_X25_Y19_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\);

-- Location: LCCOMB_X25_Y19_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\);

-- Location: LCCOMB_X25_Y19_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\);

-- Location: LCCOMB_X25_Y19_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\);

-- Location: LCCOMB_X25_Y20_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ = !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\ = CARRY(!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\);

-- Location: LCCOMB_X26_Y19_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\);

-- Location: LCCOMB_X25_Y19_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\);

-- Location: LCCOMB_X25_Y20_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ = !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\);

-- Location: LCCOMB_X24_Y19_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8)))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\);

-- Location: LCCOMB_X25_Y19_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\);

-- Location: LCCOMB_X24_Y19_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ = !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\ = CARRY(!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\);

-- Location: LCCOMB_X25_Y19_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\);

-- Location: LCCOMB_X26_Y19_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\);

-- Location: LCCOMB_X25_Y19_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\);

-- Location: LCCOMB_X25_Y19_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\);

-- Location: LCCOMB_X25_Y19_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\);

-- Location: LCCOMB_X25_Y19_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\ = !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\);

-- Location: LCCOMB_X22_Y18_N4
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\C[0]~input_o\) # (\ULA_ctrl[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[0]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\C[1]~input_o\) # (\ULA_ctrl[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[1]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X23_Y18_N30
\Mux6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\C[1]~input_o\ & !\ULA_ctrl[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[1]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X23_Y18_N26
\RESULT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RESULT~0_combout\ = (\C[1]~input_o\ & \D[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[1]~input_o\,
	datad => \D[1]~input_o\,
	combout => \RESULT~0_combout\);

-- Location: LCCOMB_X26_Y20_N6
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \D[1]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & ((!\D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[1]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \D[1]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X24_Y18_N26
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\C[2]~input_o\) # (\ULA_ctrl[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X24_Y18_N12
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\C[2]~input_o\) # (\D[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datac => \D[2]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X26_Y20_N4
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \D[2]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & ((!\D[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[1]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \D[2]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X25_Y18_N30
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\D[3]~input_o\) # (\C[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \C[3]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X26_Y20_N30
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\D[3]~input_o\ & (\ULA_ctrl[2]~input_o\ & !\ULA_ctrl[1]~input_o\)) # (!\D[3]~input_o\ & (!\ULA_ctrl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ULA_ctrl[3]~input_o\) # (\C[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA_ctrl[3]~input_o\,
	datad => \C[5]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\C[6]~input_o\) # (\ULA_ctrl[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[6]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X26_Y18_N10
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\C[7]~input_o\) # (\ULA_ctrl[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[7]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X27_Y19_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ = (\D[3]~input_o\) # ((\D[1]~input_o\ & \D[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \D[3]~input_o\,
	datac => \D[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\);

-- Location: LCCOMB_X25_Y20_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\C[4]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (((!\C[3]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \C[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4));

-- Location: LCCOMB_X24_Y19_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ (((\C[5]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & (!\C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \C[4]~input_o\,
	datac => \C[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5));

-- Location: LCCOMB_X27_Y19_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ $ ((\C[2]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & ((!\C[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datac => \C[2]~input_o\,
	datad => \C[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2));

-- Location: LCCOMB_X25_Y20_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) = LCELL((\D[0]~input_o\ & (\C[4]~input_o\ $ (((\D[1]~input_o\))))) # (!\D[0]~input_o\ & (((!\C[3]~input_o\ & \D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \C[3]~input_o\,
	datac => \D[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4));

-- Location: LCCOMB_X25_Y20_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) = LCELL((\D[0]~input_o\ & ((\C[7]~input_o\ $ (\D[1]~input_o\)))) # (!\D[0]~input_o\ & (!\C[6]~input_o\ & ((\D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \D[0]~input_o\,
	datac => \C[7]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7));

-- Location: LCCOMB_X29_Y19_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[1]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1),
	datac => \C[1]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X29_Y19_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[0]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0),
	datac => \C[0]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X26_Y19_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ ((\C[3]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\C[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \C[3]~input_o\,
	datac => \C[2]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3));

-- Location: LCCOMB_X27_Y19_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) = LCELL(\D[5]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & ((\C[0]~input_o\) # (\D[4]~input_o\))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (\C[0]~input_o\ & \D[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \C[0]~input_o\,
	datac => \D[4]~input_o\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0));

-- Location: LCCOMB_X27_Y19_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) = LCELL((\D[0]~input_o\ & (\C[3]~input_o\ $ (((\D[1]~input_o\))))) # (!\D[0]~input_o\ & (((!\C[2]~input_o\ & \D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3));

-- Location: LCCOMB_X27_Y19_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) = LCELL(\D[3]~input_o\ $ (((\D[2]~input_o\ & ((\C[0]~input_o\) # (\D[1]~input_o\))) # (!\D[2]~input_o\ & (\C[0]~input_o\ & \D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \D[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0));

-- Location: LCCOMB_X25_Y20_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & ((\C[5]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (!\C[4]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datac => \C[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5));

-- Location: LCCOMB_X29_Y19_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[3]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3),
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X25_Y20_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\C[6]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (((!\C[5]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datac => \C[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6));

-- Location: LCCOMB_X26_Y19_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[5]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \C[5]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X27_Y19_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) = LCELL((\C[7]~input_o\ & (!\D[5]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (\D[4]~input_o\)))) # (!\C[7]~input_o\ & (\D[5]~input_o\ $ 
-- (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \D[4]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \C[7]~input_o\,
	datac => \D[4]~input_o\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8));

-- Location: LCCOMB_X29_Y19_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[7]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datab => \C[7]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7),
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7));

-- Location: LCCOMB_X29_Y19_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[7]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8),
	datab => \C[7]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8));

-- Location: LCCOMB_X29_Y19_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1) = LCELL((\C[0]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[0]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[6]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1));

-- Location: LCCOMB_X29_Y19_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0) = LCELL((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & \D[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0));

-- Location: LCCOMB_X29_Y19_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3) = LCELL((\C[2]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[2]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[6]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3));

-- Location: LCCOMB_X29_Y19_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5) = LCELL((\C[4]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[4]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[6]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5));

-- Location: LCCOMB_X29_Y19_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7) = LCELL((\C[6]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[6]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[6]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7));

-- Location: LCCOMB_X29_Y19_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8) = LCELL((\C[7]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[7]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[6]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8));

-- Location: IOOBUF_X20_Y0_N2
\saida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[0]$latch~combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\saida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[1]$latch~combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\saida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[2]$latch~combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\saida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[3]$latch~combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\saida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[4]$latch~combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\saida[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[5]$latch~combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\saida[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[6]$latch~combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\saida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[7]$latch~combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\N~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(7),
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\ULA_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_en,
	o => \ULA_en~input_o\);

-- Location: CLKCTRL_G17
\ULA_en~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ULA_en~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ULA_en~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y15_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\ULA_ctrl[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(1),
	o => \ULA_ctrl[1]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\ULA_ctrl[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(3),
	o => \ULA_ctrl[3]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\ULA_ctrl[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(0),
	o => \ULA_ctrl[0]~input_o\);

-- Location: LCCOMB_X24_Y16_N24
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\ULA_ctrl[2]~input_o\ & (\ULA_ctrl[1]~input_o\ & (\ULA_ctrl[3]~input_o\ & !\ULA_ctrl[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: CLKCTRL_G5
\Mux25~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux25~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux25~0clkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N8
\ULA_ctrl[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(2),
	o => \ULA_ctrl[2]~input_o\);

-- Location: LCCOMB_X25_Y18_N12
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\ULA_ctrl[1]~input_o\ & (((\ULA_ctrl[0]~input_o\) # (!\ULA_ctrl[2]~input_o\)))) # (!\ULA_ctrl[1]~input_o\ & (((!\ULA_ctrl[3]~input_o\ & !\ULA_ctrl[2]~input_o\)) # (!\ULA_ctrl[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \ULA_ctrl[2]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X23_Y18_N20
\Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[3]~input_o\ & (\ULA_ctrl[1]~input_o\ $ (\ULA_ctrl[0]~input_o\)))) # (!\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & (\ULA_ctrl[3]~input_o\ & \ULA_ctrl[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X22_Y18_N22
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ULA_ctrl[2]~input_o\ & ((!\ULA_ctrl[1]~input_o\) # (!\ULA_ctrl[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datad => \ULA_ctrl[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X22_Y18_N8
\temp_mult[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(0) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\,
	datac => temp_mult(0),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(0));

-- Location: IOIBUF_X22_Y31_N1
\D[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\C[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: LCCOMB_X22_Y18_N20
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\D[0]~input_o\) # (\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \C[0]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X26_Y18_N20
\Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\ULA_ctrl[1]~input_o\ & ((\ULA_ctrl[2]~input_o\) # (\ULA_ctrl[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X25_Y18_N10
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\ULA_ctrl[1]~input_o\) # ((\ULA_ctrl[3]~input_o\ & !\ULA_ctrl[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[1]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X25_Y18_N16
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ULA_ctrl[1]~input_o\) # (\ULA_ctrl[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA_ctrl[1]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X22_Y18_N30
\Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux6~1_combout\ & (\D[0]~input_o\ & ((\C[0]~input_o\) # (!\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & (((\C[0]~input_o\) # (\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \C[0]~input_o\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X22_Y18_N18
\temp_mult[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(8) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\,
	datab => temp_mult(8),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(8));

-- Location: LCCOMB_X22_Y18_N16
\Mux24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux24~2_combout\ & ((\Mux6~1_combout\) # ((temp_mult(8)) # (!\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux24~2_combout\,
	datad => temp_mult(8),
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X22_Y18_N10
\Mux24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\ULA_ctrl[2]~input_o\ & (((!\Mux6~3_combout\)))) # (!\ULA_ctrl[2]~input_o\ & ((\Mux6~3_combout\ & (\Mux24~1_combout\)) # (!\Mux6~3_combout\ & ((\Mux24~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \Mux24~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux24~3_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X22_Y18_N0
\Mux24~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux6~0_combout\ & ((\Mux24~4_combout\ & (!\Mux24~0_combout\)) # (!\Mux24~4_combout\ & ((temp_mult(0)))))) # (!\Mux6~0_combout\ & (((\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux6~0_combout\,
	datac => temp_mult(0),
	datad => \Mux24~4_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X22_Y18_N6
\Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~4_combout\ & ((\Mux6~4_combout\) # ((\Add0~6_combout\ & \Mux24~5_combout\)))) # (!\Add0~4_combout\ & (\Add0~6_combout\ & ((\Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \Mux6~4_combout\,
	datad => \Mux24~5_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X22_Y18_N2
\temp[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(0) = (!\reset~input_o\ & ((GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(0))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => \reset~input_o\,
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~7_combout\,
	combout => temp(0));

-- Location: LCCOMB_X22_Y18_N12
\saida[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[0]$latch~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((temp(0)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\saida[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida[0]$latch~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => temp(0),
	combout => \saida[0]$latch~combout\);

-- Location: LCCOMB_X23_Y18_N8
\temp_mult[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(1) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\,
	datac => temp_mult(1),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(1));

-- Location: IOIBUF_X24_Y31_N8
\C[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\D[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X23_Y18_N24
\Mux6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\C[1]~input_o\) # (\D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X23_Y18_N4
\Mux6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\ULA_ctrl[1]~input_o\) # ((\ULA_ctrl[0]~input_o\ & ((\D[1]~input_o\))) # (!\ULA_ctrl[0]~input_o\ & (\Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datab => \ULA_ctrl[0]~input_o\,
	datac => \D[1]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X23_Y18_N10
\temp_mult[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(9) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\,
	datac => temp_mult(9),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(9));

-- Location: LCCOMB_X23_Y18_N16
\Mux6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~2_combout\ & ((\Mux6~8_combout\ & (\RESULT~0_combout\)) # (!\Mux6~8_combout\ & ((temp_mult(9)))))) # (!\Mux6~2_combout\ & (((\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESULT~0_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux6~8_combout\,
	datad => temp_mult(9),
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X23_Y18_N2
\Mux6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\ULA_ctrl[2]~input_o\ & (((!\Mux6~3_combout\)))) # (!\ULA_ctrl[2]~input_o\ & ((\Mux6~3_combout\ & (\Mux6~6_combout\)) # (!\Mux6~3_combout\ & ((\Mux6~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \Mux6~6_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~9_combout\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X23_Y18_N12
\Mux6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\Mux6~0_combout\ & ((\Mux6~10_combout\ & (!\Mux6~5_combout\)) # (!\Mux6~10_combout\ & ((temp_mult(1)))))) # (!\Mux6~0_combout\ & (((\Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \Mux6~0_combout\,
	datac => temp_mult(1),
	datad => \Mux6~10_combout\,
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X23_Y18_N6
\Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~9_combout\ & ((\Mux6~4_combout\) # ((\Add0~6_combout\ & \Mux6~11_combout\)))) # (!\Add0~9_combout\ & (\Add0~6_combout\ & ((\Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Add0~6_combout\,
	datac => \Mux6~4_combout\,
	datad => \Mux6~11_combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X23_Y18_N18
\temp[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(1) = (!\reset~input_o\ & ((GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(1))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp(1),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~11_combout\,
	combout => temp(1));

-- Location: LCCOMB_X23_Y18_N28
\saida[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[1]$latch~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((temp(1)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\saida[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida[1]$latch~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => temp(1),
	combout => \saida[1]$latch~combout\);

-- Location: LCCOMB_X24_Y18_N8
\temp_mult[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(2) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\,
	datab => temp_mult(2),
	datac => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(2));

-- Location: IOIBUF_X26_Y31_N8
\C[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X24_Y18_N22
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux6~1_combout\ & (\D[2]~input_o\ & ((\C[2]~input_o\) # (!\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & (((\C[2]~input_o\) # (\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \C[2]~input_o\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X24_Y18_N18
\temp_mult[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(10) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\,
	datab => temp_mult(10),
	datac => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(10));

-- Location: LCCOMB_X24_Y18_N16
\Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & ((\Mux6~1_combout\) # ((temp_mult(10)) # (!\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux5~2_combout\,
	datad => temp_mult(10),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\ULA_ctrl[2]~input_o\ & (((!\Mux6~3_combout\)))) # (!\ULA_ctrl[2]~input_o\ & ((\Mux6~3_combout\ & (\Mux5~1_combout\)) # (!\Mux6~3_combout\ & ((\Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X24_Y18_N28
\Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux6~0_combout\ & ((\Mux5~4_combout\ & (!\Mux5~0_combout\)) # (!\Mux5~4_combout\ & ((temp_mult(2)))))) # (!\Mux6~0_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux6~0_combout\,
	datac => temp_mult(2),
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~13_combout\ & ((\Mux6~4_combout\) # ((\Add0~6_combout\ & \Mux5~5_combout\)))) # (!\Add0~13_combout\ & (\Add0~6_combout\ & ((\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \Add0~6_combout\,
	datac => \Mux6~4_combout\,
	datad => \Mux5~5_combout\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X24_Y18_N6
\temp[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(2) = (!\reset~input_o\ & ((GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(2))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => \reset~input_o\,
	datac => \Add0~15_combout\,
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp(2));

-- Location: LCCOMB_X24_Y18_N4
\saida[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[2]$latch~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((temp(2)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\saida[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida[2]$latch~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => temp(2),
	combout => \saida[2]$latch~combout\);

-- Location: IOIBUF_X33_Y22_N1
\C[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: LCCOMB_X26_Y20_N0
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\ULA_ctrl[2]~input_o\ & ((\ULA_ctrl[1]~input_o\) # (\D[0]~input_o\))) # (!\ULA_ctrl[2]~input_o\ & ((!\D[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \D[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X26_Y20_N10
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY(!\ULA_ctrl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datad => VCC,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X26_Y20_N18
\Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = ((\Add0~16_combout\ $ (\C[3]~input_o\ $ (!\Add0~14\)))) # (GND)
-- \Add0~18\ = CARRY((\Add0~16_combout\ & ((\C[3]~input_o\) # (!\Add0~14\))) # (!\Add0~16_combout\ & (\C[3]~input_o\ & !\Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \C[3]~input_o\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X29_Y18_N12
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ULA_ctrl[3]~input_o\) # (\C[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[3]~input_o\,
	datac => \C[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X33_Y27_N8
\D[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\D[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X27_Y19_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ = \D[3]~input_o\ $ (((\D[1]~input_o\ & \D[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \D[3]~input_o\,
	datac => \D[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\);

-- Location: LCCOMB_X27_Y19_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ = \D[2]~input_o\ $ (\D[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\C[1]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (((!\C[0]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[0]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X27_Y19_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) = LCELL((\D[0]~input_o\ & ((\D[1]~input_o\ $ (\C[2]~input_o\)))) # (!\D[0]~input_o\ & (!\C[1]~input_o\ & (\D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \D[1]~input_o\,
	datac => \C[2]~input_o\,
	datad => \D[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2));

-- Location: LCCOMB_X26_Y19_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\);

-- Location: LCCOMB_X25_Y21_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) = LCELL((\D[0]~input_o\ & (\C[1]~input_o\ $ (((\D[1]~input_o\))))) # (!\D[0]~input_o\ & (((!\C[0]~input_o\ & \D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[0]~input_o\,
	datac => \D[1]~input_o\,
	datad => \D[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1));

-- Location: LCCOMB_X27_Y19_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) = LCELL(\D[1]~input_o\ $ (((\D[0]~input_o\ & \C[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \C[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0));

-- Location: LCCOMB_X25_Y19_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\);

-- Location: LCCOMB_X25_Y18_N14
\temp_mult[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(3) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\,
	datac => temp_mult(3),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(3));

-- Location: LCCOMB_X25_Y18_N24
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux6~1_combout\ & (\D[3]~input_o\ & ((\C[3]~input_o\) # (!\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & ((\Mux6~2_combout\) # ((\C[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux6~1_combout\,
	datac => \D[3]~input_o\,
	datad => \C[3]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X25_Y18_N28
\temp_mult[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(11) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\,
	datab => temp_mult(11),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(11));

-- Location: LCCOMB_X25_Y18_N18
\Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((\Mux6~1_combout\) # ((temp_mult(11)) # (!\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux6~2_combout\,
	datad => temp_mult(11),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X25_Y18_N0
\Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\ULA_ctrl[2]~input_o\ & (((!\Mux6~3_combout\)))) # (!\ULA_ctrl[2]~input_o\ & ((\Mux6~3_combout\ & (\Mux4~1_combout\)) # (!\Mux6~3_combout\ & ((\Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X25_Y18_N6
\Mux4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux6~0_combout\ & ((\Mux4~4_combout\ & (!\Mux4~0_combout\)) # (!\Mux4~4_combout\ & ((temp_mult(3)))))) # (!\Mux6~0_combout\ & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux4~0_combout\,
	datac => temp_mult(3),
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X25_Y18_N8
\Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~6_combout\ & ((\Mux4~5_combout\) # ((\Add0~17_combout\ & \Mux6~4_combout\)))) # (!\Add0~6_combout\ & (\Add0~17_combout\ & (\Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~17_combout\,
	datac => \Mux6~4_combout\,
	datad => \Mux4~5_combout\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X25_Y18_N20
\temp[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(3) = (!\reset~input_o\ & ((GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(3))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp(3),
	datac => \Add0~19_combout\,
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp(3));

-- Location: LCCOMB_X25_Y18_N26
\saida[3]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[3]$latch~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((temp(3)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\saida[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida[3]$latch~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => temp(3),
	combout => \saida[3]$latch~combout\);

-- Location: LCCOMB_X26_Y20_N8
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\D[4]~input_o\ & (\ULA_ctrl[2]~input_o\ & !\ULA_ctrl[1]~input_o\)) # (!\D[4]~input_o\ & (!\ULA_ctrl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X26_Y20_N20
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\C[4]~input_o\ & ((\Add0~20_combout\ & (\Add0~18\ & VCC)) # (!\Add0~20_combout\ & (!\Add0~18\)))) # (!\C[4]~input_o\ & ((\Add0~20_combout\ & (!\Add0~18\)) # (!\Add0~20_combout\ & ((\Add0~18\) # (GND)))))
-- \Add0~22\ = CARRY((\C[4]~input_o\ & (!\Add0~20_combout\ & !\Add0~18\)) # (!\C[4]~input_o\ & ((!\Add0~18\) # (!\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X26_Y18_N18
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\C[4]~input_o\) # (\ULA_ctrl[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X26_Y18_N30
\temp_mult[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(4) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\,
	datac => temp_mult(4),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(4));

-- Location: IOIBUF_X33_Y16_N8
\D[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X26_Y18_N4
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\C[4]~input_o\) # (\D[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \ULA_ctrl[3]~input_o\,
	datac => \D[4]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X26_Y18_N14
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux6~1_combout\ & (\D[4]~input_o\ & ((\C[4]~input_o\) # (!\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & ((\C[4]~input_o\) # ((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \D[4]~input_o\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X26_Y18_N28
\temp_mult[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(12) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\,
	datab => temp_mult(12),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(12));

-- Location: LCCOMB_X26_Y18_N0
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\Mux6~1_combout\) # (temp_mult(12))) # (!\Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux3~2_combout\,
	datad => temp_mult(12),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X26_Y18_N2
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\ULA_ctrl[2]~input_o\ & (((!\Mux6~3_combout\)))) # (!\ULA_ctrl[2]~input_o\ & ((\Mux6~3_combout\ & (\Mux3~1_combout\)) # (!\Mux6~3_combout\ & ((\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X26_Y18_N12
\Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux6~0_combout\ & ((\Mux3~4_combout\ & (!\Mux3~0_combout\)) # (!\Mux3~4_combout\ & ((temp_mult(4)))))) # (!\Mux6~0_combout\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux3~0_combout\,
	datac => temp_mult(4),
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X27_Y18_N0
\Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Mux6~4_combout\ & ((\Add0~21_combout\) # ((\Add0~6_combout\ & \Mux3~5_combout\)))) # (!\Mux6~4_combout\ & (\Add0~6_combout\ & ((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~21_combout\,
	datad => \Mux3~5_combout\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X27_Y18_N4
\temp[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(4) = (!\reset~input_o\ & ((GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(4))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp(4),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~23_combout\,
	combout => temp(4));

-- Location: LCCOMB_X27_Y18_N26
\saida[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[4]$latch~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((temp(4)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\saida[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida[4]$latch~combout\,
	datac => temp(4),
	datad => \ULA_en~inputclkctrl_outclk\,
	combout => \saida[4]$latch~combout\);

-- Location: IOIBUF_X33_Y15_N1
\D[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: LCCOMB_X26_Y20_N28
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \D[5]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & ((!\D[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \D[5]~input_o\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X26_Y20_N22
\Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = ((\C[5]~input_o\ $ (\Add0~24_combout\ $ (!\Add0~22\)))) # (GND)
-- \Add0~26\ = CARRY((\C[5]~input_o\ & ((\Add0~24_combout\) # (!\Add0~22\))) # (!\C[5]~input_o\ & (\Add0~24_combout\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: IOIBUF_X33_Y16_N1
\C[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: LCCOMB_X25_Y20_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) = LCELL((\D[0]~input_o\ & ((\C[5]~input_o\ $ (\D[1]~input_o\)))) # (!\D[0]~input_o\ & (!\C[4]~input_o\ & ((\D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \D[0]~input_o\,
	datac => \C[5]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5));

-- Location: LCCOMB_X27_Y19_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ = \D[5]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \D[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \D[4]~input_o\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\);

-- Location: LCCOMB_X24_Y19_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\);

-- Location: LCCOMB_X26_Y19_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\C[2]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (((!\C[1]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2));

-- Location: LCCOMB_X26_Y19_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\);

-- Location: LCCOMB_X25_Y19_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\);

-- Location: LCCOMB_X24_Y17_N8
\temp_mult[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(5) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\,
	datac => temp_mult(5),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(5));

-- Location: LCCOMB_X24_Y16_N0
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\D[5]~input_o\) # (\C[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[5]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \C[5]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X24_Y17_N26
\temp_mult[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(13) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\,
	datac => temp_mult(13),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(13));

-- Location: LCCOMB_X24_Y17_N2
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux6~1_combout\ & (\D[5]~input_o\ & ((\C[5]~input_o\) # (!\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & ((\C[5]~input_o\) # ((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \D[5]~input_o\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X24_Y17_N28
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\Mux6~1_combout\) # ((temp_mult(13)) # (!\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~2_combout\,
	datac => temp_mult(13),
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X24_Y17_N18
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux6~3_combout\ & (\Mux2~1_combout\ & (!\ULA_ctrl[2]~input_o\))) # (!\Mux6~3_combout\ & (((\ULA_ctrl[2]~input_o\) # (\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux2~1_combout\,
	datac => \ULA_ctrl[2]~input_o\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux6~0_combout\ & ((\Mux2~4_combout\ & (!\Mux2~0_combout\)) # (!\Mux2~4_combout\ & ((temp_mult(5)))))) # (!\Mux6~0_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux6~0_combout\,
	datac => temp_mult(5),
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X24_Y17_N6
\Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~6_combout\ & ((\Mux2~5_combout\) # ((\Add0~25_combout\ & \Mux6~4_combout\)))) # (!\Add0~6_combout\ & (\Add0~25_combout\ & (\Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~25_combout\,
	datac => \Mux6~4_combout\,
	datad => \Mux2~5_combout\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X24_Y17_N10
\temp[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(5) = (!\reset~input_o\ & ((GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(5))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datab => \reset~input_o\,
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~27_combout\,
	combout => temp(5));

-- Location: LCCOMB_X24_Y17_N12
\saida[5]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[5]$latch~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((temp(5)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\saida[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida[5]$latch~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => temp(5),
	combout => \saida[5]$latch~combout\);

-- Location: IOIBUF_X33_Y25_N8
\D[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X26_Y20_N2
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \D[6]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & ((!\D[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \D[6]~input_o\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X26_Y20_N24
\Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\C[6]~input_o\ & ((\Add0~28_combout\ & (\Add0~26\ & VCC)) # (!\Add0~28_combout\ & (!\Add0~26\)))) # (!\C[6]~input_o\ & ((\Add0~28_combout\ & (!\Add0~26\)) # (!\Add0~28_combout\ & ((\Add0~26\) # (GND)))))
-- \Add0~30\ = CARRY((\C[6]~input_o\ & (!\Add0~28_combout\ & !\Add0~26\)) # (!\C[6]~input_o\ & ((!\Add0~26\) # (!\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X25_Y20_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) = LCELL((\D[0]~input_o\ & (\C[6]~input_o\ $ (((\D[1]~input_o\))))) # (!\D[0]~input_o\ & (((!\C[5]~input_o\ & \D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \D[0]~input_o\,
	datac => \C[5]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6));

-- Location: LCCOMB_X25_Y20_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ = (\D[7]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) $ (VCC))) # (!\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\ = CARRY((\D[7]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\);

-- Location: LCCOMB_X27_Y19_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ $ (((\C[1]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & (!\C[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datac => \C[0]~input_o\,
	datad => \C[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1));

-- Location: LCCOMB_X26_Y19_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\);

-- Location: LCCOMB_X25_Y19_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\);

-- Location: LCCOMB_X26_Y18_N6
\temp_mult[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(6) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp_mult(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_mult(6),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\,
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(6));

-- Location: IOIBUF_X24_Y0_N1
\C[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: LCCOMB_X29_Y17_N0
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\C[6]~input_o\) # (\D[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datac => \C[6]~input_o\,
	datad => \D[6]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X26_Y18_N22
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux6~1_combout\ & (\D[6]~input_o\ & ((\C[6]~input_o\) # (!\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & (((\C[6]~input_o\) # (\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \C[6]~input_o\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X27_Y19_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ = \D[6]~input_o\ $ (((\D[5]~input_o\) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \D[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \D[6]~input_o\,
	datac => \D[4]~input_o\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\);

-- Location: LCCOMB_X27_Y19_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ = (\D[5]~input_o\) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \D[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \D[4]~input_o\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\);

-- Location: IOIBUF_X33_Y24_N8
\D[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X29_Y19_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6) = LCELL((\C[5]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[5]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[6]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6));

-- Location: LCCOMB_X29_Y18_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[6]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6),
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6));

-- Location: LCCOMB_X27_Y19_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ = \D[4]~input_o\ $ (((\D[3]~input_o\) # ((\D[2]~input_o\ & \D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~input_o\,
	datab => \D[3]~input_o\,
	datac => \D[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\);

-- Location: IOIBUF_X33_Y22_N8
\C[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: LCCOMB_X25_Y20_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & ((\C[7]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (!\C[6]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datac => \C[7]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7));

-- Location: IOIBUF_X29_Y31_N1
\C[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: LCCOMB_X29_Y19_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4) = LCELL((\C[3]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[3]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[6]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4));

-- Location: LCCOMB_X29_Y19_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\D[7]~input_o\ $ (\C[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datab => \D[7]~input_o\,
	datac => \C[4]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4),
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X25_Y20_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) = LCELL((\C[7]~input_o\ & (\D[0]~input_o\ & !\D[1]~input_o\)) # (!\C[7]~input_o\ & ((\D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datac => \D[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8));

-- Location: LCCOMB_X25_Y20_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\);

-- Location: LCCOMB_X29_Y19_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2) = LCELL((\C[1]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[1]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[6]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2));

-- Location: LCCOMB_X29_Y19_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[2]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2),
	datac => \C[2]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X26_Y19_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\);

-- Location: LCCOMB_X26_Y19_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\);

-- Location: LCCOMB_X26_Y19_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\);

-- Location: LCCOMB_X26_Y19_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ = !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\ = CARRY(!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\);

-- Location: LCCOMB_X26_Y19_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ = !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\);

-- Location: LCCOMB_X27_Y19_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) = LCELL((\C[7]~input_o\ & (!\D[3]~input_o\ & (\D[2]~input_o\ $ (\D[1]~input_o\)))) # (!\C[7]~input_o\ & (\D[3]~input_o\ $ (((\D[2]~input_o\ & \D[1]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \C[7]~input_o\,
	datac => \D[3]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8));

-- Location: LCCOMB_X24_Y19_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ ((\C[7]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\C[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \C[7]~input_o\,
	datac => \C[6]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7));

-- Location: LCCOMB_X24_Y19_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ ((\C[6]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\C[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \C[6]~input_o\,
	datac => \C[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6));

-- Location: LCCOMB_X25_Y20_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ $ (\C[3]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (!\C[2]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datad => \C[3]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3));

-- Location: LCCOMB_X24_Y19_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ (((\C[4]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & (!\C[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \C[3]~input_o\,
	datac => \C[4]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4));

-- Location: LCCOMB_X24_Y19_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\);

-- Location: LCCOMB_X24_Y19_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\);

-- Location: LCCOMB_X24_Y19_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ = !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\);

-- Location: LCCOMB_X26_Y18_N16
\temp_mult[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(14) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp_mult(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_mult(14),
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\,
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(14));

-- Location: LCCOMB_X26_Y18_N24
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & (((\Mux6~1_combout\) # (temp_mult(14))) # (!\Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux1~2_combout\,
	datad => temp_mult(14),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X27_Y18_N2
\Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux6~3_combout\ & (!\ULA_ctrl[2]~input_o\ & (\Mux1~1_combout\))) # (!\Mux6~3_combout\ & ((\ULA_ctrl[2]~input_o\) # ((\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X27_Y18_N16
\Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux6~0_combout\ & ((\Mux1~4_combout\ & (!\Mux1~0_combout\)) # (!\Mux1~4_combout\ & ((temp_mult(6)))))) # (!\Mux6~0_combout\ & (((\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux6~0_combout\,
	datac => temp_mult(6),
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X27_Y18_N6
\Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Mux6~4_combout\ & ((\Add0~29_combout\) # ((\Add0~6_combout\ & \Mux1~5_combout\)))) # (!\Mux6~4_combout\ & (\Add0~6_combout\ & ((\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~29_combout\,
	datad => \Mux1~5_combout\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X27_Y18_N18
\temp[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(6) = (!\reset~input_o\ & ((GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(6))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp(6),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~31_combout\,
	combout => temp(6));

-- Location: LCCOMB_X27_Y18_N8
\saida[6]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[6]$latch~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((temp(6)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\saida[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida[6]$latch~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => temp(6),
	combout => \saida[6]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N26
\temp_mult[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(7) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\,
	datac => temp_mult(7),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(7));

-- Location: LCCOMB_X29_Y18_N22
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\C[7]~input_o\) # (\D[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[3]~input_o\,
	datac => \C[7]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X27_Y18_N14
\temp_mult[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(15) = (GLOBAL(\Mux25~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\)) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((temp_mult(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\,
	datac => temp_mult(15),
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp_mult(15));

-- Location: LCCOMB_X27_Y18_N20
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux6~1_combout\ & (\D[7]~input_o\ & ((\C[7]~input_o\) # (!\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & (((\C[7]~input_o\) # (\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \C[7]~input_o\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X27_Y18_N10
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((\Mux6~1_combout\) # (temp_mult(15))) # (!\Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux6~1_combout\,
	datac => temp_mult(15),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X27_Y18_N28
\Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux6~3_combout\ & (!\ULA_ctrl[2]~input_o\ & (\Mux0~1_combout\))) # (!\Mux6~3_combout\ & ((\ULA_ctrl[2]~input_o\) # ((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X27_Y18_N22
\Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux6~0_combout\ & ((\Mux0~4_combout\ & (!\Mux0~0_combout\)) # (!\Mux0~4_combout\ & ((temp_mult(7)))))) # (!\Mux6~0_combout\ & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux6~0_combout\,
	datac => temp_mult(7),
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X26_Y18_N8
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \D[7]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & ((!\D[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X26_Y20_N26
\Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = \C[7]~input_o\ $ (\Add0~30\ $ (!\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C[7]~input_o\,
	datad => \Add0~32_combout\,
	cin => \Add0~30\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X27_Y18_N24
\Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Mux6~4_combout\ & ((\Add0~33_combout\) # ((\Add0~6_combout\ & \Mux0~5_combout\)))) # (!\Mux6~4_combout\ & (\Add0~6_combout\ & (\Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Add0~6_combout\,
	datac => \Mux0~5_combout\,
	datad => \Add0~33_combout\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X27_Y18_N12
\temp[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(7) = (!\reset~input_o\ & ((GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(7))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => \reset~input_o\,
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~35_combout\,
	combout => temp(7));

-- Location: LCCOMB_X27_Y18_N30
\saida[7]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[7]$latch~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((temp(7)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\saida[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida[7]$latch~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => temp(7),
	combout => \saida[7]$latch~combout\);

-- Location: LCCOMB_X25_Y18_N4
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!temp(4) & (!temp(5) & (!temp(7) & !temp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(5),
	datac => temp(7),
	datad => temp(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!temp(2) & (!temp(3) & (!temp(0) & !temp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(3),
	datac => temp(0),
	datad => temp(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y18_N22
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_Z <= \Z~output_o\;

ww_N <= \N~output_o\;
END structure;


