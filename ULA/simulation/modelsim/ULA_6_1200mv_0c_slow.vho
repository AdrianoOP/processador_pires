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

-- DATE "08/27/2013 23:51:22"

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
	N : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Mux0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux25~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
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
SIGNAL \ULA_ctrl[2]~input_o\ : std_logic;
SIGNAL \ULA_ctrl[3]~input_o\ : std_logic;
SIGNAL \ULA_ctrl[1]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~0clkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \ULA_ctrl[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux0~0_combout\);

\Mux25~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux25~0_combout\);

-- Location: LCCOMB_X16_Y1_N18
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = ((\C[3]~input_o\ $ (\Add0~21_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~23\ = CARRY((\C[3]~input_o\ & ((\Add0~21_combout\) # (!\Add0~16\))) # (!\C[3]~input_o\ & (\Add0~21_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~input_o\,
	datab => \Add0~21_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X16_Y1_N24
\Add0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\C[6]~input_o\ & ((\Add0~42_combout\ & (\Add0~37\ & VCC)) # (!\Add0~42_combout\ & (!\Add0~37\)))) # (!\C[6]~input_o\ & ((\Add0~42_combout\ & (!\Add0~37\)) # (!\Add0~42_combout\ & ((\Add0~37\) # (GND)))))
-- \Add0~44\ = CARRY((\C[6]~input_o\ & (!\Add0~42_combout\ & !\Add0~37\)) # (!\C[6]~input_o\ & ((!\Add0~37\) # (!\Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X16_Y1_N26
\Add0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \Add0~46_combout\ $ (\Add0~44\ $ (!\C[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datad => \C[7]~input_o\,
	cin => \Add0~44\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X18_Y3_N12
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

-- Location: LCCOMB_X18_Y3_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\);

-- Location: LCCOMB_X18_Y3_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\);

-- Location: LCCOMB_X20_Y2_N20
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

-- Location: LCCOMB_X19_Y2_N4
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

-- Location: LCCOMB_X19_Y2_N6
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

-- Location: LCCOMB_X19_Y2_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\);

-- Location: LCCOMB_X18_Y2_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & (\D[1]~input_o\ $ (VCC))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & (\D[1]~input_o\ 
-- & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & \D[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0),
	datab => \D[1]~input_o\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\);

-- Location: LCCOMB_X18_Y2_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\);

-- Location: LCCOMB_X18_Y2_N12
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

-- Location: LCCOMB_X18_Y2_N14
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

-- Location: LCCOMB_X18_Y2_N16
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

-- Location: LCCOMB_X18_Y3_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\);

-- Location: LCCOMB_X20_Y2_N24
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

-- Location: LCCOMB_X18_Y3_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\);

-- Location: LCCOMB_X18_Y3_N24
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

-- Location: LCCOMB_X19_Y2_N20
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

-- Location: LCCOMB_X18_Y2_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\);

-- Location: LCCOMB_X18_Y3_N26
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

-- Location: LCCOMB_X18_Y2_N26
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

-- Location: LCCOMB_X18_Y2_N28
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

-- Location: LCCOMB_X18_Y2_N30
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

-- Location: LCCOMB_X15_Y2_N28
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\D[0]~input_o\ & (((\ULA_ctrl[0]~input_o\) # (\C[0]~input_o\)))) # (!\D[0]~input_o\ & (\C[0]~input_o\ & (\ULA_ctrl[1]~input_o\ $ (!\ULA_ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \ULA_ctrl[0]~input_o\,
	datad => \C[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X15_Y2_N22
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\ULA_ctrl[2]~input_o\ & (((\Mux19~0_combout\)) # (!\C[0]~input_o\))) # (!\ULA_ctrl[2]~input_o\ & (((!\Mux19~0_combout\ & \Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \C[0]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X16_Y1_N30
\Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\D[1]~input_o\ & (!\ULA_ctrl[3]~input_o\ & !\ULA_ctrl[1]~input_o\)) # (!\D[1]~input_o\ & (\ULA_ctrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X16_Y2_N24
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\D[1]~input_o\ & (((\ULA_ctrl[0]~input_o\ & !\C[1]~input_o\)))) # (!\D[1]~input_o\ & (\C[1]~input_o\ & (\ULA_ctrl[1]~input_o\ $ (\ULA_ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \ULA_ctrl[0]~input_o\,
	datad => \C[1]~input_o\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X16_Y2_N30
\Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Mux19~0_combout\ & (\ULA_ctrl[2]~input_o\)) # (!\Mux19~0_combout\ & (\C[1]~input_o\ $ (((\ULA_ctrl[2]~input_o\) # (\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \C[1]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \Add0~10_combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X16_Y1_N4
\Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\ULA_ctrl[3]~input_o\ & ((!\D[5]~input_o\))) # (!\ULA_ctrl[3]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \D[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \D[5]~input_o\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X17_Y1_N16
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\D[6]~input_o\ & (((\C[6]~input_o\) # (\ULA_ctrl[0]~input_o\)))) # (!\D[6]~input_o\ & (\C[6]~input_o\ & (\ULA_ctrl[1]~input_o\ $ (!\ULA_ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \C[6]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X17_Y1_N26
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\ULA_ctrl[2]~input_o\ & ((\Mux19~0_combout\) # ((!\C[6]~input_o\)))) # (!\ULA_ctrl[2]~input_o\ & (!\Mux19~0_combout\ & ((\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \C[6]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X17_Y1_N28
\Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\ULA_ctrl[3]~input_o\ & ((!\D[7]~input_o\))) # (!\ULA_ctrl[3]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \D[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \D[7]~input_o\,
	combout => \Add0~46_combout\);

-- Location: LCCOMB_X18_Y3_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ ((\C[6]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\C[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datac => \C[6]~input_o\,
	datad => \C[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6));

-- Location: LCCOMB_X20_Y3_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\C[3]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & !\C[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datad => \C[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3));

-- Location: LCCOMB_X18_Y3_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\C[4]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (((!\C[3]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \C[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4));

-- Location: LCCOMB_X17_Y2_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) = LCELL((\D[0]~input_o\ & ((\C[4]~input_o\ $ (\D[1]~input_o\)))) # (!\D[0]~input_o\ & (!\C[3]~input_o\ & ((\D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~input_o\,
	datab => \C[4]~input_o\,
	datac => \D[1]~input_o\,
	datad => \D[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4));

-- Location: LCCOMB_X20_Y2_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) = LCELL((\D[0]~input_o\ & ((\C[7]~input_o\ $ (\D[1]~input_o\)))) # (!\D[0]~input_o\ & (!\C[6]~input_o\ & ((\D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \C[7]~input_o\,
	datac => \D[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7));

-- Location: LCCOMB_X20_Y3_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[2]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2),
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X19_Y3_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\D[7]~input_o\ $ (\C[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \C[0]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0),
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X19_Y3_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ $ (\C[1]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (!\C[0]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datad => \C[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1));

-- Location: LCCOMB_X19_Y3_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) = LCELL(\D[5]~input_o\ $ (((\C[0]~input_o\ & ((\D[4]~input_o\) # (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))) # (!\C[0]~input_o\ & (\D[4]~input_o\ & 
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datab => \D[4]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0));

-- Location: LCCOMB_X20_Y2_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) = LCELL((\D[0]~input_o\ & ((\D[1]~input_o\ $ (\C[3]~input_o\)))) # (!\D[0]~input_o\ & (!\C[2]~input_o\ & (\D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \D[1]~input_o\,
	datac => \D[0]~input_o\,
	datad => \C[3]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3));

-- Location: LCCOMB_X19_Y3_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) = LCELL(\D[3]~input_o\ $ (((\C[0]~input_o\ & ((\D[2]~input_o\) # (\D[1]~input_o\))) # (!\C[0]~input_o\ & (\D[2]~input_o\ & \D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datab => \D[3]~input_o\,
	datac => \D[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0));

-- Location: LCCOMB_X20_Y2_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) = LCELL(\D[1]~input_o\ $ (((\C[0]~input_o\ & \D[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datac => \D[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0));

-- Location: LCCOMB_X20_Y3_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ ((\C[7]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\C[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datac => \C[7]~input_o\,
	datad => \C[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7));

-- Location: LCCOMB_X17_Y3_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) = LCELL((\C[7]~input_o\ & (!\D[3]~input_o\ & (\D[2]~input_o\ $ (\D[1]~input_o\)))) # (!\C[7]~input_o\ & (\D[3]~input_o\ $ (((\D[2]~input_o\ & \D[1]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \D[2]~input_o\,
	datac => \D[3]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8));

-- Location: LCCOMB_X18_Y3_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ $ (\C[6]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (!\C[5]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datac => \C[6]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6));

-- Location: LCCOMB_X20_Y3_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[5]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5),
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X19_Y3_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) = LCELL((\C[7]~input_o\ & (!\D[5]~input_o\ & (\D[4]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # (!\C[7]~input_o\ & (\D[5]~input_o\ $ 
-- (((\D[4]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \D[4]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8));

-- Location: LCCOMB_X19_Y3_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[7]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \D[7]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7),
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7));

-- Location: LCCOMB_X20_Y3_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\D[7]~input_o\ $ (\C[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \C[7]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8),
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8));

-- Location: LCCOMB_X19_Y3_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2) = LCELL((\C[1]~input_o\ & (\D[6]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\))) # (!\C[1]~input_o\ & (\D[7]~input_o\ & (\D[6]~input_o\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[7]~input_o\,
	datad => \C[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2));

-- Location: LCCOMB_X19_Y3_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0) = LCELL((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & \D[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0));

-- Location: LCCOMB_X20_Y3_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3) = LCELL((\C[2]~input_o\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & \D[6]~input_o\)))) # (!\C[2]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \D[7]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datad => \D[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3));

-- Location: LCCOMB_X20_Y3_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5) = LCELL((\C[4]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & ((\D[6]~input_o\)))) # (!\C[4]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datab => \D[7]~input_o\,
	datac => \C[4]~input_o\,
	datad => \D[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5));

-- Location: LCCOMB_X20_Y3_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6) = LCELL((\C[5]~input_o\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & \D[6]~input_o\)))) # (!\C[5]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \D[7]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datad => \D[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6));

-- Location: LCCOMB_X20_Y3_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7) = LCELL((\C[6]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & (\D[6]~input_o\))) # (!\C[6]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datab => \D[6]~input_o\,
	datac => \D[7]~input_o\,
	datad => \C[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7));

-- Location: LCCOMB_X20_Y3_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8) = LCELL((\C[7]~input_o\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & \D[6]~input_o\)))) # (!\C[7]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \D[7]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datad => \D[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8));

-- Location: LCCOMB_X17_Y2_N22
\temp_mult[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(5) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\,
	datac => temp_mult(5),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(5));

-- Location: IOOBUF_X12_Y31_N2
\saida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(0),
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\saida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(1),
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\saida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(2),
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\saida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(3),
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\saida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(4),
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\saida[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(5),
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\saida[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(6),
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\saida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(7),
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
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

-- Location: IOOBUF_X12_Y0_N9
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

-- Location: IOIBUF_X14_Y0_N8
\ULA_ctrl[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(2),
	o => \ULA_ctrl[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\ULA_ctrl[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(3),
	o => \ULA_ctrl[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\ULA_ctrl[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(1),
	o => \ULA_ctrl[1]~input_o\);

-- Location: LCCOMB_X17_Y1_N10
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ((!\ULA_ctrl[2]~input_o\ & !\ULA_ctrl[1]~input_o\)) # (!\ULA_ctrl[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: CLKCTRL_G19
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

-- Location: IOIBUF_X16_Y0_N1
\D[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X16_Y1_N0
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\D[0]~input_o\ & (!\ULA_ctrl[3]~input_o\)) # (!\D[0]~input_o\ & ((\ULA_ctrl[3]~input_o\) # (\ULA_ctrl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X16_Y1_N10
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY(!\ULA_ctrl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datad => VCC,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X16_Y1_N12
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

-- Location: LCCOMB_X16_Y2_N0
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\ULA_ctrl[2]~input_o\ & (\ULA_ctrl[1]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & ((\ULA_ctrl[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[1]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: IOIBUF_X10_Y0_N8
\ULA_ctrl[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(0),
	o => \ULA_ctrl[0]~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ULA_ctrl[3]~input_o\ & (!\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[0]~input_o\ & !\ULA_ctrl[1]~input_o\))) # (!\ULA_ctrl[3]~input_o\ & (\ULA_ctrl[2]~input_o\ & (\ULA_ctrl[0]~input_o\ & \ULA_ctrl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[0]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: CLKCTRL_G15
\Mux0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux0~0clkctrl_outclk\);

-- Location: LCCOMB_X15_Y2_N8
\temp_mult[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(0) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\,
	datac => temp_mult(0),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(0));

-- Location: LCCOMB_X15_Y2_N2
\temp_mult[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(8) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\,
	datab => temp_mult(8),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(8));

-- Location: LCCOMB_X15_Y2_N12
\Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux17~1_combout\ & (((temp_mult(0))) # (!\Mux19~0_combout\))) # (!\Mux17~1_combout\ & (\Mux19~0_combout\ & ((temp_mult(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Mux19~0_combout\,
	datac => temp_mult(0),
	datad => temp_mult(8),
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X15_Y2_N6
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mux19~1_combout\ & (\Add0~4_combout\)) # (!\Mux19~1_combout\ & ((\Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datac => \Add0~4_combout\,
	datad => \Mux17~2_combout\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X15_Y2_N4
\temp[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(0) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~6_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(0),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~6_combout\,
	combout => temp(0));

-- Location: IOIBUF_X33_Y11_N8
\C[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LCCOMB_X16_Y1_N14
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Add0~7_combout\ $ (\C[1]~input_o\ $ (!\Add0~5\)))) # (GND)
-- \Add0~9\ = CARRY((\Add0~7_combout\ & ((\C[1]~input_o\) # (!\Add0~5\))) # (!\Add0~7_combout\ & (\C[1]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \C[1]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X24_Y0_N8
\C[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: LCCOMB_X20_Y2_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) = LCELL((\D[0]~input_o\ & (\D[1]~input_o\ $ ((\C[1]~input_o\)))) # (!\D[0]~input_o\ & (\D[1]~input_o\ & ((!\C[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \C[1]~input_o\,
	datac => \D[0]~input_o\,
	datad => \C[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1));

-- Location: IOIBUF_X33_Y10_N8
\D[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X18_Y2_N2
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

-- Location: LCCOMB_X16_Y2_N4
\temp_mult[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(1) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\,
	datac => temp_mult(1),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(1));

-- Location: IOIBUF_X33_Y11_N1
\D[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\D[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\D[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X17_Y2_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ = (\D[3]~input_o\) # ((\D[1]~input_o\ & \D[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \D[1]~input_o\,
	datad => \D[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\);

-- Location: IOIBUF_X33_Y16_N8
\D[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: LCCOMB_X19_Y3_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ = \D[6]~input_o\ $ (((\D[5]~input_o\) # ((\D[4]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \D[4]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\);

-- Location: IOIBUF_X20_Y0_N1
\C[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\D[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X20_Y3_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[3]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \C[3]~input_o\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: IOIBUF_X20_Y0_N8
\C[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: LCCOMB_X20_Y2_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) = LCELL((\C[7]~input_o\ & (\D[0]~input_o\ & !\D[1]~input_o\)) # (!\C[7]~input_o\ & ((\D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[7]~input_o\,
	datac => \D[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8));

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

-- Location: LCCOMB_X20_Y2_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) = LCELL((\D[0]~input_o\ & (\C[6]~input_o\ $ (((\D[1]~input_o\))))) # (!\D[0]~input_o\ & (((!\C[5]~input_o\ & \D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \C[5]~input_o\,
	datac => \D[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6));

-- Location: LCCOMB_X20_Y2_N18
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

-- Location: LCCOMB_X20_Y2_N22
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

-- Location: LCCOMB_X19_Y3_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ = (\D[5]~input_o\) # ((\D[4]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[4]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\);

-- Location: LCCOMB_X19_Y3_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1) = LCELL((\C[0]~input_o\ & (\D[6]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\))) # (!\C[0]~input_o\ & (\D[7]~input_o\ & (\D[6]~input_o\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datac => \D[7]~input_o\,
	datad => \C[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1));

-- Location: LCCOMB_X19_Y3_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\D[7]~input_o\ $ (\C[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1),
	datad => \C[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X18_Y1_N24
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

-- Location: IOIBUF_X20_Y31_N1
\C[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X20_Y2_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ ((\C[3]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\C[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \C[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	datad => \C[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3));

-- Location: LCCOMB_X20_Y2_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ (((\C[2]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & (!\C[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \C[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	datad => \C[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2));

-- Location: LCCOMB_X20_Y2_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) = LCELL((\D[0]~input_o\ & (\C[2]~input_o\ $ (((\D[1]~input_o\))))) # (!\D[0]~input_o\ & (((!\C[1]~input_o\ & \D[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[1]~input_o\,
	datac => \D[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2));

-- Location: LCCOMB_X19_Y2_N2
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

-- Location: LCCOMB_X19_Y2_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\);

-- Location: LCCOMB_X19_Y2_N10
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

-- Location: LCCOMB_X19_Y2_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\);

-- Location: LCCOMB_X19_Y2_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\);

-- Location: LCCOMB_X19_Y3_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ = \D[5]~input_o\ $ (((\D[4]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[4]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \D[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\);

-- Location: LCCOMB_X19_Y3_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ = \D[4]~input_o\ $ (((\D[3]~input_o\) # ((\D[2]~input_o\ & \D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \D[3]~input_o\,
	datac => \D[4]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\);

-- Location: LCCOMB_X18_Y3_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\C[4]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (((!\C[3]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \C[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4));

-- Location: LCCOMB_X19_Y3_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ = \D[3]~input_o\ $ (((\D[2]~input_o\ & \D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \D[2]~input_o\,
	datad => \D[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\);

-- Location: LCCOMB_X18_Y3_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ (\C[5]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (!\C[4]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datac => \C[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5));

-- Location: LCCOMB_X19_Y3_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\C[2]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & !\C[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datad => \C[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2));

-- Location: LCCOMB_X18_Y3_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) = LCELL((\D[0]~input_o\ & ((\D[1]~input_o\ $ (\C[5]~input_o\)))) # (!\D[0]~input_o\ & (!\C[4]~input_o\ & (\D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \D[0]~input_o\,
	datac => \D[1]~input_o\,
	datad => \C[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5));

-- Location: LCCOMB_X18_Y3_N10
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

-- Location: LCCOMB_X18_Y3_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\);

-- Location: LCCOMB_X20_Y2_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ ((\C[1]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\C[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \C[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~0_combout\,
	datad => \C[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X18_Y2_N4
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

-- Location: LCCOMB_X18_Y2_N6
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

-- Location: LCCOMB_X18_Y2_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\);

-- Location: LCCOMB_X18_Y2_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\);

-- Location: LCCOMB_X16_Y2_N2
\temp_mult[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(9) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\,
	datac => \Mux0~0clkctrl_outclk\,
	datad => temp_mult(9),
	combout => temp_mult(9));

-- Location: LCCOMB_X16_Y2_N28
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11_combout\ & (((temp_mult(1))) # (!\Mux19~0_combout\))) # (!\Add0~11_combout\ & (\Mux19~0_combout\ & ((temp_mult(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Mux19~0_combout\,
	datac => temp_mult(1),
	datad => temp_mult(9),
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X16_Y2_N22
\Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Mux19~1_combout\ & (\Add0~8_combout\)) # (!\Mux19~1_combout\ & ((\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Add0~8_combout\,
	datad => \Add0~12_combout\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X16_Y2_N20
\temp[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(1) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~13_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datac => \Add0~13_combout\,
	datad => \Mux25~0clkctrl_outclk\,
	combout => temp(1));

-- Location: LCCOMB_X16_Y1_N8
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\D[2]~input_o\ & (!\ULA_ctrl[3]~input_o\ & !\ULA_ctrl[1]~input_o\)) # (!\D[2]~input_o\ & (\ULA_ctrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X16_Y1_N16
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\C[2]~input_o\ & ((\Add0~14_combout\ & (\Add0~9\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~9\)))) # (!\C[2]~input_o\ & ((\Add0~14_combout\ & (!\Add0~9\)) # (!\Add0~14_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~16\ = CARRY((\C[2]~input_o\ & (!\Add0~14_combout\ & !\Add0~9\)) # (!\C[2]~input_o\ & ((!\Add0~9\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X15_Y1_N10
\Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\D[2]~input_o\ & (((\C[2]~input_o\) # (\ULA_ctrl[0]~input_o\)))) # (!\D[2]~input_o\ & (\C[2]~input_o\ & (\ULA_ctrl[1]~input_o\ $ (!\ULA_ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \C[2]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X15_Y1_N8
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Mux19~0_combout\ & (((\ULA_ctrl[2]~input_o\)))) # (!\Mux19~0_combout\ & ((\ULA_ctrl[2]~input_o\ & (!\C[2]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & ((\Add0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \C[2]~input_o\,
	datac => \ULA_ctrl[2]~input_o\,
	datad => \Add0~17_combout\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X15_Y1_N4
\temp_mult[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(2) = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (temp_mult(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_mult(2),
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(2));

-- Location: IOIBUF_X20_Y31_N8
\C[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\D[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X20_Y3_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4) = LCELL((\C[3]~input_o\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ & \D[6]~input_o\)))) # (!\C[3]~input_o\ & (\D[7]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\ $ (!\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~input_o\,
	datab => \D[7]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~3_combout\,
	datad => \D[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4));

-- Location: LCCOMB_X20_Y3_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[4]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datab => \C[4]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4),
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X19_Y2_N18
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

-- Location: LCCOMB_X18_Y2_N20
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

-- Location: LCCOMB_X15_Y1_N18
\temp_mult[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(10) = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (temp_mult(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_mult(10),
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(10));

-- Location: LCCOMB_X15_Y1_N20
\Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Mux19~0_combout\ & ((\Add0~18_combout\ & (temp_mult(2))) # (!\Add0~18_combout\ & ((temp_mult(10)))))) # (!\Mux19~0_combout\ & (\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Add0~18_combout\,
	datac => temp_mult(2),
	datad => temp_mult(10),
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X15_Y1_N28
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Mux19~1_combout\ & (\Add0~15_combout\)) # (!\Mux19~1_combout\ & ((\Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datac => \Add0~15_combout\,
	datad => \Add0~19_combout\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X15_Y1_N30
\temp[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(2) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~20_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(2),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~20_combout\,
	combout => temp(2));

-- Location: LCCOMB_X16_Y2_N10
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\ULA_ctrl[2]~input_o\ & ((\ULA_ctrl[0]~input_o\ $ (\ULA_ctrl[1]~input_o\)))) # (!\ULA_ctrl[2]~input_o\ & (\ULA_ctrl[3]~input_o\ & (\ULA_ctrl[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[0]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X15_Y1_N2
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\D[3]~input_o\ & (((\C[3]~input_o\) # (\ULA_ctrl[0]~input_o\)))) # (!\D[3]~input_o\ & (\C[3]~input_o\ & (\ULA_ctrl[1]~input_o\ $ (!\ULA_ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \C[3]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X15_Y1_N14
\Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Mux19~0_combout\ & (((\ULA_ctrl[2]~input_o\)))) # (!\Mux19~0_combout\ & ((\ULA_ctrl[2]~input_o\ & (!\C[3]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & ((\Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \C[3]~input_o\,
	datac => \ULA_ctrl[2]~input_o\,
	datad => \Add0~24_combout\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X15_Y1_N26
\temp_mult[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(3) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\,
	datac => temp_mult(3),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(3));

-- Location: LCCOMB_X15_Y1_N16
\temp_mult[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(11) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\,
	datab => temp_mult(11),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(11));

-- Location: LCCOMB_X15_Y1_N0
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Mux19~0_combout\ & ((\Add0~25_combout\ & (temp_mult(3))) # (!\Add0~25_combout\ & ((temp_mult(11)))))) # (!\Mux19~0_combout\ & (\Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Add0~25_combout\,
	datac => temp_mult(3),
	datad => temp_mult(11),
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X15_Y1_N6
\Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Mux19~1_combout\ & (\Add0~22_combout\)) # (!\Mux19~1_combout\ & ((\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datac => \Mux19~1_combout\,
	datad => \Add0~26_combout\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X15_Y1_N22
\temp[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(3) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~27_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~27_combout\,
	combout => temp(3));

-- Location: LCCOMB_X16_Y1_N28
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\D[4]~input_o\ & (!\ULA_ctrl[3]~input_o\ & !\ULA_ctrl[1]~input_o\)) # (!\D[4]~input_o\ & (\ULA_ctrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[4]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X16_Y1_N6
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\D[3]~input_o\ & (!\ULA_ctrl[3]~input_o\ & !\ULA_ctrl[1]~input_o\)) # (!\D[3]~input_o\ & (\ULA_ctrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X16_Y1_N20
\Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\C[4]~input_o\ & ((\Add0~28_combout\ & (\Add0~23\ & VCC)) # (!\Add0~28_combout\ & (!\Add0~23\)))) # (!\C[4]~input_o\ & ((\Add0~28_combout\ & (!\Add0~23\)) # (!\Add0~28_combout\ & ((\Add0~23\) # (GND)))))
-- \Add0~30\ = CARRY((\C[4]~input_o\ & (!\Add0~28_combout\ & !\Add0~23\)) # (!\C[4]~input_o\ & ((!\Add0~23\) # (!\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X17_Y2_N4
\temp_mult[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(4) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\,
	datac => temp_mult(4),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(4));

-- Location: IOIBUF_X33_Y10_N1
\C[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: LCCOMB_X20_Y3_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6)) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\ & (\C[6]~input_o\ $ (\D[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6),
	datab => \C[6]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~2_combout\,
	datad => \D[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6));

-- Location: LCCOMB_X20_Y3_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (\C[7]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & !\C[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	datad => \C[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7));

-- Location: LCCOMB_X19_Y2_N22
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

-- Location: LCCOMB_X20_Y2_N26
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

-- Location: LCCOMB_X18_Y3_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ $ (\C[5]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\ & (!\C[4]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datac => \C[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5));

-- Location: LCCOMB_X18_Y2_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\);

-- Location: LCCOMB_X17_Y2_N30
\temp_mult[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(12) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\,
	datac => temp_mult(12),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(12));

-- Location: LCCOMB_X17_Y2_N10
\Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\D[4]~input_o\ & ((\C[4]~input_o\) # ((\ULA_ctrl[0]~input_o\)))) # (!\D[4]~input_o\ & (\C[4]~input_o\ & (\ULA_ctrl[1]~input_o\ $ (!\ULA_ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~input_o\,
	datab => \C[4]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X17_Y2_N0
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\ULA_ctrl[2]~input_o\ & (((\Mux19~0_combout\)) # (!\C[4]~input_o\))) # (!\ULA_ctrl[2]~input_o\ & (((!\Mux19~0_combout\ & \Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \C[4]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \Add0~31_combout\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X17_Y2_N18
\Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Mux19~0_combout\ & ((\Add0~32_combout\ & (temp_mult(4))) # (!\Add0~32_combout\ & ((temp_mult(12)))))) # (!\Mux19~0_combout\ & (((\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => temp_mult(4),
	datac => temp_mult(12),
	datad => \Add0~32_combout\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X17_Y2_N28
\Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\Mux19~1_combout\ & (\Add0~29_combout\)) # (!\Mux19~1_combout\ & ((\Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Add0~29_combout\,
	datad => \Add0~33_combout\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X17_Y2_N26
\temp[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(4) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~34_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~34_combout\,
	combout => temp(4));

-- Location: LCCOMB_X16_Y1_N22
\Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Add0~35_combout\ $ (\C[5]~input_o\ $ (!\Add0~30\)))) # (GND)
-- \Add0~37\ = CARRY((\Add0~35_combout\ & ((\C[5]~input_o\) # (!\Add0~30\))) # (!\Add0~35_combout\ & (\C[5]~input_o\ & !\Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \C[5]~input_o\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X16_Y2_N16
\Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\D[5]~input_o\ & (((!\C[5]~input_o\ & \ULA_ctrl[0]~input_o\)))) # (!\D[5]~input_o\ & (\C[5]~input_o\ & (\ULA_ctrl[1]~input_o\ $ (\ULA_ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \C[5]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X16_Y2_N6
\Add0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Mux19~0_combout\ & (((\ULA_ctrl[2]~input_o\)))) # (!\Mux19~0_combout\ & (\C[5]~input_o\ $ (((\ULA_ctrl[2]~input_o\) # (\Add0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \Add0~38_combout\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X17_Y2_N20
\temp_mult[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(13) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\,
	datac => temp_mult(13),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(13));

-- Location: LCCOMB_X17_Y2_N2
\Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\Mux19~0_combout\ & ((\Add0~39_combout\ & (temp_mult(5))) # (!\Add0~39_combout\ & ((temp_mult(13)))))) # (!\Mux19~0_combout\ & (((\Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_mult(5),
	datab => \Mux19~0_combout\,
	datac => \Add0~39_combout\,
	datad => temp_mult(13),
	combout => \Add0~40_combout\);

-- Location: LCCOMB_X17_Y2_N16
\Add0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Mux19~1_combout\ & (\Add0~36_combout\)) # (!\Mux19~1_combout\ & ((\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datac => \Add0~36_combout\,
	datad => \Add0~40_combout\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X17_Y2_N8
\temp[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(5) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~41_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(5),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~41_combout\,
	combout => temp(5));

-- Location: LCCOMB_X16_Y1_N2
\Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\ULA_ctrl[3]~input_o\ & ((!\D[6]~input_o\))) # (!\ULA_ctrl[3]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \D[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \D[6]~input_o\,
	combout => \Add0~42_combout\);

-- Location: LCCOMB_X17_Y1_N4
\temp_mult[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(6) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\,
	datac => temp_mult(6),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(6));

-- Location: LCCOMB_X19_Y2_N24
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

-- Location: LCCOMB_X19_Y2_N26
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

-- Location: LCCOMB_X17_Y1_N6
\temp_mult[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(14) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\,
	datac => temp_mult(14),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(14));

-- Location: LCCOMB_X17_Y1_N20
\Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux23~1_combout\ & (((temp_mult(6))) # (!\Mux19~0_combout\))) # (!\Mux23~1_combout\ & (\Mux19~0_combout\ & ((temp_mult(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux19~0_combout\,
	datac => temp_mult(6),
	datad => temp_mult(14),
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X17_Y1_N12
\Add0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Mux19~1_combout\ & (\Add0~43_combout\)) # (!\Mux19~1_combout\ & ((\Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datac => \Add0~43_combout\,
	datad => \Mux23~2_combout\,
	combout => \Add0~45_combout\);

-- Location: LCCOMB_X17_Y1_N22
\temp[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(6) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~45_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~45_combout\,
	combout => temp(6));

-- Location: LCCOMB_X17_Y1_N8
\temp_mult[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(7) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\,
	datac => temp_mult(7),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(7));

-- Location: LCCOMB_X17_Y1_N30
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\C[7]~input_o\ & ((\D[7]~input_o\) # (\ULA_ctrl[1]~input_o\ $ (!\ULA_ctrl[0]~input_o\)))) # (!\C[7]~input_o\ & (((\D[7]~input_o\ & \ULA_ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \ULA_ctrl[1]~input_o\,
	datac => \D[7]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X17_Y1_N24
\temp_mult[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp_mult(15) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((temp_mult(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\,
	datab => temp_mult(15),
	datad => \Mux0~0clkctrl_outclk\,
	combout => temp_mult(15));

-- Location: LCCOMB_X17_Y1_N18
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux19~0_combout\ & ((\ULA_ctrl[2]~input_o\) # ((temp_mult(15))))) # (!\Mux19~0_combout\ & (!\ULA_ctrl[2]~input_o\ & (\Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \Mux24~0_combout\,
	datad => temp_mult(15),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X17_Y1_N0
\Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\ULA_ctrl[2]~input_o\ & ((\Mux24~1_combout\ & ((temp_mult(7)))) # (!\Mux24~1_combout\ & (!\C[7]~input_o\)))) # (!\ULA_ctrl[2]~input_o\ & (((\Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => temp_mult(7),
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X17_Y1_N2
\Add0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Mux19~1_combout\ & (\Add0~47_combout\)) # (!\Mux19~1_combout\ & ((\Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Add0~49_combout\);

-- Location: LCCOMB_X17_Y1_N14
\temp[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(7) = (GLOBAL(\Mux25~0clkctrl_outclk\) & ((\Add0~49_combout\))) # (!GLOBAL(\Mux25~0clkctrl_outclk\) & (temp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(7),
	datac => \Mux25~0clkctrl_outclk\,
	datad => \Add0~49_combout\,
	combout => temp(7));

-- Location: LCCOMB_X17_Y2_N12
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!temp(7) & (!temp(5) & (!temp(4) & !temp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => temp(5),
	datac => temp(4),
	datad => temp(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X15_Y1_N12
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!temp(3) & (!temp(0) & (!temp(2) & !temp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(0),
	datac => temp(2),
	datad => temp(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y3_N8
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


