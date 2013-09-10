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

-- DATE "09/04/2013 23:18:39"

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

ENTITY 	top_level IS
    PORT (
	reset : IN std_logic;
	clk_master : IN std_logic;
	PC : OUT std_logic_vector(7 DOWNTO 0);
	A : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	RAM_IN : IN std_logic_vector(7 DOWNTO 0);
	RAM_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- PC[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[2]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[6]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[7]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[2]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[3]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[4]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[6]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[7]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[1]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[3]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[4]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[5]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[6]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[7]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAM_IN[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RAM_IN[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RAM_IN[2]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RAM_IN[3]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RAM_IN[4]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RAM_IN[5]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RAM_IN[6]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RAM_IN[7]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RAM_OUT[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAM_OUT[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAM_OUT[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAM_OUT[3]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAM_OUT[4]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAM_OUT[5]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAM_OUT[6]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAM_OUT[7]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_master	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk_master : std_logic;
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAM_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAM_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_master~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco|RAM1|RAM_OUT[7]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco|ULA1|Add1~8_combout\ : std_logic;
SIGNAL \controlador|estado_atual.S2~regout\ : std_logic;
SIGNAL \controlador|proximo_estado.S2~regout\ : std_logic;
SIGNAL \controlador|Selector4~0_combout\ : std_logic;
SIGNAL \clk_master~combout\ : std_logic;
SIGNAL \clk_master~clkctrl_outclk\ : std_logic;
SIGNAL \controlador|Selector3~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \controlador|proximo_estado.S1~regout\ : std_logic;
SIGNAL \controlador|estado_atual.S1~regout\ : std_logic;
SIGNAL \controlador|Selector2~0_combout\ : std_logic;
SIGNAL \controlador|proximo_estado.S0~regout\ : std_logic;
SIGNAL \controlador|estado_atual.S0~regout\ : std_logic;
SIGNAL \controlador|Selector1~0_combout\ : std_logic;
SIGNAL \bloco|ULA1|Add1~0_combout\ : std_logic;
SIGNAL \controlador|PC_en~0_combout\ : std_logic;
SIGNAL \controlador|PC_en~regout\ : std_logic;
SIGNAL \bloco|ULA1|Add1~1\ : std_logic;
SIGNAL \bloco|ULA1|Add1~2_combout\ : std_logic;
SIGNAL \bloco|ULA1|Add1~3\ : std_logic;
SIGNAL \bloco|ULA1|Add1~4_combout\ : std_logic;
SIGNAL \bloco|ULA1|Add1~5\ : std_logic;
SIGNAL \bloco|ULA1|Add1~6_combout\ : std_logic;
SIGNAL \bloco|ULA1|Add1~7\ : std_logic;
SIGNAL \bloco|ULA1|Add1~9\ : std_logic;
SIGNAL \bloco|ULA1|Add1~10_combout\ : std_logic;
SIGNAL \bloco|ULA1|Add1~11\ : std_logic;
SIGNAL \bloco|ULA1|Add1~12_combout\ : std_logic;
SIGNAL \bloco|ULA1|Add1~13\ : std_logic;
SIGNAL \bloco|ULA1|Add1~14_combout\ : std_logic;
SIGNAL \bloco|RAM1|RAM_OUT[7]~0_combout\ : std_logic;
SIGNAL \bloco|RAM1|RAM_OUT[7]~1_combout\ : std_logic;
SIGNAL \bloco|RAM1|RAM_OUT[7]~2_combout\ : std_logic;
SIGNAL \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \bloco|RegPC|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco|ULA1|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco|ULA1|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco|RAM1|RAM_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco|RAM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controlador|ULA_ctrl\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk_master <= clk_master;
PC <= ww_PC;
A <= ww_A;
B <= ww_B;
ww_RAM_IN <= RAM_IN;
RAM_OUT <= ww_RAM_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\bloco|ULA1|saida\(7) & \bloco|ULA1|saida\(6) & \bloco|ULA1|saida\(5) & \bloco|ULA1|saida\(4) & \bloco|ULA1|saida\(3) & \bloco|ULA1|saida\(2) & 
\bloco|ULA1|saida\(1) & \bloco|ULA1|saida\(0));

\bloco|RAM1|altsyncram_component|auto_generated|q_a\(0) <= \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\bloco|RAM1|altsyncram_component|auto_generated|q_a\(1) <= \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\bloco|RAM1|altsyncram_component|auto_generated|q_a\(2) <= \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\bloco|RAM1|altsyncram_component|auto_generated|q_a\(3) <= \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\bloco|RAM1|altsyncram_component|auto_generated|q_a\(4) <= \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\bloco|RAM1|altsyncram_component|auto_generated|q_a\(5) <= \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\bloco|RAM1|altsyncram_component|auto_generated|q_a\(6) <= \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\bloco|RAM1|altsyncram_component|auto_generated|q_a\(7) <= \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk_master~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_master~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\bloco|RAM1|RAM_OUT[7]~2clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \bloco|RAM1|RAM_OUT[7]~2_combout\);

-- Location: LCCOMB_X29_Y35_N8
\bloco|ULA1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|Add1~8_combout\ = (\bloco|RegPC|temp\(4) & (\bloco|ULA1|Add1~7\ $ (GND))) # (!\bloco|RegPC|temp\(4) & (!\bloco|ULA1|Add1~7\ & VCC))
-- \bloco|ULA1|Add1~9\ = CARRY((\bloco|RegPC|temp\(4) & !\bloco|ULA1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RegPC|temp\(4),
	datad => VCC,
	cin => \bloco|ULA1|Add1~7\,
	combout => \bloco|ULA1|Add1~8_combout\,
	cout => \bloco|ULA1|Add1~9\);

-- Location: LCCOMB_X29_Y35_N20
\bloco|ULA1|temp[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|temp\(4) = (!\reset~combout\ & \bloco|ULA1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \bloco|ULA1|Add1~8_combout\,
	combout => \bloco|ULA1|temp\(4));

-- Location: LCFF_X30_Y35_N13
\controlador|estado_atual.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \controlador|proximo_estado.S2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlador|estado_atual.S2~regout\);

-- Location: LCFF_X30_Y35_N9
\controlador|proximo_estado.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	datain => \controlador|Selector4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlador|proximo_estado.S2~regout\);

-- Location: LCCOMB_X30_Y35_N8
\controlador|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlador|Selector4~0_combout\ = (\controlador|estado_atual.S1~regout\) # ((!\controlador|estado_atual.S2~regout\ & (\controlador|estado_atual.S0~regout\ & \controlador|proximo_estado.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado_atual.S2~regout\,
	datab => \controlador|estado_atual.S0~regout\,
	datac => \controlador|proximo_estado.S2~regout\,
	datad => \controlador|estado_atual.S1~regout\,
	combout => \controlador|Selector4~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_master~I\ : cycloneii_io
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
	padio => ww_clk_master,
	combout => \clk_master~combout\);

-- Location: CLKCTRL_G3
\clk_master~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_master~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_master~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y35_N20
\controlador|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlador|Selector3~0_combout\ = ((!\controlador|estado_atual.S2~regout\ & (\controlador|proximo_estado.S1~regout\ & !\controlador|estado_atual.S1~regout\))) # (!\controlador|estado_atual.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado_atual.S2~regout\,
	datab => \controlador|estado_atual.S0~regout\,
	datac => \controlador|proximo_estado.S1~regout\,
	datad => \controlador|estado_atual.S1~regout\,
	combout => \controlador|Selector3~0_combout\);

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

-- Location: LCFF_X30_Y35_N21
\controlador|proximo_estado.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	datain => \controlador|Selector3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlador|proximo_estado.S1~regout\);

-- Location: LCFF_X30_Y35_N23
\controlador|estado_atual.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \controlador|proximo_estado.S1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlador|estado_atual.S1~regout\);

-- Location: LCCOMB_X30_Y35_N24
\controlador|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlador|Selector2~0_combout\ = (!\controlador|estado_atual.S2~regout\ & (((\controlador|proximo_estado.S0~regout\) # (\controlador|estado_atual.S1~regout\)) # (!\controlador|estado_atual.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|estado_atual.S2~regout\,
	datab => \controlador|estado_atual.S0~regout\,
	datac => \controlador|proximo_estado.S0~regout\,
	datad => \controlador|estado_atual.S1~regout\,
	combout => \controlador|Selector2~0_combout\);

-- Location: LCFF_X30_Y35_N25
\controlador|proximo_estado.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	datain => \controlador|Selector2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlador|proximo_estado.S0~regout\);

-- Location: LCFF_X30_Y35_N29
\controlador|estado_atual.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \controlador|proximo_estado.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlador|estado_atual.S0~regout\);

-- Location: LCCOMB_X30_Y35_N14
\controlador|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlador|Selector1~0_combout\ = (\controlador|estado_atual.S1~regout\) # ((\controlador|estado_atual.S0~regout\ & \controlador|ULA_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|estado_atual.S0~regout\,
	datac => \controlador|ULA_ctrl\(1),
	datad => \controlador|estado_atual.S1~regout\,
	combout => \controlador|Selector1~0_combout\);

-- Location: LCFF_X30_Y35_N15
\controlador|ULA_ctrl[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	datain => \controlador|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlador|ULA_ctrl\(1));

-- Location: LCCOMB_X29_Y35_N0
\bloco|ULA1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|Add1~0_combout\ = (\bloco|RegPC|temp\(0) & (\controlador|ULA_ctrl\(1) $ (VCC))) # (!\bloco|RegPC|temp\(0) & (\controlador|ULA_ctrl\(1) & VCC))
-- \bloco|ULA1|Add1~1\ = CARRY((\bloco|RegPC|temp\(0) & \controlador|ULA_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|RegPC|temp\(0),
	datab => \controlador|ULA_ctrl\(1),
	datad => VCC,
	combout => \bloco|ULA1|Add1~0_combout\,
	cout => \bloco|ULA1|Add1~1\);

-- Location: LCCOMB_X30_Y35_N28
\bloco|ULA1|temp[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|temp\(0) = (!\reset~combout\ & \bloco|ULA1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \bloco|ULA1|Add1~0_combout\,
	combout => \bloco|ULA1|temp\(0));

-- Location: LCCOMB_X30_Y35_N30
\controlador|PC_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlador|PC_en~0_combout\ = (\controlador|PC_en~regout\) # (!\controlador|estado_atual.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador|PC_en~regout\,
	datad => \controlador|estado_atual.S0~regout\,
	combout => \controlador|PC_en~0_combout\);

-- Location: LCFF_X30_Y35_N31
\controlador|PC_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	datain => \controlador|PC_en~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlador|PC_en~regout\);

-- Location: LCCOMB_X30_Y35_N16
\bloco|ULA1|saida[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|saida\(0) = (\controlador|PC_en~regout\ & ((\bloco|ULA1|temp\(0)))) # (!\controlador|PC_en~regout\ & (\bloco|ULA1|saida\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|saida\(0),
	datac => \bloco|ULA1|temp\(0),
	datad => \controlador|PC_en~regout\,
	combout => \bloco|ULA1|saida\(0));

-- Location: LCFF_X29_Y35_N27
\bloco|RegPC|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \bloco|ULA1|saida\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \controlador|PC_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco|RegPC|temp\(0));

-- Location: LCCOMB_X29_Y35_N2
\bloco|ULA1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|Add1~2_combout\ = (\bloco|RegPC|temp\(1) & (!\bloco|ULA1|Add1~1\)) # (!\bloco|RegPC|temp\(1) & ((\bloco|ULA1|Add1~1\) # (GND)))
-- \bloco|ULA1|Add1~3\ = CARRY((!\bloco|ULA1|Add1~1\) # (!\bloco|RegPC|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RegPC|temp\(1),
	datad => VCC,
	cin => \bloco|ULA1|Add1~1\,
	combout => \bloco|ULA1|Add1~2_combout\,
	cout => \bloco|ULA1|Add1~3\);

-- Location: LCCOMB_X30_Y35_N26
\bloco|ULA1|temp[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|temp\(1) = (!\reset~combout\ & \bloco|ULA1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \bloco|ULA1|Add1~2_combout\,
	combout => \bloco|ULA1|temp\(1));

-- Location: LCCOMB_X30_Y35_N22
\bloco|ULA1|saida[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|saida\(1) = (\controlador|PC_en~regout\ & ((\bloco|ULA1|temp\(1)))) # (!\controlador|PC_en~regout\ & (\bloco|ULA1|saida\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|saida\(1),
	datab => \bloco|ULA1|temp\(1),
	datad => \controlador|PC_en~regout\,
	combout => \bloco|ULA1|saida\(1));

-- Location: LCFF_X29_Y35_N31
\bloco|RegPC|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \bloco|ULA1|saida\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \controlador|PC_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco|RegPC|temp\(1));

-- Location: LCCOMB_X29_Y35_N4
\bloco|ULA1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|Add1~4_combout\ = (\bloco|RegPC|temp\(2) & (\bloco|ULA1|Add1~3\ $ (GND))) # (!\bloco|RegPC|temp\(2) & (!\bloco|ULA1|Add1~3\ & VCC))
-- \bloco|ULA1|Add1~5\ = CARRY((\bloco|RegPC|temp\(2) & !\bloco|ULA1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RegPC|temp\(2),
	datad => VCC,
	cin => \bloco|ULA1|Add1~3\,
	combout => \bloco|ULA1|Add1~4_combout\,
	cout => \bloco|ULA1|Add1~5\);

-- Location: LCCOMB_X29_Y35_N26
\bloco|ULA1|temp[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|temp\(2) = (!\reset~combout\ & \bloco|ULA1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \bloco|ULA1|Add1~4_combout\,
	combout => \bloco|ULA1|temp\(2));

-- Location: LCCOMB_X29_Y35_N16
\bloco|ULA1|saida[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|saida\(2) = (\controlador|PC_en~regout\ & ((\bloco|ULA1|temp\(2)))) # (!\controlador|PC_en~regout\ & (\bloco|ULA1|saida\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|saida\(2),
	datab => \bloco|ULA1|temp\(2),
	datad => \controlador|PC_en~regout\,
	combout => \bloco|ULA1|saida\(2));

-- Location: LCFF_X29_Y35_N21
\bloco|RegPC|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \bloco|ULA1|saida\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \controlador|PC_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco|RegPC|temp\(2));

-- Location: LCCOMB_X29_Y35_N6
\bloco|ULA1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|Add1~6_combout\ = (\bloco|RegPC|temp\(3) & (!\bloco|ULA1|Add1~5\)) # (!\bloco|RegPC|temp\(3) & ((\bloco|ULA1|Add1~5\) # (GND)))
-- \bloco|ULA1|Add1~7\ = CARRY((!\bloco|ULA1|Add1~5\) # (!\bloco|RegPC|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|RegPC|temp\(3),
	datad => VCC,
	cin => \bloco|ULA1|Add1~5\,
	combout => \bloco|ULA1|Add1~6_combout\,
	cout => \bloco|ULA1|Add1~7\);

-- Location: LCCOMB_X29_Y35_N28
\bloco|ULA1|temp[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|temp\(3) = (!\reset~combout\ & \bloco|ULA1|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \bloco|ULA1|Add1~6_combout\,
	combout => \bloco|ULA1|temp\(3));

-- Location: LCCOMB_X29_Y35_N22
\bloco|ULA1|saida[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|saida\(3) = (\controlador|PC_en~regout\ & ((\bloco|ULA1|temp\(3)))) # (!\controlador|PC_en~regout\ & (\bloco|ULA1|saida\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|saida\(3),
	datab => \bloco|ULA1|temp\(3),
	datad => \controlador|PC_en~regout\,
	combout => \bloco|ULA1|saida\(3));

-- Location: LCFF_X29_Y35_N29
\bloco|RegPC|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \bloco|ULA1|saida\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \controlador|PC_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco|RegPC|temp\(3));

-- Location: LCCOMB_X29_Y35_N24
\bloco|ULA1|saida[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|saida\(4) = (\controlador|PC_en~regout\ & (\bloco|ULA1|temp\(4))) # (!\controlador|PC_en~regout\ & ((\bloco|ULA1|saida\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|temp\(4),
	datab => \bloco|ULA1|saida\(4),
	datad => \controlador|PC_en~regout\,
	combout => \bloco|ULA1|saida\(4));

-- Location: LCFF_X29_Y35_N19
\bloco|RegPC|temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \bloco|ULA1|saida\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \controlador|PC_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco|RegPC|temp\(4));

-- Location: LCCOMB_X29_Y35_N10
\bloco|ULA1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|Add1~10_combout\ = (\bloco|RegPC|temp\(5) & (!\bloco|ULA1|Add1~9\)) # (!\bloco|RegPC|temp\(5) & ((\bloco|ULA1|Add1~9\) # (GND)))
-- \bloco|ULA1|Add1~11\ = CARRY((!\bloco|ULA1|Add1~9\) # (!\bloco|RegPC|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RegPC|temp\(5),
	datad => VCC,
	cin => \bloco|ULA1|Add1~9\,
	combout => \bloco|ULA1|Add1~10_combout\,
	cout => \bloco|ULA1|Add1~11\);

-- Location: LCCOMB_X29_Y35_N18
\bloco|ULA1|temp[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|temp\(5) = (!\reset~combout\ & \bloco|ULA1|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \bloco|ULA1|Add1~10_combout\,
	combout => \bloco|ULA1|temp\(5));

-- Location: LCCOMB_X29_Y35_N30
\bloco|ULA1|saida[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|saida\(5) = (\controlador|PC_en~regout\ & ((\bloco|ULA1|temp\(5)))) # (!\controlador|PC_en~regout\ & (\bloco|ULA1|saida\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|saida\(5),
	datab => \bloco|ULA1|temp\(5),
	datad => \controlador|PC_en~regout\,
	combout => \bloco|ULA1|saida\(5));

-- Location: LCFF_X29_Y35_N25
\bloco|RegPC|temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \bloco|ULA1|saida\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \controlador|PC_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco|RegPC|temp\(5));

-- Location: LCCOMB_X29_Y35_N12
\bloco|ULA1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|Add1~12_combout\ = (\bloco|RegPC|temp\(6) & (\bloco|ULA1|Add1~11\ $ (GND))) # (!\bloco|RegPC|temp\(6) & (!\bloco|ULA1|Add1~11\ & VCC))
-- \bloco|ULA1|Add1~13\ = CARRY((\bloco|RegPC|temp\(6) & !\bloco|ULA1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RegPC|temp\(6),
	datad => VCC,
	cin => \bloco|ULA1|Add1~11\,
	combout => \bloco|ULA1|Add1~12_combout\,
	cout => \bloco|ULA1|Add1~13\);

-- Location: LCCOMB_X30_Y35_N18
\bloco|ULA1|temp[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|temp\(6) = (!\reset~combout\ & \bloco|ULA1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \bloco|ULA1|Add1~12_combout\,
	combout => \bloco|ULA1|temp\(6));

-- Location: LCCOMB_X30_Y35_N4
\bloco|ULA1|saida[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|saida\(6) = (\controlador|PC_en~regout\ & ((\bloco|ULA1|temp\(6)))) # (!\controlador|PC_en~regout\ & (\bloco|ULA1|saida\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|PC_en~regout\,
	datac => \bloco|ULA1|saida\(6),
	datad => \bloco|ULA1|temp\(6),
	combout => \bloco|ULA1|saida\(6));

-- Location: LCFF_X29_Y35_N23
\bloco|RegPC|temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \bloco|ULA1|saida\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \controlador|PC_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco|RegPC|temp\(6));

-- Location: LCCOMB_X29_Y35_N14
\bloco|ULA1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|Add1~14_combout\ = \bloco|ULA1|Add1~13\ $ (\bloco|RegPC|temp\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bloco|RegPC|temp\(7),
	cin => \bloco|ULA1|Add1~13\,
	combout => \bloco|ULA1|Add1~14_combout\);

-- Location: LCCOMB_X30_Y35_N0
\bloco|ULA1|temp[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|temp\(7) = (!\reset~combout\ & \bloco|ULA1|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \bloco|ULA1|Add1~14_combout\,
	combout => \bloco|ULA1|temp\(7));

-- Location: LCCOMB_X30_Y35_N6
\bloco|ULA1|saida[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|ULA1|saida\(7) = (\controlador|PC_en~regout\ & ((\bloco|ULA1|temp\(7)))) # (!\controlador|PC_en~regout\ & (\bloco|ULA1|saida\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|saida\(7),
	datab => \controlador|PC_en~regout\,
	datad => \bloco|ULA1|temp\(7),
	combout => \bloco|ULA1|saida\(7));

-- Location: LCFF_X29_Y35_N17
\bloco|RegPC|temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_master~clkctrl_outclk\,
	sdata => \bloco|ULA1|saida\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \controlador|PC_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco|RegPC|temp\(7));

-- Location: LCCOMB_X30_Y35_N2
\bloco|RAM1|RAM_OUT[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT[7]~0_combout\ = ((\bloco|ULA1|saida\(4)) # ((\bloco|ULA1|saida\(2)) # (\bloco|ULA1|saida\(3)))) # (!\bloco|ULA1|saida\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|saida\(1),
	datab => \bloco|ULA1|saida\(4),
	datac => \bloco|ULA1|saida\(2),
	datad => \bloco|ULA1|saida\(3),
	combout => \bloco|RAM1|RAM_OUT[7]~0_combout\);

-- Location: LCCOMB_X30_Y35_N10
\bloco|RAM1|RAM_OUT[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT[7]~1_combout\ = (\bloco|ULA1|saida\(7)) # ((\bloco|ULA1|saida\(6)) # ((\bloco|ULA1|saida\(5)) # (\bloco|ULA1|saida\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|ULA1|saida\(7),
	datab => \bloco|ULA1|saida\(6),
	datac => \bloco|ULA1|saida\(5),
	datad => \bloco|ULA1|saida\(0),
	combout => \bloco|RAM1|RAM_OUT[7]~1_combout\);

-- Location: LCCOMB_X30_Y35_N12
\bloco|RAM1|RAM_OUT[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT[7]~2_combout\ = (\bloco|RAM1|RAM_OUT[7]~0_combout\) # (\bloco|RAM1|RAM_OUT[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RAM1|RAM_OUT[7]~0_combout\,
	datad => \bloco|RAM1|RAM_OUT[7]~1_combout\,
	combout => \bloco|RAM1|RAM_OUT[7]~2_combout\);

-- Location: CLKCTRL_G11
\bloco|RAM1|RAM_OUT[7]~2clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bloco|RAM1|RAM_OUT[7]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\);

-- Location: LCCOMB_X27_Y34_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M4K_X26_Y34
\bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bloco_dados:bloco|RAM:RAM1|altsyncram:altsyncram_component|altsyncram_5pa1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	clk0 => \clk_master~clkctrl_outclk\,
	portadatain => \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \bloco|RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y34_N4
\bloco|RAM1|RAM_OUT[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT\(0) = (GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\bloco|RAM1|RAM_OUT\(0))) # (!GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\bloco|RAM1|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RAM1|RAM_OUT\(0),
	datac => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \bloco|RAM1|altsyncram_component|auto_generated|q_a\(0),
	combout => \bloco|RAM1|RAM_OUT\(0));

-- Location: LCCOMB_X27_Y34_N20
\bloco|RAM1|RAM_OUT[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT\(1) = (GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\bloco|RAM1|RAM_OUT\(1))) # (!GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\bloco|RAM1|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|RAM1|RAM_OUT\(1),
	datac => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \bloco|RAM1|altsyncram_component|auto_generated|q_a\(1),
	combout => \bloco|RAM1|RAM_OUT\(1));

-- Location: LCCOMB_X27_Y34_N14
\bloco|RAM1|RAM_OUT[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT\(2) = (GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\bloco|RAM1|RAM_OUT\(2))) # (!GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\bloco|RAM1|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RAM1|RAM_OUT\(2),
	datac => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \bloco|RAM1|altsyncram_component|auto_generated|q_a\(2),
	combout => \bloco|RAM1|RAM_OUT\(2));

-- Location: LCCOMB_X25_Y34_N18
\bloco|RAM1|RAM_OUT[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT\(3) = (GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\bloco|RAM1|RAM_OUT\(3))) # (!GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\bloco|RAM1|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RAM1|RAM_OUT\(3),
	datac => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \bloco|RAM1|altsyncram_component|auto_generated|q_a\(3),
	combout => \bloco|RAM1|RAM_OUT\(3));

-- Location: LCCOMB_X25_Y34_N24
\bloco|RAM1|RAM_OUT[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT\(4) = (GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\bloco|RAM1|RAM_OUT\(4))) # (!GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\bloco|RAM1|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|RAM1|RAM_OUT\(4),
	datac => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \bloco|RAM1|altsyncram_component|auto_generated|q_a\(4),
	combout => \bloco|RAM1|RAM_OUT\(4));

-- Location: LCCOMB_X25_Y34_N14
\bloco|RAM1|RAM_OUT[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT\(5) = (GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\bloco|RAM1|RAM_OUT\(5))) # (!GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\bloco|RAM1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RAM1|RAM_OUT\(5),
	datac => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \bloco|RAM1|altsyncram_component|auto_generated|q_a\(5),
	combout => \bloco|RAM1|RAM_OUT\(5));

-- Location: LCCOMB_X25_Y34_N8
\bloco|RAM1|RAM_OUT[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT\(6) = (GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\bloco|RAM1|RAM_OUT\(6))) # (!GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\bloco|RAM1|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RAM1|RAM_OUT\(6),
	datac => \bloco|RAM1|altsyncram_component|auto_generated|q_a\(6),
	datad => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	combout => \bloco|RAM1|RAM_OUT\(6));

-- Location: LCCOMB_X25_Y34_N22
\bloco|RAM1|RAM_OUT[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco|RAM1|RAM_OUT\(7) = (GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\bloco|RAM1|RAM_OUT\(7))) # (!GLOBAL(\bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\bloco|RAM1|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|RAM1|RAM_OUT\(7),
	datac => \bloco|RAM1|altsyncram_component|auto_generated|q_a\(7),
	datad => \bloco|RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	combout => \bloco|RAM1|RAM_OUT\(7));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[0]~I\ : cycloneii_io
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
	datain => \bloco|RegPC|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[1]~I\ : cycloneii_io
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
	datain => \bloco|RegPC|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(1));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[2]~I\ : cycloneii_io
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
	datain => \bloco|RegPC|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(2));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[3]~I\ : cycloneii_io
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
	datain => \bloco|RegPC|temp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[4]~I\ : cycloneii_io
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
	datain => \bloco|RegPC|temp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(4));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[5]~I\ : cycloneii_io
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
	datain => \bloco|RegPC|temp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(5));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[6]~I\ : cycloneii_io
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
	datain => \bloco|RegPC|temp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(6));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[7]~I\ : cycloneii_io
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
	datain => \bloco|RegPC|temp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(7));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[7]~I\ : cycloneii_io
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
	padio => ww_B(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAM_IN[0]~I\ : cycloneii_io
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
	padio => ww_RAM_IN(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAM_IN[1]~I\ : cycloneii_io
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
	padio => ww_RAM_IN(1));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAM_IN[2]~I\ : cycloneii_io
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
	padio => ww_RAM_IN(2));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAM_IN[3]~I\ : cycloneii_io
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
	padio => ww_RAM_IN(3));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAM_IN[4]~I\ : cycloneii_io
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
	padio => ww_RAM_IN(4));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAM_IN[5]~I\ : cycloneii_io
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
	padio => ww_RAM_IN(5));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAM_IN[6]~I\ : cycloneii_io
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
	padio => ww_RAM_IN(6));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RAM_IN[7]~I\ : cycloneii_io
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
	padio => ww_RAM_IN(7));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAM_OUT[0]~I\ : cycloneii_io
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
	datain => \bloco|RAM1|RAM_OUT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAM_OUT(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAM_OUT[1]~I\ : cycloneii_io
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
	datain => \bloco|RAM1|RAM_OUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAM_OUT(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAM_OUT[2]~I\ : cycloneii_io
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
	datain => \bloco|RAM1|RAM_OUT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAM_OUT(2));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAM_OUT[3]~I\ : cycloneii_io
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
	datain => \bloco|RAM1|RAM_OUT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAM_OUT(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAM_OUT[4]~I\ : cycloneii_io
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
	datain => \bloco|RAM1|RAM_OUT\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAM_OUT(4));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAM_OUT[5]~I\ : cycloneii_io
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
	datain => \bloco|RAM1|RAM_OUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAM_OUT(5));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAM_OUT[6]~I\ : cycloneii_io
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
	datain => \bloco|RAM1|RAM_OUT\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAM_OUT(6));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAM_OUT[7]~I\ : cycloneii_io
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
	datain => \bloco|RAM1|RAM_OUT\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAM_OUT(7));
END structure;


