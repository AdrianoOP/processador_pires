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

-- DATE "09/06/2013 22:39:04"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	controle IS
    PORT (
	IR : IN std_logic_vector(7 DOWNTO 0);
	DEBUG : OUT std_logic_vector(7 DOWNTO 0);
	ULA_ctrl : OUT std_logic_vector(3 DOWNTO 0);
	Z : IN std_logic;
	N : IN std_logic;
	mRom_en : OUT std_logic;
	mRam_en : OUT std_logic;
	PC_en : OUT std_logic;
	IR_en : OUT std_logic;
	A_en : OUT std_logic;
	B_en : OUT std_logic;
	A_sel : OUT std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	ULA_en : OUT std_logic;
	Buss_C_ctrl : OUT std_logic;
	Buss_D_ctrl : OUT std_logic
	);
END controle;

-- Design Ports Information
-- DEBUG[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEBUG[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEBUG[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEBUG[3]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEBUG[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEBUG[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEBUG[6]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEBUG[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULA_ctrl[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULA_ctrl[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULA_ctrl[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULA_ctrl[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- N	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mRom_en	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mRam_en	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_en	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_en	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_en	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_en	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_sel[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_sel[1]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULA_en	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Buss_C_ctrl	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Buss_D_ctrl	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF controle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEBUG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ULA_ctrl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_mRom_en : std_logic;
SIGNAL ww_mRam_en : std_logic;
SIGNAL ww_PC_en : std_logic;
SIGNAL ww_IR_en : std_logic;
SIGNAL ww_A_en : std_logic;
SIGNAL ww_B_en : std_logic;
SIGNAL ww_A_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ULA_en : std_logic;
SIGNAL ww_Buss_C_ctrl : std_logic;
SIGNAL ww_Buss_D_ctrl : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proximo_estado.S1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector8~7_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \A_en~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \proximo_estado.S3~5_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \Selector13~5_combout\ : std_logic;
SIGNAL \Selector13~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Mux54~5_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux54~6_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \proximo_estado.S3~2_combout\ : std_logic;
SIGNAL \proximo_estado.S3~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Selector8~8_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \proximo_estado.S2~regout\ : std_logic;
SIGNAL \proximo_estado.S3~0_combout\ : std_logic;
SIGNAL \proximo_estado.S3~3_combout\ : std_logic;
SIGNAL \proximo_estado.S3~4_combout\ : std_logic;
SIGNAL \Selector8~11_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \proximo_estado.S3~6_combout\ : std_logic;
SIGNAL \proximo_estado.S3~regout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \proximo_estado.S4~regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux42~6_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \proximo_estado.S1~regout\ : std_logic;
SIGNAL \proximo_estado.S1~clkctrl_outclk\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \proximo_estado.S0~regout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \proximo_estado.S5~regout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \DEBUG[0]~reg0_regout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \DEBUG[1]~reg0_regout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \DEBUG[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \DEBUG[3]~reg0_regout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \DEBUG[4]~reg0_regout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \DEBUG[5]~reg0_regout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \DEBUG[6]~reg0_regout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \DEBUG[7]~reg0_regout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~5_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~6_combout\ : std_logic;
SIGNAL \ULA_ctrl[0]~reg0_regout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~9_combout\ : std_logic;
SIGNAL \Selector8~10_combout\ : std_logic;
SIGNAL \ULA_ctrl[1]~reg0_regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \ULA_ctrl[3]~reg0_regout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \PC_en~reg0_regout\ : std_logic;
SIGNAL \A_en~1_combout\ : std_logic;
SIGNAL \A_en~2_combout\ : std_logic;
SIGNAL \A_en~reg0_regout\ : std_logic;
SIGNAL \A_sel[0]~reg0_regout\ : std_logic;
SIGNAL instrucao : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_PC_en~reg0_regout\ : std_logic;

BEGIN

ww_IR <= IR;
DEBUG <= ww_DEBUG;
ULA_ctrl <= ww_ULA_ctrl;
ww_Z <= Z;
ww_N <= N;
mRom_en <= ww_mRom_en;
mRam_en <= ww_mRam_en;
PC_en <= ww_PC_en;
IR_en <= ww_IR_en;
A_en <= ww_A_en;
B_en <= ww_B_en;
A_sel <= ww_A_sel;
ww_clk <= clk;
ww_reset <= reset;
ULA_en <= ww_ULA_en;
Buss_C_ctrl <= ww_Buss_C_ctrl;
Buss_D_ctrl <= ww_Buss_D_ctrl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\proximo_estado.S1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \proximo_estado.S1~regout\);
\ALT_INV_PC_en~reg0_regout\ <= NOT \PC_en~reg0_regout\;

-- Location: LCCOMB_X35_Y35_N6
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\proximo_estado.S4~regout\) # ((instrucao(2) & ((\proximo_estado.S5~regout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S4~regout\,
	datab => \proximo_estado.S5~regout\,
	datac => \WideOr5~0_combout\,
	datad => instrucao(2),
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X38_Y34_N20
\Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\ULA_ctrl[1]~reg0_regout\ & (instrucao(6) & ((instrucao(4)) # (!instrucao(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(5),
	datab => \ULA_ctrl[1]~reg0_regout\,
	datac => instrucao(6),
	datad => instrucao(4),
	combout => \Selector8~3_combout\);

-- Location: LCCOMB_X38_Y34_N24
\Selector8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~7_combout\ = (\Mux54~6_combout\) # ((\proximo_estado.S4~regout\ & !\Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S4~regout\,
	datac => \Mux54~6_combout\,
	datad => \Mux29~1_combout\,
	combout => \Selector8~7_combout\);

-- Location: LCCOMB_X36_Y34_N8
\Mux42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (!instrucao(7) & (\ULA_ctrl[3]~reg0_regout\ & !instrucao(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instrucao(7),
	datac => \ULA_ctrl[3]~reg0_regout\,
	datad => instrucao(3),
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X36_Y34_N6
\Mux42~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = (\Mux42~2_combout\ & ((\Mux42~6_combout\) # ((\Mux42~4_combout\ & \Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~4_combout\,
	datab => \Mux29~2_combout\,
	datac => \Mux42~2_combout\,
	datad => \Mux42~6_combout\,
	combout => \Mux42~5_combout\);

-- Location: LCCOMB_X37_Y35_N30
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\IR~combout\(7) & (\IR~combout\(5) & !\IR~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(7),
	datac => \IR~combout\(5),
	datad => \IR~combout\(3),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X36_Y35_N30
\A_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_en~0_combout\ = (\proximo_estado.S2~regout\ & (((!\Mux21~0_combout\) # (!\proximo_estado.S3~1_combout\)) # (!\IR~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(6),
	datab => \proximo_estado.S3~1_combout\,
	datac => \proximo_estado.S2~regout\,
	datad => \Mux21~0_combout\,
	combout => \A_en~0_combout\);

-- Location: LCCOMB_X36_Y35_N24
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\proximo_estado.S3~regout\) # ((\PC_en~reg0_regout\ & ((\A_en~0_combout\) # (\WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S3~regout\,
	datab => \A_en~0_combout\,
	datac => \PC_en~reg0_regout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X35_Y35_N26
\Selector13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = ((\proximo_estado.S2~regout\ & ((\IR~combout\(3)) # (\IR~combout\(7))))) # (!\proximo_estado.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \IR~combout\(7),
	datac => \proximo_estado.S2~regout\,
	datad => \proximo_estado.S0~regout\,
	combout => \Selector13~3_combout\);

-- Location: LCCOMB_X37_Y35_N18
\proximo_estado.S3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximo_estado.S3~5_combout\ = (!\IR~combout\(1) & (!\IR~combout\(2) & !\IR~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \IR~combout\(2),
	datac => \IR~combout\(0),
	combout => \proximo_estado.S3~5_combout\);

-- Location: LCCOMB_X37_Y35_N4
\Selector13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = (\IR~combout\(5) & (((\IR~combout\(6) & !\IR~combout\(4))) # (!\proximo_estado.S3~5_combout\))) # (!\IR~combout\(5) & (\proximo_estado.S3~5_combout\ $ (((\IR~combout\(6)) # (\IR~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \proximo_estado.S3~5_combout\,
	datac => \IR~combout\(6),
	datad => \IR~combout\(4),
	combout => \Selector13~4_combout\);

-- Location: LCCOMB_X36_Y35_N12
\Selector13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~5_combout\ = (\Selector13~4_combout\) # ((\IR~combout\(1) & \IR~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~4_combout\,
	datac => \IR~combout\(1),
	datad => \IR~combout\(2),
	combout => \Selector13~5_combout\);

-- Location: LCCOMB_X35_Y35_N14
\Selector13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~6_combout\ = (\proximo_estado.S1~regout\) # ((\Selector13~3_combout\) # ((\Selector13~5_combout\ & \proximo_estado.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S1~regout\,
	datab => \Selector13~5_combout\,
	datac => \proximo_estado.S2~regout\,
	datad => \Selector13~3_combout\,
	combout => \Selector13~6_combout\);

-- Location: LCCOMB_X37_Y35_N22
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = \IR~combout\(0) $ (((\IR~combout\(5)) # ((\IR~combout\(6)) # (\IR~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \IR~combout\(0),
	datac => \IR~combout\(6),
	datad => \IR~combout\(4),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X38_Y35_N2
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\IR~combout\(2) & (((!\IR~combout\(1) & \Mux18~0_combout\)))) # (!\IR~combout\(2) & ((\IR~combout\(1) & ((\Mux18~0_combout\))) # (!\IR~combout\(1) & (\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(2),
	datab => \Mux2~0_combout\,
	datac => \IR~combout\(1),
	datad => \Mux18~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X38_Y35_N20
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\ & (!\IR~combout\(7) & !\IR~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datac => \IR~combout\(7),
	datad => \IR~combout\(3),
	combout => \Selector10~1_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(4),
	combout => \IR~combout\(4));

-- Location: LCCOMB_X37_Y34_N26
\instrucao[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- instrucao(4) = (GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & (\IR~combout\(4))) # (!GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & ((instrucao(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(4),
	datac => \proximo_estado.S1~clkctrl_outclk\,
	datad => instrucao(4),
	combout => instrucao(4));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(5),
	combout => \IR~combout\(5));

-- Location: LCCOMB_X37_Y34_N8
\instrucao[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- instrucao(5) = (GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & (\IR~combout\(5))) # (!GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & ((instrucao(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(5),
	datac => instrucao(5),
	datad => \proximo_estado.S1~clkctrl_outclk\,
	combout => instrucao(5));

-- Location: LCCOMB_X35_Y34_N26
\Mux42~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (!instrucao(6) & (!instrucao(4) & !instrucao(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datac => instrucao(4),
	datad => instrucao(5),
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X37_Y34_N12
\instrucao[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- instrucao(3) = (GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & (\IR~combout\(3))) # (!GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & ((instrucao(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datac => instrucao(3),
	datad => \proximo_estado.S1~clkctrl_outclk\,
	combout => instrucao(3));

-- Location: LCCOMB_X36_Y34_N26
\Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (instrucao(5) & ((instrucao(4) & (\proximo_estado.S4~regout\)) # (!instrucao(4) & ((!instrucao(3)))))) # (!instrucao(5) & (\proximo_estado.S4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S4~regout\,
	datab => instrucao(5),
	datac => instrucao(4),
	datad => instrucao(3),
	combout => \Selector14~2_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(2),
	combout => \IR~combout\(2));

-- Location: LCCOMB_X37_Y34_N22
\instrucao[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- instrucao(2) = (GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & ((\IR~combout\(2)))) # (!GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & (instrucao(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instrucao(2),
	datac => \IR~combout\(2),
	datad => \proximo_estado.S1~clkctrl_outclk\,
	combout => instrucao(2));

-- Location: LCCOMB_X37_Y34_N14
\instrucao[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- instrucao(7) = (GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & (\IR~combout\(7))) # (!GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & ((instrucao(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(7),
	datac => instrucao(7),
	datad => \proximo_estado.S1~clkctrl_outclk\,
	combout => instrucao(7));

-- Location: LCCOMB_X36_Y34_N28
\Mux54~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = (!instrucao(7) & ((instrucao(1) & (!instrucao(2))) # (!instrucao(1) & ((instrucao(2)) # (instrucao(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(1),
	datab => instrucao(2),
	datac => instrucao(7),
	datad => instrucao(0),
	combout => \Mux54~4_combout\);

-- Location: LCCOMB_X36_Y34_N18
\Mux54~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux54~5_combout\ = (!instrucao(4) & (!instrucao(5) & (!instrucao(3) & \Mux54~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(4),
	datab => instrucao(5),
	datac => instrucao(3),
	datad => \Mux54~4_combout\,
	combout => \Mux54~5_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(6),
	combout => \IR~combout\(6));

-- Location: LCCOMB_X35_Y34_N10
\instrucao[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- instrucao(6) = (GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & ((\IR~combout\(6)))) # (!GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & (instrucao(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datac => \IR~combout\(6),
	datad => \proximo_estado.S1~clkctrl_outclk\,
	combout => instrucao(6));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(1),
	combout => \IR~combout\(1));

-- Location: LCCOMB_X36_Y34_N14
\instrucao[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- instrucao(1) = (GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & (\IR~combout\(1))) # (!GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & ((instrucao(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(1),
	datac => instrucao(1),
	datad => \proximo_estado.S1~clkctrl_outclk\,
	combout => instrucao(1));

-- Location: LCCOMB_X37_Y34_N6
\Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (!instrucao(2) & (!instrucao(0) & !instrucao(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instrucao(2),
	datac => instrucao(0),
	datad => instrucao(1),
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X37_Y34_N30
\Mux54~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux54~6_combout\ = (!instrucao(3) & (!instrucao(7) & \Mux38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(3),
	datac => instrucao(7),
	datad => \Mux38~1_combout\,
	combout => \Mux54~6_combout\);

-- Location: LCCOMB_X37_Y34_N28
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Mux54~6_combout\ & ((instrucao(4)) # (instrucao(6) $ (instrucao(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datab => instrucao(4),
	datac => instrucao(5),
	datad => \Mux54~6_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X36_Y34_N4
\Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\proximo_estado.S4~regout\ & ((\Selector14~0_combout\) # ((\Mux54~5_combout\ & !instrucao(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S4~regout\,
	datab => \Mux54~5_combout\,
	datac => instrucao(6),
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(0),
	combout => \IR~combout\(0));

-- Location: LCCOMB_X37_Y35_N20
\proximo_estado.S3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximo_estado.S3~2_combout\ = (\IR~combout\(0)) # ((\IR~combout\(5) & !\IR~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \IR~combout\(4),
	datac => \IR~combout\(0),
	combout => \proximo_estado.S3~2_combout\);

-- Location: LCCOMB_X37_Y35_N24
\proximo_estado.S3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximo_estado.S3~1_combout\ = (!\IR~combout\(1) & (!\IR~combout\(2) & (!\IR~combout\(0) & !\IR~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \IR~combout\(2),
	datac => \IR~combout\(0),
	datad => \IR~combout\(4),
	combout => \proximo_estado.S3~1_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(3),
	combout => \IR~combout\(3));

-- Location: LCCOMB_X37_Y35_N8
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!\IR~combout\(5) & (!\IR~combout\(4) & !\IR~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \IR~combout\(4),
	datac => \IR~combout\(6),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X37_Y35_N16
\Selector8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~8_combout\ = (\Mux18~0_combout\ & (\proximo_estado.S3~0_combout\ & (\IR~combout\(1) $ (\IR~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \Mux18~0_combout\,
	datac => \IR~combout\(2),
	datad => \proximo_estado.S3~0_combout\,
	combout => \Selector8~8_combout\);

-- Location: LCCOMB_X37_Y34_N18
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (instrucao(3) & (instrucao(7) & (instrucao(0) & instrucao(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(3),
	datab => instrucao(7),
	datac => instrucao(0),
	datad => instrucao(4),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X37_Y34_N2
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (instrucao(5) & instrucao(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => instrucao(5),
	datad => instrucao(6),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X36_Y35_N0
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (instrucao(2) & (instrucao(1) & (\Mux0~1_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(2),
	datab => instrucao(1),
	datac => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X36_Y35_N18
\Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\Selector8~8_combout\) # ((\proximo_estado.S1~regout\ & !\Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proximo_estado.S1~regout\,
	datac => \Selector8~8_combout\,
	datad => \Mux0~2_combout\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X36_Y35_N6
\Selector12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\Selector6~1_combout\) # ((\Selector12~2_combout\) # ((\proximo_estado.S2~regout\ & \Selector12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~1_combout\,
	datab => \Selector12~2_combout\,
	datac => \proximo_estado.S2~regout\,
	datad => \Selector12~1_combout\,
	combout => \Selector12~3_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X36_Y35_N7
\proximo_estado.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector12~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proximo_estado.S2~regout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(7),
	combout => \IR~combout\(7));

-- Location: LCCOMB_X37_Y35_N28
\proximo_estado.S3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximo_estado.S3~0_combout\ = (!\IR~combout\(3) & (\proximo_estado.S2~regout\ & !\IR~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(3),
	datac => \proximo_estado.S2~regout\,
	datad => \IR~combout\(7),
	combout => \proximo_estado.S3~0_combout\);

-- Location: LCCOMB_X37_Y35_N10
\proximo_estado.S3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximo_estado.S3~3_combout\ = (\proximo_estado.S3~1_combout\ & (\IR~combout\(6) & \proximo_estado.S3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proximo_estado.S3~1_combout\,
	datac => \IR~combout\(6),
	datad => \proximo_estado.S3~0_combout\,
	combout => \proximo_estado.S3~3_combout\);

-- Location: LCCOMB_X37_Y35_N0
\proximo_estado.S3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximo_estado.S3~4_combout\ = (\proximo_estado.S3~3_combout\ & ((\IR~combout\(1)) # ((\IR~combout\(2)) # (\proximo_estado.S3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \IR~combout\(2),
	datac => \proximo_estado.S3~2_combout\,
	datad => \proximo_estado.S3~3_combout\,
	combout => \proximo_estado.S3~4_combout\);

-- Location: LCCOMB_X36_Y34_N22
\Selector8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~11_combout\ = (\proximo_estado.S3~regout\) # (\proximo_estado.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proximo_estado.S3~regout\,
	datad => \proximo_estado.S4~regout\,
	combout => \Selector8~11_combout\);

-- Location: LCCOMB_X37_Y34_N16
\Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (!instrucao(7) & !instrucao(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => instrucao(7),
	datad => instrucao(3),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X35_Y34_N24
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (instrucao(6) & (!instrucao(4) & instrucao(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datac => instrucao(4),
	datad => instrucao(5),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X36_Y34_N12
\Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ((\Selector13~0_combout\) # ((instrucao(2) & instrucao(1)))) # (!\Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(2),
	datab => instrucao(1),
	datac => \Mux38~0_combout\,
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X36_Y34_N2
\Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Selector8~11_combout\ & ((\Selector13~1_combout\) # (\Mux38~1_combout\ $ (!\Mux42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~1_combout\,
	datab => \Mux42~4_combout\,
	datac => \Selector8~11_combout\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X36_Y35_N16
\proximo_estado.S3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximo_estado.S3~6_combout\ = (\Selector13~6_combout\ & (\proximo_estado.S3~4_combout\)) # (!\Selector13~6_combout\ & ((\Selector13~2_combout\ & (\proximo_estado.S3~4_combout\)) # (!\Selector13~2_combout\ & ((\proximo_estado.S3~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~6_combout\,
	datab => \proximo_estado.S3~4_combout\,
	datac => \proximo_estado.S3~regout\,
	datad => \Selector13~2_combout\,
	combout => \proximo_estado.S3~6_combout\);

-- Location: LCFF_X36_Y35_N17
\proximo_estado.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \proximo_estado.S3~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proximo_estado.S3~regout\);

-- Location: LCCOMB_X37_Y34_N20
\Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (instrucao(5) & !instrucao(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => instrucao(5),
	datad => instrucao(4),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X37_Y34_N10
\Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (instrucao(7)) # (((instrucao(3) & !\Mux29~0_combout\)) # (!\Mux38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(3),
	datab => instrucao(7),
	datac => \Mux29~0_combout\,
	datad => \Mux38~1_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X37_Y34_N4
\Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (\proximo_estado.S3~regout\ & !\Mux29~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proximo_estado.S3~regout\,
	datad => \Mux29~1_combout\,
	combout => \Selector9~4_combout\);

-- Location: LCCOMB_X36_Y34_N10
\Selector14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\Selector14~1_combout\) # ((instrucao(6) & (\Selector14~2_combout\ & \Selector9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datab => \Selector14~2_combout\,
	datac => \Selector14~1_combout\,
	datad => \Selector9~4_combout\,
	combout => \Selector14~3_combout\);

-- Location: LCFF_X36_Y34_N11
\proximo_estado.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector14~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proximo_estado.S4~regout\);

-- Location: LCCOMB_X35_Y34_N20
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!instrucao(7) & (!instrucao(3) & ((\proximo_estado.S4~regout\) # (\proximo_estado.S3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(7),
	datab => \proximo_estado.S4~regout\,
	datac => instrucao(3),
	datad => \proximo_estado.S3~regout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X35_Y34_N22
\Mux42~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (instrucao(6) & (!instrucao(0) & ((instrucao(4)) # (!instrucao(5))))) # (!instrucao(6) & (instrucao(0) $ (((instrucao(5)) # (instrucao(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datab => instrucao(5),
	datac => instrucao(4),
	datad => instrucao(0),
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X35_Y34_N18
\Mux42~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~6_combout\ = (!instrucao(2) & (!instrucao(1) & \Mux42~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instrucao(2),
	datac => instrucao(1),
	datad => \Mux42~3_combout\,
	combout => \Mux42~6_combout\);

-- Location: LCCOMB_X35_Y34_N2
\Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\ & ((\Mux42~6_combout\) # ((\Mux29~2_combout\ & \Mux42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \Mux42~4_combout\,
	datac => \Selector12~0_combout\,
	datad => \Mux42~6_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X35_Y35_N28
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ((\proximo_estado.S1~regout\ & \Selector12~1_combout\)) # (!\proximo_estado.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S0~regout\,
	datac => \proximo_estado.S1~regout\,
	datad => \Selector12~1_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X35_Y35_N29
\proximo_estado.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proximo_estado.S1~regout\);

-- Location: CLKCTRL_G8
\proximo_estado.S1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proximo_estado.S1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proximo_estado.S1~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y34_N24
\instrucao[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- instrucao(0) = (GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & (\IR~combout\(0))) # (!GLOBAL(\proximo_estado.S1~clkctrl_outclk\) & ((instrucao(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(0),
	datac => instrucao(0),
	datad => \proximo_estado.S1~clkctrl_outclk\,
	combout => instrucao(0));

-- Location: LCCOMB_X36_Y34_N16
\Mux46~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (instrucao(4) & (!instrucao(0))) # (!instrucao(4) & ((instrucao(0) & (!instrucao(5) & !instrucao(6))) # (!instrucao(0) & (instrucao(5) $ (instrucao(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(4),
	datab => instrucao(0),
	datac => instrucao(5),
	datad => instrucao(6),
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X36_Y34_N20
\Mux46~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = ((instrucao(2) & (instrucao(1))) # (!instrucao(2) & (!instrucao(1) & !\Mux46~2_combout\))) # (!\proximo_estado.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(2),
	datab => instrucao(1),
	datac => \Mux46~2_combout\,
	datad => \proximo_estado.S0~regout\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X35_Y34_N16
\Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = instrucao(1) $ (instrucao(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => instrucao(1),
	datad => instrucao(2),
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X36_Y34_N30
\Mux46~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = ((\Mux46~4_combout\) # ((!\Mux42~4_combout\ & \Mux29~2_combout\))) # (!\Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~0_combout\,
	datab => \Mux42~4_combout\,
	datac => \Mux46~4_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X36_Y35_N26
\Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Selector10~1_combout\ & (((\proximo_estado.S1~regout\ & \Mux0~2_combout\)))) # (!\Selector10~1_combout\ & ((\proximo_estado.S2~regout\) # ((\proximo_estado.S1~regout\ & \Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~1_combout\,
	datab => \proximo_estado.S2~regout\,
	datac => \proximo_estado.S1~regout\,
	datad => \Mux0~2_combout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X36_Y35_N14
\Selector10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (!\Selector10~2_combout\ & ((!\Mux46~3_combout\) # (!\proximo_estado.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S4~regout\,
	datac => \Mux46~3_combout\,
	datad => \Selector10~2_combout\,
	combout => \Selector10~3_combout\);

-- Location: LCFF_X36_Y35_N15
\proximo_estado.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector10~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proximo_estado.S0~regout\);

-- Location: LCCOMB_X36_Y35_N8
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\proximo_estado.S3~regout\) # (\proximo_estado.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proximo_estado.S3~regout\,
	datad => \proximo_estado.S2~regout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X36_Y35_N10
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (!\proximo_estado.S1~regout\ & (\proximo_estado.S0~regout\ & (!\WideOr5~0_combout\ & !\proximo_estado.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S1~regout\,
	datab => \proximo_estado.S0~regout\,
	datac => \WideOr5~0_combout\,
	datad => \proximo_estado.S4~regout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X35_Y34_N6
\Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (instrucao(3) & (((!\Mux29~2_combout\)))) # (!instrucao(3) & (\Mux42~4_combout\ $ (((instrucao(0) & !\Mux29~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(0),
	datab => instrucao(3),
	datac => \Mux29~2_combout\,
	datad => \Mux42~4_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X35_Y34_N12
\Selector15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = (instrucao(7) & (instrucao(2) $ ((!instrucao(1))))) # (!instrucao(7) & ((\Selector15~2_combout\) # ((instrucao(2) & instrucao(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(7),
	datab => instrucao(2),
	datac => instrucao(1),
	datad => \Selector15~2_combout\,
	combout => \Selector15~5_combout\);

-- Location: LCCOMB_X35_Y34_N28
\Selector15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\proximo_estado.S5~regout\ & (!\Mux29~2_combout\ & (\Selector13~0_combout\ & !\Selector15~5_combout\))) # (!\proximo_estado.S5~regout\ & (\Mux29~2_combout\ $ (((\Selector15~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \proximo_estado.S5~regout\,
	datac => \Selector13~0_combout\,
	datad => \Selector15~5_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X35_Y34_N0
\Selector15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\proximo_estado.S5~regout\ & ((\WideOr3~0_combout\) # ((\proximo_estado.S3~regout\ & !\Selector15~3_combout\)))) # (!\proximo_estado.S5~regout\ & (\proximo_estado.S3~regout\ & ((\Selector15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S3~regout\,
	datab => \WideOr3~0_combout\,
	datac => \proximo_estado.S5~regout\,
	datad => \Selector15~3_combout\,
	combout => \Selector15~4_combout\);

-- Location: LCFF_X35_Y34_N1
\proximo_estado.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector15~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proximo_estado.S5~regout\);

-- Location: LCCOMB_X35_Y35_N22
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (instrucao(0) & ((\proximo_estado.S3~regout\) # ((\proximo_estado.S2~regout\) # (\proximo_estado.S5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S3~regout\,
	datab => instrucao(0),
	datac => \proximo_estado.S2~regout\,
	datad => \proximo_estado.S5~regout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X36_Y35_N28
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\proximo_estado.S3~regout\ & (\proximo_estado.S0~regout\ & (!\proximo_estado.S4~regout\ & !\proximo_estado.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S3~regout\,
	datab => \proximo_estado.S0~regout\,
	datac => \proximo_estado.S4~regout\,
	datad => \proximo_estado.S2~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X35_Y35_N10
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\proximo_estado.S1~regout\) # ((\proximo_estado.S5~regout\) # (!\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S1~regout\,
	datab => \proximo_estado.S5~regout\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X35_Y35_N20
\Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\proximo_estado.S1~regout\) # ((\Selector30~0_combout\) # ((\DEBUG[0]~reg0_regout\ & !\WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S1~regout\,
	datab => \Selector30~0_combout\,
	datac => \DEBUG[0]~reg0_regout\,
	datad => \WideOr6~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCFF_X35_Y35_N21
\DEBUG[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEBUG[0]~reg0_regout\);

-- Location: LCCOMB_X35_Y35_N24
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\WideOr5~combout\ & ((instrucao(1)) # ((\DEBUG[1]~reg0_regout\ & !\WideOr6~0_combout\)))) # (!\WideOr5~combout\ & (((\DEBUG[1]~reg0_regout\ & !\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~combout\,
	datab => instrucao(1),
	datac => \DEBUG[1]~reg0_regout\,
	datad => \WideOr6~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCFF_X35_Y35_N25
\DEBUG[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEBUG[1]~reg0_regout\);

-- Location: LCCOMB_X35_Y35_N8
\Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\Selector28~0_combout\) # ((\DEBUG[2]~reg0_regout\ & !\WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~0_combout\,
	datac => \DEBUG[2]~reg0_regout\,
	datad => \WideOr6~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCFF_X35_Y35_N9
\DEBUG[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEBUG[2]~reg0_regout\);

-- Location: LCCOMB_X35_Y35_N30
WideOr5 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\proximo_estado.S3~regout\) # ((\proximo_estado.S2~regout\) # (\proximo_estado.S5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S3~regout\,
	datac => \proximo_estado.S2~regout\,
	datad => \proximo_estado.S5~regout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X35_Y35_N16
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (instrucao(3) & ((\WideOr5~combout\) # ((\DEBUG[3]~reg0_regout\ & !\WideOr6~0_combout\)))) # (!instrucao(3) & (((\DEBUG[3]~reg0_regout\ & !\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(3),
	datab => \WideOr5~combout\,
	datac => \DEBUG[3]~reg0_regout\,
	datad => \WideOr6~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCFF_X35_Y35_N17
\DEBUG[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEBUG[3]~reg0_regout\);

-- Location: LCCOMB_X35_Y35_N12
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (instrucao(4) & ((\WideOr5~combout\) # ((\DEBUG[4]~reg0_regout\ & !\WideOr6~0_combout\)))) # (!instrucao(4) & (((\DEBUG[4]~reg0_regout\ & !\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(4),
	datab => \WideOr5~combout\,
	datac => \DEBUG[4]~reg0_regout\,
	datad => \WideOr6~0_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCFF_X35_Y35_N13
\DEBUG[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEBUG[4]~reg0_regout\);

-- Location: LCCOMB_X35_Y35_N4
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (instrucao(5) & ((\WideOr5~combout\) # ((\DEBUG[5]~reg0_regout\ & !\WideOr6~0_combout\)))) # (!instrucao(5) & (((\DEBUG[5]~reg0_regout\ & !\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(5),
	datab => \WideOr5~combout\,
	datac => \DEBUG[5]~reg0_regout\,
	datad => \WideOr6~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCFF_X35_Y35_N5
\DEBUG[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEBUG[5]~reg0_regout\);

-- Location: LCCOMB_X35_Y35_N18
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (instrucao(6) & ((\WideOr5~combout\) # ((\DEBUG[6]~reg0_regout\ & !\WideOr6~0_combout\)))) # (!instrucao(6) & (((\DEBUG[6]~reg0_regout\ & !\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datab => \WideOr5~combout\,
	datac => \DEBUG[6]~reg0_regout\,
	datad => \WideOr6~0_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCFF_X35_Y35_N19
\DEBUG[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEBUG[6]~reg0_regout\);

-- Location: LCCOMB_X35_Y35_N0
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (instrucao(7) & ((\WideOr5~combout\) # ((\DEBUG[7]~reg0_regout\ & !\WideOr6~0_combout\)))) # (!instrucao(7) & (((\DEBUG[7]~reg0_regout\ & !\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(7),
	datab => \WideOr5~combout\,
	datac => \DEBUG[7]~reg0_regout\,
	datad => \WideOr6~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCFF_X35_Y35_N1
\DEBUG[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEBUG[7]~reg0_regout\);

-- Location: LCCOMB_X38_Y34_N8
\Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (instrucao(4) & (\ULA_ctrl[0]~reg0_regout\)) # (!instrucao(4) & ((instrucao(5) & ((!instrucao(3)))) # (!instrucao(5) & (\ULA_ctrl[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[0]~reg0_regout\,
	datab => instrucao(4),
	datac => instrucao(3),
	datad => instrucao(5),
	combout => \Selector9~3_combout\);

-- Location: LCCOMB_X38_Y34_N6
\Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\ULA_ctrl[0]~reg0_regout\ & (\proximo_estado.S4~regout\ & (\Mux54~6_combout\ & !\Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[0]~reg0_regout\,
	datab => \proximo_estado.S4~regout\,
	datac => \Mux54~6_combout\,
	datad => \Mux29~0_combout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X38_Y34_N30
\Selector9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~5_combout\ = (instrucao(6) & ((\Selector9~2_combout\) # ((\Selector9~3_combout\ & \Selector9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datab => \Selector9~3_combout\,
	datac => \Selector9~4_combout\,
	datad => \Selector9~2_combout\,
	combout => \Selector9~5_combout\);

-- Location: LCCOMB_X37_Y35_N14
\Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\IR~combout\(5) & (!\IR~combout\(0) & ((\IR~combout\(4)) # (!\IR~combout\(6))))) # (!\IR~combout\(5) & (\IR~combout\(0) $ (((\IR~combout\(6)) # (\IR~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \IR~combout\(0),
	datac => \IR~combout\(6),
	datad => \IR~combout\(4),
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X38_Y35_N16
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\IR~combout\(1) & (\Mux18~0_combout\ & ((!\IR~combout\(2))))) # (!\IR~combout\(1) & ((\IR~combout\(2) & (\Mux18~0_combout\)) # (!\IR~combout\(2) & ((\Mux18~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux18~1_combout\,
	datac => \IR~combout\(1),
	datad => \IR~combout\(2),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X38_Y34_N0
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Mux54~5_combout\) # ((\Mux54~6_combout\ & ((instrucao(5)) # (instrucao(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(5),
	datab => instrucao(4),
	datac => \Mux54~6_combout\,
	datad => \Mux54~5_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X38_Y34_N10
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (!instrucao(6) & (\Selector8~0_combout\ & ((\proximo_estado.S4~regout\) # (\proximo_estado.S3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S4~regout\,
	datab => \proximo_estado.S3~regout\,
	datac => instrucao(6),
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X38_Y34_N12
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\ULA_ctrl[0]~reg0_regout\ & ((\Selector8~1_combout\) # ((\proximo_estado.S3~0_combout\ & \Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S3~0_combout\,
	datab => \Selector9~0_combout\,
	datac => \ULA_ctrl[0]~reg0_regout\,
	datad => \Selector8~1_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X38_Y34_N16
\Selector9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~6_combout\ = (\Selector9~5_combout\) # ((\Selector9~1_combout\) # ((\WideOr3~0_combout\ & \ULA_ctrl[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~0_combout\,
	datab => \Selector9~5_combout\,
	datac => \ULA_ctrl[0]~reg0_regout\,
	datad => \Selector9~1_combout\,
	combout => \Selector9~6_combout\);

-- Location: LCFF_X38_Y34_N17
\ULA_ctrl[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector9~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ULA_ctrl[0]~reg0_regout\);

-- Location: LCCOMB_X38_Y34_N18
\Selector8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (instrucao(6) & (!instrucao(4) & (!instrucao(3) & instrucao(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instrucao(6),
	datab => instrucao(4),
	datac => instrucao(3),
	datad => instrucao(5),
	combout => \Selector8~4_combout\);

-- Location: LCCOMB_X38_Y34_N28
\Selector8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = (\proximo_estado.S4~regout\ & !\Mux29~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proximo_estado.S4~regout\,
	datad => \Mux29~1_combout\,
	combout => \Selector8~5_combout\);

-- Location: LCCOMB_X38_Y34_N22
\Selector8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~6_combout\ = (\Selector8~3_combout\ & (((\proximo_estado.S3~regout\) # (\Selector8~5_combout\)))) # (!\Selector8~3_combout\ & (\Selector8~4_combout\ & ((\Selector8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~3_combout\,
	datab => \Selector8~4_combout\,
	datac => \proximo_estado.S3~regout\,
	datad => \Selector8~5_combout\,
	combout => \Selector8~6_combout\);

-- Location: LCCOMB_X37_Y35_N2
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\IR~combout\(4) & (!\IR~combout\(5))) # (!\IR~combout\(4) & ((\IR~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \IR~combout\(4),
	datac => \IR~combout\(6),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X37_Y35_N12
\Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\IR~combout\(5) & (!\IR~combout\(0) & ((\Mux17~0_combout\) # (\ULA_ctrl[1]~reg0_regout\)))) # (!\IR~combout\(5) & (\ULA_ctrl[1]~reg0_regout\ & (\Mux17~0_combout\ $ (\IR~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \Mux17~0_combout\,
	datac => \IR~combout\(0),
	datad => \ULA_ctrl[1]~reg0_regout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X37_Y35_N26
\Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (!\IR~combout\(1) & (!\IR~combout\(2) & (\proximo_estado.S3~0_combout\ & \Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \IR~combout\(2),
	datac => \proximo_estado.S3~0_combout\,
	datad => \Mux17~1_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X38_Y34_N26
\Selector8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~9_combout\ = (\ULA_ctrl[1]~reg0_regout\ & ((\Selector8~8_combout\) # ((\WideOr3~0_combout\) # (\Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[1]~reg0_regout\,
	datab => \Selector8~8_combout\,
	datac => \WideOr3~0_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~9_combout\);

-- Location: LCCOMB_X38_Y34_N2
\Selector8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~10_combout\ = (\Selector8~2_combout\) # ((\Selector8~9_combout\) # ((\Selector8~7_combout\ & \Selector8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~7_combout\,
	datab => \Selector8~6_combout\,
	datac => \Selector8~2_combout\,
	datad => \Selector8~9_combout\,
	combout => \Selector8~10_combout\);

-- Location: LCFF_X38_Y34_N3
\ULA_ctrl[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector8~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ULA_ctrl[1]~reg0_regout\);

-- Location: LCCOMB_X36_Y35_N20
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\ULA_ctrl[3]~reg0_regout\ & (!\proximo_estado.S1~regout\ & \WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~reg0_regout\,
	datab => \proximo_estado.S1~regout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X37_Y35_N6
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (!\IR~combout\(1) & (!\IR~combout\(2) & (\Mux18~1_combout\ & \proximo_estado.S3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \IR~combout\(2),
	datac => \Mux18~1_combout\,
	datad => \proximo_estado.S3~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X36_Y34_N0
\Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\ULA_ctrl[3]~reg0_regout\ & ((\Selector8~8_combout\) # (\Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~reg0_regout\,
	datac => \Selector8~8_combout\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X36_Y34_N24
\Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Selector6~0_combout\) # ((\Selector6~2_combout\) # ((\Mux42~5_combout\ & \Selector8~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~5_combout\,
	datab => \Selector8~11_combout\,
	datac => \Selector6~0_combout\,
	datad => \Selector6~2_combout\,
	combout => \Selector6~3_combout\);

-- Location: LCFF_X36_Y34_N25
\ULA_ctrl[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ULA_ctrl[3]~reg0_regout\);

-- Location: LCCOMB_X37_Y34_N0
\Mux38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux38~1_combout\ & (!instrucao(4) & (\Mux38~0_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~1_combout\,
	datab => instrucao(4),
	datac => \Mux38~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X36_Y35_N2
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Mux38~2_combout\ & (\Selector0~0_combout\)) # (!\Mux38~2_combout\ & (\PC_en~reg0_regout\ & ((\Selector0~0_combout\) # (\proximo_estado.S4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \proximo_estado.S4~regout\,
	datac => \PC_en~reg0_regout\,
	datad => \Mux38~2_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCFF_X36_Y35_N3
\PC_en~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_en~reg0_regout\);

-- Location: LCCOMB_X36_Y35_N22
\A_en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_en~1_combout\ = (!\A_en~0_combout\ & (!\WideOr0~0_combout\ & ((\Mux38~2_combout\) # (!\Selector8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_en~0_combout\,
	datab => \WideOr0~0_combout\,
	datac => \Mux38~2_combout\,
	datad => \Selector8~11_combout\,
	combout => \A_en~1_combout\);

-- Location: LCCOMB_X36_Y35_N4
\A_en~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_en~2_combout\ = (\A_en~1_combout\ & (\proximo_estado.S3~regout\)) # (!\A_en~1_combout\ & ((\A_en~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proximo_estado.S3~regout\,
	datac => \A_en~reg0_regout\,
	datad => \A_en~1_combout\,
	combout => \A_en~2_combout\);

-- Location: LCFF_X36_Y35_N5
\A_en~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A_en~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_en~reg0_regout\);

-- Location: LCFF_X36_Y35_N9
\A_sel[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \proximo_estado.S4~regout\,
	ena => \A_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_sel[0]~reg0_regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEBUG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DEBUG[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEBUG(0));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEBUG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DEBUG[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEBUG(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEBUG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DEBUG[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEBUG(2));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEBUG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DEBUG[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEBUG(3));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEBUG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DEBUG[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEBUG(4));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEBUG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DEBUG[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEBUG(5));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEBUG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DEBUG[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEBUG(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEBUG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DEBUG[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEBUG(7));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULA_ctrl[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA_ctrl[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULA_ctrl(0));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULA_ctrl[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA_ctrl[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULA_ctrl(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULA_ctrl[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA_ctrl[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULA_ctrl(2));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULA_ctrl[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA_ctrl[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULA_ctrl(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Z~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Z);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_N);

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mRom_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mRom_en);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mRam_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mRam_en);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_PC_en~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_en);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_en);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_en~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_en);

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_en);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_sel[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_sel[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_sel(0));

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_sel[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_sel(1));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULA_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULA_en);

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Buss_C_ctrl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Buss_C_ctrl);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Buss_D_ctrl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Buss_D_ctrl);
END structure;


