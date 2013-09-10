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

-- DATE "09/06/2013 20:27:20"

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

ENTITY 	bloco_dados IS
    PORT (
	Z : OUT std_logic;
	N : OUT std_logic;
	ULA_ctrl : IN std_logic_vector(3 DOWNTO 0);
	mRom_en : IN std_logic;
	mRam_en : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	A_en : IN std_logic;
	A_sel : IN std_logic_vector(1 DOWNTO 0);
	B_en : IN std_logic;
	PC_en : IN std_logic;
	IR_en : IN std_logic;
	ULA_en : IN std_logic;
	Buss_C_ctrl : IN std_logic;
	Buss_D_ctrl : IN std_logic;
	RAM_OUT : OUT std_logic_vector(7 DOWNTO 0);
	RAM_IN : IN std_logic_vector(7 DOWNTO 0);
	IR : OUT std_logic_vector(7 DOWNTO 0);
	teste_ULA : OUT std_logic_vector(7 DOWNTO 0);
	teste_C : OUT std_logic_vector(7 DOWNTO 0);
	teste_D : OUT std_logic_vector(7 DOWNTO 0)
	);
END bloco_dados;

-- Design Ports Information
-- Z	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_ULA[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_ULA[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_ULA[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_ULA[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_ULA[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_ULA[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_ULA[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_ULA[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_C[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_C[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_C[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_C[3]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_C[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_C[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_C[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_C[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_D[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_D[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_D[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_D[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_D[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_D[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_D[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_D[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_en	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_en	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_en	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_sel[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_sel[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_IN[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_en	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_IN[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_IN[2]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_IN[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_IN[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_IN[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_IN[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_IN[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_en	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_ctrl[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buss_C_ctrl	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buss_D_ctrl	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mRam_en	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mRom_en	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bloco_dados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_ULA_ctrl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mRom_en : std_logic;
SIGNAL ww_mRam_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A_en : std_logic;
SIGNAL ww_A_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B_en : std_logic;
SIGNAL ww_PC_en : std_logic;
SIGNAL ww_IR_en : std_logic;
SIGNAL ww_ULA_en : std_logic;
SIGNAL ww_Buss_C_ctrl : std_logic;
SIGNAL ww_Buss_D_ctrl : std_logic;
SIGNAL ww_RAM_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAM_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_teste_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_teste_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_teste_D : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULA_en~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULA1|Mux25~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|RAM_OUT[7]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULA1|Add0~9_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\ : std_logic;
SIGNAL \ULA1|Mux3~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~6_combout\ : std_logic;
SIGNAL \ULA1|Mux2~5_combout\ : std_logic;
SIGNAL \ULA1|Mux5~0_combout\ : std_logic;
SIGNAL \ULA1|Mux4~0_combout\ : std_logic;
SIGNAL \ULA1|Mux4~2_combout\ : std_logic;
SIGNAL \RAM_IN[1]~input_o\ : std_logic;
SIGNAL \RAM_IN[3]~input_o\ : std_logic;
SIGNAL \RAM_IN[4]~input_o\ : std_logic;
SIGNAL \RAM_IN[6]~input_o\ : std_logic;
SIGNAL \mRam_en~input_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \RAM_OUT[0]~output_o\ : std_logic;
SIGNAL \RAM_OUT[1]~output_o\ : std_logic;
SIGNAL \RAM_OUT[2]~output_o\ : std_logic;
SIGNAL \RAM_OUT[3]~output_o\ : std_logic;
SIGNAL \RAM_OUT[4]~output_o\ : std_logic;
SIGNAL \RAM_OUT[5]~output_o\ : std_logic;
SIGNAL \RAM_OUT[6]~output_o\ : std_logic;
SIGNAL \RAM_OUT[7]~output_o\ : std_logic;
SIGNAL \IR[0]~output_o\ : std_logic;
SIGNAL \IR[1]~output_o\ : std_logic;
SIGNAL \IR[2]~output_o\ : std_logic;
SIGNAL \IR[3]~output_o\ : std_logic;
SIGNAL \IR[4]~output_o\ : std_logic;
SIGNAL \IR[5]~output_o\ : std_logic;
SIGNAL \IR[6]~output_o\ : std_logic;
SIGNAL \IR[7]~output_o\ : std_logic;
SIGNAL \teste_ULA[0]~output_o\ : std_logic;
SIGNAL \teste_ULA[1]~output_o\ : std_logic;
SIGNAL \teste_ULA[2]~output_o\ : std_logic;
SIGNAL \teste_ULA[3]~output_o\ : std_logic;
SIGNAL \teste_ULA[4]~output_o\ : std_logic;
SIGNAL \teste_ULA[5]~output_o\ : std_logic;
SIGNAL \teste_ULA[6]~output_o\ : std_logic;
SIGNAL \teste_ULA[7]~output_o\ : std_logic;
SIGNAL \teste_C[0]~output_o\ : std_logic;
SIGNAL \teste_C[1]~output_o\ : std_logic;
SIGNAL \teste_C[2]~output_o\ : std_logic;
SIGNAL \teste_C[3]~output_o\ : std_logic;
SIGNAL \teste_C[4]~output_o\ : std_logic;
SIGNAL \teste_C[5]~output_o\ : std_logic;
SIGNAL \teste_C[6]~output_o\ : std_logic;
SIGNAL \teste_C[7]~output_o\ : std_logic;
SIGNAL \teste_D[0]~output_o\ : std_logic;
SIGNAL \teste_D[1]~output_o\ : std_logic;
SIGNAL \teste_D[2]~output_o\ : std_logic;
SIGNAL \teste_D[3]~output_o\ : std_logic;
SIGNAL \teste_D[4]~output_o\ : std_logic;
SIGNAL \teste_D[5]~output_o\ : std_logic;
SIGNAL \teste_D[6]~output_o\ : std_logic;
SIGNAL \teste_D[7]~output_o\ : std_logic;
SIGNAL \ULA_en~input_o\ : std_logic;
SIGNAL \ULA_en~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ULA_ctrl[2]~input_o\ : std_logic;
SIGNAL \ULA_ctrl[1]~input_o\ : std_logic;
SIGNAL \Buss_D_ctrl~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \B_en~input_o\ : std_logic;
SIGNAL \signed_D[4]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~2_combout\ : std_logic;
SIGNAL \Buss_C_ctrl~input_o\ : std_logic;
SIGNAL \A_sel[1]~input_o\ : std_logic;
SIGNAL \RegA|temp[0]~2_combout\ : std_logic;
SIGNAL \ULA_ctrl[3]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~1_combout\ : std_logic;
SIGNAL \ULA1|Mux2~1_combout\ : std_logic;
SIGNAL \ULA_ctrl[0]~input_o\ : std_logic;
SIGNAL \ULA1|Mux2~4_combout\ : std_logic;
SIGNAL \ULA1|Mux2~2_combout\ : std_logic;
SIGNAL \ULA1|Mux2~3_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \mRom_en~input_o\ : std_logic;
SIGNAL \IR_en~input_o\ : std_logic;
SIGNAL \ULA1|Mux2~0_combout\ : std_logic;
SIGNAL \PC_en~input_o\ : std_logic;
SIGNAL \A_sel[0]~input_o\ : std_logic;
SIGNAL \ULA1|Mux25~0_combout\ : std_logic;
SIGNAL \ULA1|Mux25~0clkctrl_outclk\ : std_logic;
SIGNAL \RAM_IN[7]~input_o\ : std_logic;
SIGNAL \muxA[7]~14_combout\ : std_logic;
SIGNAL \muxA[7]~15_combout\ : std_logic;
SIGNAL \A_en~input_o\ : std_logic;
SIGNAL \ULA1|Mux0~0_combout\ : std_logic;
SIGNAL \signed_D[2]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~4_combout\ : std_logic;
SIGNAL \signed_C[1]~3_combout\ : std_logic;
SIGNAL \RAM_IN[0]~input_o\ : std_logic;
SIGNAL \muxA[0]~0_combout\ : std_logic;
SIGNAL \muxA[6]~12_combout\ : std_logic;
SIGNAL \RAM_IN[5]~input_o\ : std_logic;
SIGNAL \muxA[5]~10_combout\ : std_logic;
SIGNAL \muxA[5]~11_combout\ : std_logic;
SIGNAL \muxA[4]~8_combout\ : std_logic;
SIGNAL \muxA[4]~9_combout\ : std_logic;
SIGNAL \RAM_IN[2]~input_o\ : std_logic;
SIGNAL \muxA[2]~4_combout\ : std_logic;
SIGNAL \muxA[2]~5_combout\ : std_logic;
SIGNAL \muxA[6]~13_combout\ : std_logic;
SIGNAL \ULA1|Mux1~0_combout\ : std_logic;
SIGNAL \signed_D[6]~7_combout\ : std_logic;
SIGNAL \signed_C[6]~7_combout\ : std_logic;
SIGNAL \ULA1|Mux1~1_combout\ : std_logic;
SIGNAL \signed_C[5]~5_combout\ : std_logic;
SIGNAL \signed_D[1]~3_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ : std_logic;
SIGNAL \signed_C[7]~6_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ : std_logic;
SIGNAL \signed_C[2]~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ : std_logic;
SIGNAL \signed_C[4]~0_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\ : std_logic;
SIGNAL \ULA1|Mux1~2_combout\ : std_logic;
SIGNAL \ULA1|Mux1~3_combout\ : std_logic;
SIGNAL \ULA1|Mux1~4_combout\ : std_logic;
SIGNAL \ULA1|Mux1~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~25_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~26_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_combout\ : std_logic;
SIGNAL \signed_D[5]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~20_combout\ : std_logic;
SIGNAL \ULA1|Add0~21_combout\ : std_logic;
SIGNAL \ULA1|Mux2~7_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\ : std_logic;
SIGNAL \ULA1|Mux2~8_combout\ : std_logic;
SIGNAL \ULA1|Mux2~6_combout\ : std_logic;
SIGNAL \ULA1|Mux2~9_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\ : std_logic;
SIGNAL \ULA1|Mux2~10_combout\ : std_logic;
SIGNAL \ULA1|Add0~23_combout\ : std_logic;
SIGNAL \muxA[0]~1_combout\ : std_logic;
SIGNAL \signed_C[0]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~8_cout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~12\ : std_logic;
SIGNAL \ULA1|Add0~13_combout\ : std_logic;
SIGNAL \ULA1|Mux5~1_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\ : std_logic;
SIGNAL \ULA1|Mux5~2_combout\ : std_logic;
SIGNAL \ULA1|Mux5~3_combout\ : std_logic;
SIGNAL \ULA1|Mux5~4_combout\ : std_logic;
SIGNAL \ULA1|Mux5~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~32_combout\ : std_logic;
SIGNAL \signed_D[7]~6_combout\ : std_logic;
SIGNAL \ULA1|Mux0~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\ : std_logic;
SIGNAL \ULA1|Mux0~3_combout\ : std_logic;
SIGNAL \ULA1|Mux0~1_combout\ : std_logic;
SIGNAL \ULA1|Mux0~4_combout\ : std_logic;
SIGNAL \ULA1|Mux0~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~24_combout\ : std_logic;
SIGNAL \ULA1|Add0~27\ : std_logic;
SIGNAL \ULA1|Add0~28_combout\ : std_logic;
SIGNAL \ULA1|Add0~30_combout\ : std_logic;
SIGNAL \ULA1|N~combout\ : std_logic;
SIGNAL \RegA|temp[0]~0_combout\ : std_logic;
SIGNAL \RAM1|RAM_OUT[7]~0_combout\ : std_logic;
SIGNAL \RegA|temp[0]~1_combout\ : std_logic;
SIGNAL \muxA[1]~2_combout\ : std_logic;
SIGNAL \muxA[1]~3_combout\ : std_logic;
SIGNAL \ULA1|Mux6~0_combout\ : std_logic;
SIGNAL \ULA1|Mux6~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\ : std_logic;
SIGNAL \ULA1|Mux6~3_combout\ : std_logic;
SIGNAL \ULA1|Mux6~1_combout\ : std_logic;
SIGNAL \ULA1|Mux6~4_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Mux6~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~31_combout\ : std_logic;
SIGNAL \signed_D[0]~4_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Mux24~0_combout\ : std_logic;
SIGNAL \ULA1|Mux24~1_combout\ : std_logic;
SIGNAL \ULA1|Mux24~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\ : std_logic;
SIGNAL \ULA1|Mux24~3_combout\ : std_logic;
SIGNAL \ULA1|Mux24~4_combout\ : std_logic;
SIGNAL \ULA1|Mux24~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~35_combout\ : std_logic;
SIGNAL \signed_D[3]~1_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\ : std_logic;
SIGNAL \ULA1|Mux4~3_combout\ : std_logic;
SIGNAL \ULA1|Mux4~1_combout\ : std_logic;
SIGNAL \ULA1|Mux4~4_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\ : std_logic;
SIGNAL \ULA1|Mux4~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~15_combout\ : std_logic;
SIGNAL \ULA1|Add0~33_combout\ : std_logic;
SIGNAL \muxA[3]~6_combout\ : std_logic;
SIGNAL \muxA[3]~7_combout\ : std_logic;
SIGNAL \signed_C[3]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~16\ : std_logic;
SIGNAL \ULA1|Add0~17_combout\ : std_logic;
SIGNAL \ULA1|Mux3~1_combout\ : std_logic;
SIGNAL \ULA1|Mux3~2_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\ : std_logic;
SIGNAL \ULA1|Mux3~3_combout\ : std_logic;
SIGNAL \ULA1|Mux3~4_combout\ : std_logic;
SIGNAL \ULA1|Mux3~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~19_combout\ : std_logic;
SIGNAL \ULA1|Equal0~1_combout\ : std_logic;
SIGNAL \ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \ULA1|Equal0~2_combout\ : std_logic;
SIGNAL \ULA1|Z~combout\ : std_logic;
SIGNAL \RAM1|RAM_OUT[7]~1_combout\ : std_logic;
SIGNAL \RAM1|RAM_OUT[7]~2_combout\ : std_logic;
SIGNAL \RAM1|RAM_OUT[7]~2clkctrl_outclk\ : std_logic;
SIGNAL \RegPC|temp[3]~feeder_combout\ : std_logic;
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegB|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegIR|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegPC|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegA|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|temp_mult\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ULA1|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|RAM_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

Z <= ww_Z;
N <= ww_N;
ww_ULA_ctrl <= ULA_ctrl;
ww_mRom_en <= mRom_en;
ww_mRam_en <= mRam_en;
ww_clk <= clk;
ww_reset <= reset;
ww_A_en <= A_en;
ww_A_sel <= A_sel;
ww_B_en <= B_en;
ww_PC_en <= PC_en;
ww_IR_en <= IR_en;
ww_ULA_en <= ULA_en;
ww_Buss_C_ctrl <= Buss_C_ctrl;
ww_Buss_D_ctrl <= Buss_D_ctrl;
RAM_OUT <= ww_RAM_OUT;
ww_RAM_IN <= RAM_IN;
IR <= ww_IR;
teste_ULA <= ww_teste_ULA;
teste_C <= ww_teste_C;
teste_D <= ww_teste_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \RegA|temp\(7) & \RegA|temp\(6) & \RegA|temp\(5) & \RegA|temp\(4) & \RegA|temp\(3) & \RegA|temp\(2) & 
\RegA|temp\(1) & \RegA|temp\(0));

\RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ULA1|N~combout\ & \ULA1|saida\(6) & \ULA1|saida\(5) & \ULA1|saida\(4) & \ULA1|saida\(3) & \ULA1|saida\(2) & \ULA1|saida\(1) & \ULA1|saida\(0));

\RAM1|altsyncram_component|auto_generated|q_a\(0) <= \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM1|altsyncram_component|auto_generated|q_a\(1) <= \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM1|altsyncram_component|auto_generated|q_a\(2) <= \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAM1|altsyncram_component|auto_generated|q_a\(3) <= \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RAM1|altsyncram_component|auto_generated|q_a\(4) <= \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RAM1|altsyncram_component|auto_generated|q_a\(5) <= \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RAM1|altsyncram_component|auto_generated|q_a\(6) <= \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RAM1|altsyncram_component|auto_generated|q_a\(7) <= \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ULA1|N~combout\ & \ULA1|saida\(6) & \ULA1|saida\(5) & \ULA1|saida\(4) & \ULA1|saida\(3) & \ULA1|saida\(2) & \ULA1|saida\(1) & \ULA1|saida\(0));

\RegIR|temp\(0) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RegIR|temp\(1) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RegIR|temp\(2) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RegIR|temp\(3) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RegIR|temp\(4) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RegIR|temp\(5) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RegIR|temp\(6) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RegIR|temp\(7) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\ULA_en~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ULA_en~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\ULA1|Mux25~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ULA1|Mux25~0_combout\);

\RAM1|RAM_OUT[7]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM1|RAM_OUT[7]~2_combout\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: LCCOMB_X31_Y32_N10
\ULA1|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_combout\ = (\ULA1|Add0~6_combout\ & ((\signed_C[0]~4_combout\ & (\ULA1|Add0~8_cout\ & VCC)) # (!\signed_C[0]~4_combout\ & (!\ULA1|Add0~8_cout\)))) # (!\ULA1|Add0~6_combout\ & ((\signed_C[0]~4_combout\ & (!\ULA1|Add0~8_cout\)) # 
-- (!\signed_C[0]~4_combout\ & ((\ULA1|Add0~8_cout\) # (GND)))))
-- \ULA1|Add0~10\ = CARRY((\ULA1|Add0~6_combout\ & (!\signed_C[0]~4_combout\ & !\ULA1|Add0~8_cout\)) # (!\ULA1|Add0~6_combout\ & ((!\ULA1|Add0~8_cout\) # (!\signed_C[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~6_combout\,
	datab => \signed_C[0]~4_combout\,
	datad => VCC,
	cin => \ULA1|Add0~8_cout\,
	combout => \ULA1|Add0~9_combout\,
	cout => \ULA1|Add0~10\);

-- Location: LCCOMB_X28_Y30_N14
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) $ (VCC))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) & VCC))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4),
	datad => VCC,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\);

-- Location: LCCOMB_X30_Y30_N4
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) $ (VCC))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & VCC))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2),
	datad => VCC,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\);

-- Location: LCCOMB_X30_Y30_N6
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\) # (GND)))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\ = CARRY((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~1\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\);

-- Location: LCCOMB_X29_Y30_N4
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) $ 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[0]~0_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\);

-- Location: LCCOMB_X29_Y30_N8
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~0_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\);

-- Location: LCCOMB_X31_Y30_N2
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & (\signed_D[7]~6_combout\ $ (VCC))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & (\signed_D[7]~6_combout\ & VCC))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & \signed_D[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6),
	datab => \signed_D[7]~6_combout\,
	datad => VCC,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\);

-- Location: LCCOMB_X31_Y30_N4
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\) # (GND)))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ = CARRY((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\);

-- Location: LCCOMB_X31_Y30_N6
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ $ (GND))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) & ((GND) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\)))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\ = CARRY((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\);

-- Location: LCCOMB_X31_Y30_N8
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ = !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\ = CARRY(!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\);

-- Location: LCCOMB_X31_Y30_N10
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ = !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\);

-- Location: LCCOMB_X28_Y30_N16
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\) # (GND)))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\ = CARRY((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[0]~1\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\);

-- Location: LCCOMB_X28_Y30_N20
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ & VCC)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\) # (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\);

-- Location: LCCOMB_X28_Y30_N22
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) $ 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~7\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\);

-- Location: LCCOMB_X28_Y30_N24
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\ & VCC)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\) # (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~9\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\);

-- Location: LCCOMB_X30_Y30_N12
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) $ 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\);

-- Location: LCCOMB_X30_Y30_N20
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) $ 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\);

-- Location: LCCOMB_X30_Y30_N22
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\ & VCC)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\) # (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~17\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\);

-- Location: LCCOMB_X30_Y30_N24
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~19\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\);

-- Location: LCCOMB_X29_Y30_N12
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~8_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\);

-- Location: LCCOMB_X29_Y30_N14
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\ & VCC)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\) # 
-- (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ & !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\ & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[3]~6_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~13\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\);

-- Location: LCCOMB_X32_Y31_N10
\ULA1|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux3~0_combout\ = (\ULA_ctrl[3]~input_o\) # ((\Buss_C_ctrl~input_o\ & (\RegA|temp\(4))) # (!\Buss_C_ctrl~input_o\ & ((\RegPC|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|temp\(4),
	datab => \RegPC|temp\(4),
	datac => \Buss_C_ctrl~input_o\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \ULA1|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y32_N30
\ULA1|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~3_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \signed_D[3]~1_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((!\signed_D[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \signed_D[3]~1_combout\,
	combout => \ULA1|Add0~3_combout\);

-- Location: LCCOMB_X31_Y32_N6
\ULA1|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \signed_D[1]~3_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((!\signed_D[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \signed_D[1]~3_combout\,
	combout => \ULA1|Add0~5_combout\);

-- Location: LCCOMB_X31_Y32_N26
\ULA1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~6_combout\ = (\ULA_ctrl[2]~input_o\ & ((\signed_D[0]~4_combout\) # (\ULA_ctrl[1]~input_o\))) # (!\ULA_ctrl[2]~input_o\ & (!\signed_D[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \signed_D[0]~4_combout\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \ULA1|Add0~6_combout\);

-- Location: LCCOMB_X32_Y30_N14
\ULA1|Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~5_combout\ = (\ULA_ctrl[3]~input_o\) # ((\Buss_C_ctrl~input_o\ & ((\RegA|temp\(5)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegPC|temp\(5),
	datad => \RegA|temp\(5),
	combout => \ULA1|Mux2~5_combout\);

-- Location: LCCOMB_X32_Y30_N12
\ULA1|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux5~0_combout\ = (\ULA_ctrl[3]~input_o\) # ((\Buss_C_ctrl~input_o\ & ((\RegA|temp\(2)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegPC|temp\(2),
	datad => \RegA|temp\(2),
	combout => \ULA1|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y31_N18
\ULA1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux4~0_combout\ = (\ULA_ctrl[3]~input_o\) # ((\Buss_C_ctrl~input_o\ & ((\RegA|temp\(3)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|temp\(3),
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegA|temp\(3),
	datad => \ULA_ctrl[3]~input_o\,
	combout => \ULA1|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y29_N12
\ULA1|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux4~2_combout\ = (\ULA1|Mux2~2_combout\ & (\signed_D[3]~1_combout\ & ((\signed_C[3]~1_combout\) # (!\ULA1|Mux2~3_combout\)))) # (!\ULA1|Mux2~2_combout\ & (((\signed_C[3]~1_combout\) # (\ULA1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[3]~1_combout\,
	datab => \signed_C[3]~1_combout\,
	datac => \ULA1|Mux2~3_combout\,
	datad => \ULA1|Mux2~2_combout\,
	combout => \ULA1|Mux4~2_combout\);

-- Location: LCCOMB_X31_Y31_N24
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ 
-- (((\signed_C[2]~2_combout\))))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & (!\signed_C[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\,
	datac => \signed_C[1]~3_combout\,
	datad => \signed_C[2]~2_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2));

-- Location: LCCOMB_X31_Y30_N20
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) = (\signed_D[0]~4_combout\ & ((\signed_D[1]~3_combout\ $ (\signed_C[3]~1_combout\)))) # (!\signed_D[0]~4_combout\ & (!\signed_C[2]~2_combout\ & (\signed_D[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[2]~2_combout\,
	datab => \signed_D[0]~4_combout\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_C[3]~1_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3));

-- Location: LCCOMB_X31_Y30_N22
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) = (\signed_D[1]~3_combout\ & ((!\signed_C[7]~6_combout\))) # (!\signed_D[1]~3_combout\ & (\signed_D[0]~4_combout\ & \signed_C[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signed_D[0]~4_combout\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_C[7]~6_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8));

-- Location: LCCOMB_X31_Y30_N12
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) = (\signed_D[0]~4_combout\ & (\signed_D[1]~3_combout\ $ (((\signed_C[7]~6_combout\))))) # (!\signed_D[0]~4_combout\ & (\signed_D[1]~3_combout\ & (!\signed_C[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[1]~3_combout\,
	datab => \signed_D[0]~4_combout\,
	datac => \signed_C[6]~7_combout\,
	datad => \signed_C[7]~6_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7));

-- Location: LCCOMB_X31_Y30_N26
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) = (\signed_D[0]~4_combout\ & (\signed_C[6]~7_combout\ $ ((\signed_D[1]~3_combout\)))) # (!\signed_D[0]~4_combout\ & (((\signed_D[1]~3_combout\ & !\signed_C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[6]~7_combout\,
	datab => \signed_D[0]~4_combout\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_C[5]~5_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6));

-- Location: LCCOMB_X28_Y30_N6
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (\signed_C[5]~5_combout\ $ 
-- (((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (((!\signed_C[4]~0_combout\ & 
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[5]~5_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\,
	datac => \signed_C[4]~0_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5));

-- Location: LCCOMB_X28_Y30_N4
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (\signed_C[6]~7_combout\ $ 
-- (((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (((!\signed_C[5]~5_combout\ & 
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[6]~7_combout\,
	datab => \signed_C[5]~5_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6));

-- Location: LCCOMB_X32_Y31_N30
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ 
-- (\signed_C[5]~5_combout\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (!\signed_C[4]~0_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[4]~0_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datad => \signed_C[5]~5_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5));

-- Location: LCCOMB_X28_Y30_N10
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & ((\signed_C[4]~0_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (!\signed_C[3]~1_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[3]~1_combout\,
	datab => \signed_C[4]~0_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4));

-- Location: LCCOMB_X30_Y31_N14
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) = (\signed_C[7]~6_combout\ & (!\signed_D[5]~5_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (\signed_D[4]~0_combout\)))) # 
-- (!\signed_C[7]~6_combout\ & (\signed_D[5]~5_combout\ $ (((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \signed_D[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \signed_D[4]~0_combout\,
	datac => \signed_D[5]~5_combout\,
	datad => \signed_C[7]~6_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8));

-- Location: LCCOMB_X29_Y31_N30
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_D[7]~6_combout\ $ 
-- (\signed_C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	datac => \signed_C[5]~5_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5),
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X30_Y31_N12
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_D[7]~6_combout\ $ 
-- (\signed_C[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_C[4]~0_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4),
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X30_Y31_N30
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_D[7]~6_combout\ $ 
-- (\signed_C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_C[3]~1_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3),
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X31_Y31_N2
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ 
-- ((\signed_C[3]~1_combout\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\signed_C[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\,
	datac => \signed_C[3]~1_combout\,
	datad => \signed_C[2]~2_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3));

-- Location: LCCOMB_X29_Y31_N16
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_C[7]~6_combout\ $ 
-- (\signed_D[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[7]~6_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	datac => \signed_D[7]~6_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7),
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7));

-- Location: LCCOMB_X29_Y31_N26
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_C[7]~6_combout\ $ 
-- (\signed_D[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[7]~6_combout\,
	datab => \signed_D[7]~6_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8),
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8));

-- Location: LCCOMB_X29_Y31_N6
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5) = (\signed_C[4]~0_combout\ & (((\signed_D[6]~7_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\)))) # (!\signed_C[4]~0_combout\ & 
-- (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_D[6]~7_combout\,
	datac => \signed_C[4]~0_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5));

-- Location: LCCOMB_X30_Y31_N2
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4) = (\signed_C[3]~1_combout\ & (((\signed_D[6]~7_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\)))) # (!\signed_C[3]~1_combout\ & 
-- (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_C[3]~1_combout\,
	datac => \signed_D[6]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4));

-- Location: LCCOMB_X30_Y31_N20
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3) = (\signed_C[2]~2_combout\ & (((\signed_D[6]~7_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\)))) # (!\signed_C[2]~2_combout\ & 
-- (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_D[6]~7_combout\,
	datac => \signed_C[2]~2_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3));

-- Location: LCCOMB_X29_Y31_N20
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7) = (\signed_C[6]~7_combout\ & (\signed_D[6]~7_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\)))) # (!\signed_C[6]~7_combout\ & 
-- (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[6]~7_combout\,
	datab => \signed_D[6]~7_combout\,
	datac => \signed_D[7]~6_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7));

-- Location: LCCOMB_X29_Y31_N14
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8) = (\signed_C[7]~6_combout\ & (((\signed_D[6]~7_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\)))) # (!\signed_C[7]~6_combout\ & 
-- (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[7]~6_combout\,
	datab => \signed_D[7]~6_combout\,
	datac => \signed_D[6]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8));

-- Location: LCCOMB_X28_Y29_N22
\ULA1|temp_mult[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(7) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp_mult\(7),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~14_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(7));

-- Location: LCCOMB_X28_Y29_N8
\ULA1|temp_mult[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(6) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|temp_mult\(6),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[6]~12_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(6));

-- Location: IOIBUF_X36_Y41_N8
\RAM_IN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAM_IN(1),
	o => \RAM_IN[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\RAM_IN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAM_IN(3),
	o => \RAM_IN[3]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\RAM_IN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAM_IN(4),
	o => \RAM_IN[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\RAM_IN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAM_IN(6),
	o => \RAM_IN[6]~input_o\);

-- Location: IOIBUF_X52_Y32_N15
\mRam_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mRam_en,
	o => \mRam_en~input_o\);

-- Location: IOOBUF_X38_Y41_N2
\Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Z~combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\N~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|N~combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\RAM_OUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|RAM_OUT\(0),
	devoe => ww_devoe,
	o => \RAM_OUT[0]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\RAM_OUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|RAM_OUT\(1),
	devoe => ww_devoe,
	o => \RAM_OUT[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\RAM_OUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|RAM_OUT\(2),
	devoe => ww_devoe,
	o => \RAM_OUT[2]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\RAM_OUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|RAM_OUT\(3),
	devoe => ww_devoe,
	o => \RAM_OUT[3]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\RAM_OUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|RAM_OUT\(4),
	devoe => ww_devoe,
	o => \RAM_OUT[4]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\RAM_OUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|RAM_OUT\(5),
	devoe => ww_devoe,
	o => \RAM_OUT[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\RAM_OUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|RAM_OUT\(6),
	devoe => ww_devoe,
	o => \RAM_OUT[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\RAM_OUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|RAM_OUT\(7),
	devoe => ww_devoe,
	o => \RAM_OUT[7]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\IR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegIR|temp\(0),
	devoe => ww_devoe,
	o => \IR[0]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\IR[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegIR|temp\(1),
	devoe => ww_devoe,
	o => \IR[1]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\IR[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegIR|temp\(2),
	devoe => ww_devoe,
	o => \IR[2]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\IR[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegIR|temp\(3),
	devoe => ww_devoe,
	o => \IR[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\IR[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegIR|temp\(4),
	devoe => ww_devoe,
	o => \IR[4]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\IR[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegIR|temp\(5),
	devoe => ww_devoe,
	o => \IR[5]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\IR[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegIR|temp\(6),
	devoe => ww_devoe,
	o => \IR[6]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\IR[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegIR|temp\(7),
	devoe => ww_devoe,
	o => \IR[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\teste_ULA[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|temp\(0),
	devoe => ww_devoe,
	o => \teste_ULA[0]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\teste_ULA[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|temp\(1),
	devoe => ww_devoe,
	o => \teste_ULA[1]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\teste_ULA[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|temp\(2),
	devoe => ww_devoe,
	o => \teste_ULA[2]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\teste_ULA[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|temp\(3),
	devoe => ww_devoe,
	o => \teste_ULA[3]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\teste_ULA[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|temp\(4),
	devoe => ww_devoe,
	o => \teste_ULA[4]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\teste_ULA[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|temp\(5),
	devoe => ww_devoe,
	o => \teste_ULA[5]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\teste_ULA[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|temp\(6),
	devoe => ww_devoe,
	o => \teste_ULA[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\teste_ULA[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPC|temp\(7),
	devoe => ww_devoe,
	o => \teste_ULA[7]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\teste_C[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegA|temp\(0),
	devoe => ww_devoe,
	o => \teste_C[0]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\teste_C[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegA|temp\(1),
	devoe => ww_devoe,
	o => \teste_C[1]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\teste_C[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegA|temp\(2),
	devoe => ww_devoe,
	o => \teste_C[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\teste_C[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegA|temp\(3),
	devoe => ww_devoe,
	o => \teste_C[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\teste_C[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegA|temp\(4),
	devoe => ww_devoe,
	o => \teste_C[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\teste_C[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegA|temp\(5),
	devoe => ww_devoe,
	o => \teste_C[5]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\teste_C[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegA|temp\(6),
	devoe => ww_devoe,
	o => \teste_C[6]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\teste_C[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegA|temp\(7),
	devoe => ww_devoe,
	o => \teste_C[7]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\teste_D[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegB|temp\(0),
	devoe => ww_devoe,
	o => \teste_D[0]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\teste_D[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegB|temp\(1),
	devoe => ww_devoe,
	o => \teste_D[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\teste_D[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegB|temp\(2),
	devoe => ww_devoe,
	o => \teste_D[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\teste_D[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegB|temp\(3),
	devoe => ww_devoe,
	o => \teste_D[3]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\teste_D[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegB|temp\(4),
	devoe => ww_devoe,
	o => \teste_D[4]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\teste_D[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegB|temp\(5),
	devoe => ww_devoe,
	o => \teste_D[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\teste_D[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegB|temp\(6),
	devoe => ww_devoe,
	o => \teste_D[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\teste_D[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegB|temp\(7),
	devoe => ww_devoe,
	o => \teste_D[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\ULA_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_en,
	o => \ULA_en~input_o\);

-- Location: CLKCTRL_G19
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

-- Location: IOIBUF_X27_Y0_N1
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\ULA_ctrl[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(2),
	o => \ULA_ctrl[2]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\ULA_ctrl[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(1),
	o => \ULA_ctrl[1]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\Buss_D_ctrl~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Buss_D_ctrl,
	o => \Buss_D_ctrl~input_o\);

-- Location: LCCOMB_X30_Y32_N28
\ULA1|saida[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|saida\(4) = (\ULA_en~input_o\ & ((\ULA1|temp\(4)))) # (!\ULA_en~input_o\ & (\ULA1|saida\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|saida\(4),
	datac => \ULA1|temp\(4),
	datad => \ULA_en~input_o\,
	combout => \ULA1|saida\(4));

-- Location: CLKCTRL_G18
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X38_Y0_N8
\B_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_en,
	o => \B_en~input_o\);

-- Location: FF_X30_Y31_N9
\RegB|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|temp\(4));

-- Location: LCCOMB_X30_Y31_N8
\signed_D[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_D[4]~0_combout\ = (\Buss_D_ctrl~input_o\ & ((\RegB|temp\(4)))) # (!\Buss_D_ctrl~input_o\ & (\RegIR|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIR|temp\(4),
	datab => \Buss_D_ctrl~input_o\,
	datac => \RegB|temp\(4),
	combout => \signed_D[4]~0_combout\);

-- Location: LCCOMB_X31_Y32_N28
\ULA1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~2_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \signed_D[4]~0_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((!\signed_D[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \signed_D[4]~0_combout\,
	combout => \ULA1|Add0~2_combout\);

-- Location: IOIBUF_X52_Y32_N22
\Buss_C_ctrl~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Buss_C_ctrl,
	o => \Buss_C_ctrl~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\A_sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_sel(1),
	o => \A_sel[1]~input_o\);

-- Location: LCCOMB_X32_Y31_N24
\RegA|temp[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegA|temp[0]~2_combout\ = \A_sel[0]~input_o\ $ (\A_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_sel[0]~input_o\,
	datad => \A_sel[1]~input_o\,
	combout => \RegA|temp[0]~2_combout\);

-- Location: IOIBUF_X25_Y41_N1
\ULA_ctrl[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(3),
	o => \ULA_ctrl[3]~input_o\);

-- Location: LCCOMB_X30_Y32_N18
\ULA1|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_combout\ = (\ULA_ctrl[0]~input_o\ & ((\ULA_ctrl[1]~input_o\) # ((!\ULA_ctrl[2]~input_o\ & !\ULA_ctrl[3]~input_o\)))) # (!\ULA_ctrl[0]~input_o\ & (((!\ULA_ctrl[1]~input_o\)) # (!\ULA_ctrl[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[0]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \ULA1|Add0~1_combout\);

-- Location: LCCOMB_X30_Y32_N24
\ULA1|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~1_combout\ = (\ULA_ctrl[2]~input_o\ & ((!\ULA_ctrl[3]~input_o\) # (!\ULA_ctrl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[1]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[2]~input_o\,
	combout => \ULA1|Mux2~1_combout\);

-- Location: IOIBUF_X29_Y41_N1
\ULA_ctrl[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_ctrl(0),
	o => \ULA_ctrl[0]~input_o\);

-- Location: LCCOMB_X30_Y32_N22
\ULA1|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~4_combout\ = (\ULA_ctrl[1]~input_o\ & ((\ULA_ctrl[2]~input_o\) # (\ULA_ctrl[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[0]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \ULA1|Mux2~4_combout\);

-- Location: LCCOMB_X29_Y29_N12
\ULA1|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~2_combout\ = (\ULA_ctrl[1]~input_o\) # (\ULA_ctrl[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[1]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \ULA1|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y29_N24
\ULA1|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~3_combout\ = (\ULA_ctrl[1]~input_o\) # ((\ULA_ctrl[3]~input_o\ & !\ULA_ctrl[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[3]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \ULA_ctrl[0]~input_o\,
	combout => \ULA1|Mux2~3_combout\);

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

-- Location: IOIBUF_X43_Y41_N1
\mRom_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mRom_en,
	o => \mRom_en~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\IR_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR_en,
	o => \IR_en~input_o\);

-- Location: LCCOMB_X30_Y32_N10
\ULA1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~0_combout\ = (\ULA_ctrl[0]~input_o\ & (!\ULA_ctrl[1]~input_o\ & (\ULA_ctrl[2]~input_o\ $ (\ULA_ctrl[3]~input_o\)))) # (!\ULA_ctrl[0]~input_o\ & (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[3]~input_o\ & \ULA_ctrl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[0]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[3]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \ULA1|Mux2~0_combout\);

-- Location: IOIBUF_X31_Y41_N15
\PC_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_en,
	o => \PC_en~input_o\);

-- Location: FF_X32_Y31_N9
\RegPC|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|temp\(1));

-- Location: IOIBUF_X52_Y32_N8
\A_sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_sel(0),
	o => \A_sel[0]~input_o\);

-- Location: LCCOMB_X28_Y38_N4
\ULA1|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux25~0_combout\ = (\ULA_ctrl[3]~input_o\ & (!\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[0]~input_o\ & \ULA_ctrl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[0]~input_o\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \ULA1|Mux25~0_combout\);

-- Location: CLKCTRL_G11
\ULA1|Mux25~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ULA1|Mux25~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ULA1|Mux25~0clkctrl_outclk\);

-- Location: FF_X32_Y30_N9
\RegPC|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|N~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|temp\(7));

-- Location: FF_X30_Y31_N11
\RegB|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|N~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|temp\(7));

-- Location: IOIBUF_X36_Y0_N1
\RAM_IN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAM_IN(7),
	o => \RAM_IN[7]~input_o\);

-- Location: LCCOMB_X32_Y30_N24
\muxA[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[7]~14_combout\ = (\RegA|temp[0]~2_combout\ & (((\RegA|temp[0]~1_combout\)))) # (!\RegA|temp[0]~2_combout\ & ((\RegA|temp[0]~1_combout\ & (\RAM1|altsyncram_component|auto_generated|q_a\(7))) # (!\RegA|temp[0]~1_combout\ & ((\RAM_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|altsyncram_component|auto_generated|q_a\(7),
	datab => \RegA|temp[0]~2_combout\,
	datac => \RegA|temp[0]~1_combout\,
	datad => \RAM_IN[7]~input_o\,
	combout => \muxA[7]~14_combout\);

-- Location: LCCOMB_X32_Y30_N18
\muxA[7]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[7]~15_combout\ = (\RegA|temp[0]~2_combout\ & ((\muxA[7]~14_combout\ & ((\RegB|temp\(7)))) # (!\muxA[7]~14_combout\ & (\ULA1|N~combout\)))) # (!\RegA|temp[0]~2_combout\ & (((\muxA[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|temp[0]~2_combout\,
	datab => \ULA1|N~combout\,
	datac => \RegB|temp\(7),
	datad => \muxA[7]~14_combout\,
	combout => \muxA[7]~15_combout\);

-- Location: IOIBUF_X31_Y41_N22
\A_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_en,
	o => \A_en~input_o\);

-- Location: FF_X32_Y30_N19
\RegA|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \muxA[7]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \A_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|temp\(7));

-- Location: LCCOMB_X32_Y30_N8
\ULA1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux0~0_combout\ = (\ULA_ctrl[3]~input_o\) # ((\Buss_C_ctrl~input_o\ & ((\RegA|temp\(7)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegPC|temp\(7),
	datad => \RegA|temp\(7),
	combout => \ULA1|Mux0~0_combout\);

-- Location: FF_X31_Y31_N7
\RegB|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|temp\(2));

-- Location: LCCOMB_X31_Y31_N6
\signed_D[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_D[2]~2_combout\ = (\Buss_D_ctrl~input_o\ & ((\RegB|temp\(2)))) # (!\Buss_D_ctrl~input_o\ & (\RegIR|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIR|temp\(2),
	datac => \RegB|temp\(2),
	datad => \Buss_D_ctrl~input_o\,
	combout => \signed_D[2]~2_combout\);

-- Location: LCCOMB_X31_Y32_N4
\ULA1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~4_combout\ = (\ULA_ctrl[2]~input_o\ & (\signed_D[2]~2_combout\ & !\ULA_ctrl[1]~input_o\)) # (!\ULA_ctrl[2]~input_o\ & (!\signed_D[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \signed_D[2]~2_combout\,
	datad => \ULA_ctrl[1]~input_o\,
	combout => \ULA1|Add0~4_combout\);

-- Location: LCCOMB_X32_Y31_N12
\signed_C[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_C[1]~3_combout\ = (\Buss_C_ctrl~input_o\ & (\RegA|temp\(1))) # (!\Buss_C_ctrl~input_o\ & ((\RegPC|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegA|temp\(1),
	datad => \RegPC|temp\(1),
	combout => \signed_C[1]~3_combout\);

-- Location: FF_X31_Y30_N1
\RegPC|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|temp\(0));

-- Location: IOIBUF_X52_Y30_N1
\RAM_IN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAM_IN(0),
	o => \RAM_IN[0]~input_o\);

-- Location: LCCOMB_X31_Y30_N14
\muxA[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[0]~0_combout\ = (\RegA|temp[0]~1_combout\ & (((\RegA|temp[0]~2_combout\)))) # (!\RegA|temp[0]~1_combout\ & ((\RegA|temp[0]~2_combout\ & (\ULA1|saida\(0))) # (!\RegA|temp[0]~2_combout\ & ((\RAM_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|saida\(0),
	datab => \RAM_IN[0]~input_o\,
	datac => \RegA|temp[0]~1_combout\,
	datad => \RegA|temp[0]~2_combout\,
	combout => \muxA[0]~0_combout\);

-- Location: FF_X30_Y31_N7
\RegB|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|temp\(5));

-- Location: FF_X31_Y30_N25
\RegPC|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|temp\(6));

-- Location: LCCOMB_X31_Y30_N28
\muxA[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[6]~12_combout\ = (\RegA|temp[0]~2_combout\ & (((\RegA|temp[0]~1_combout\) # (\ULA1|saida\(6))))) # (!\RegA|temp[0]~2_combout\ & (\RAM_IN[6]~input_o\ & (!\RegA|temp[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_IN[6]~input_o\,
	datab => \RegA|temp[0]~2_combout\,
	datac => \RegA|temp[0]~1_combout\,
	datad => \ULA1|saida\(6),
	combout => \muxA[6]~12_combout\);

-- Location: IOIBUF_X36_Y41_N1
\RAM_IN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAM_IN(5),
	o => \RAM_IN[5]~input_o\);

-- Location: M9K_X33_Y30_N0
\RAM1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM1|altsyncram:altsyncram_component|altsyncram_h1b1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	power_up_uninitialized => "true",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mRam_en~input_o\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y30_N10
\muxA[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[5]~10_combout\ = (\RegA|temp[0]~2_combout\ & (((\RegA|temp[0]~1_combout\)))) # (!\RegA|temp[0]~2_combout\ & ((\RegA|temp[0]~1_combout\ & ((\RAM1|altsyncram_component|auto_generated|q_a\(5)))) # (!\RegA|temp[0]~1_combout\ & (\RAM_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|temp[0]~2_combout\,
	datab => \RAM_IN[5]~input_o\,
	datac => \RegA|temp[0]~1_combout\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(5),
	combout => \muxA[5]~10_combout\);

-- Location: LCCOMB_X32_Y30_N28
\muxA[5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[5]~11_combout\ = (\RegA|temp[0]~2_combout\ & ((\muxA[5]~10_combout\ & ((\RegB|temp\(5)))) # (!\muxA[5]~10_combout\ & (\ULA1|saida\(5))))) # (!\RegA|temp[0]~2_combout\ & (((\muxA[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|temp[0]~2_combout\,
	datab => \ULA1|saida\(5),
	datac => \RegB|temp\(5),
	datad => \muxA[5]~10_combout\,
	combout => \muxA[5]~11_combout\);

-- Location: FF_X32_Y30_N29
\RegA|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \muxA[5]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \A_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|temp\(5));

-- Location: LCCOMB_X32_Y31_N20
\muxA[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[4]~8_combout\ = (\RegA|temp[0]~1_combout\ & (((\RegA|temp[0]~2_combout\)))) # (!\RegA|temp[0]~1_combout\ & ((\RegA|temp[0]~2_combout\ & ((\ULA1|saida\(4)))) # (!\RegA|temp[0]~2_combout\ & (\RAM_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_IN[4]~input_o\,
	datab => \ULA1|saida\(4),
	datac => \RegA|temp[0]~1_combout\,
	datad => \RegA|temp[0]~2_combout\,
	combout => \muxA[4]~8_combout\);

-- Location: LCCOMB_X32_Y31_N6
\muxA[4]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[4]~9_combout\ = (\RegA|temp[0]~1_combout\ & ((\muxA[4]~8_combout\ & (\RegB|temp\(4))) # (!\muxA[4]~8_combout\ & ((\RAM1|altsyncram_component|auto_generated|q_a\(4)))))) # (!\RegA|temp[0]~1_combout\ & (((\muxA[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|temp\(4),
	datab => \RegA|temp[0]~1_combout\,
	datac => \RAM1|altsyncram_component|auto_generated|q_a\(4),
	datad => \muxA[4]~8_combout\,
	combout => \muxA[4]~9_combout\);

-- Location: FF_X32_Y31_N7
\RegA|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \muxA[4]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \A_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|temp\(4));

-- Location: IOIBUF_X25_Y0_N8
\RAM_IN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAM_IN(2),
	o => \RAM_IN[2]~input_o\);

-- Location: LCCOMB_X32_Y30_N0
\muxA[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[2]~4_combout\ = (\RegA|temp[0]~2_combout\ & (((\RegA|temp[0]~1_combout\) # (\ULA1|saida\(2))))) # (!\RegA|temp[0]~2_combout\ & (\RAM_IN[2]~input_o\ & (!\RegA|temp[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|temp[0]~2_combout\,
	datab => \RAM_IN[2]~input_o\,
	datac => \RegA|temp[0]~1_combout\,
	datad => \ULA1|saida\(2),
	combout => \muxA[2]~4_combout\);

-- Location: LCCOMB_X32_Y30_N26
\muxA[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[2]~5_combout\ = (\RegA|temp[0]~1_combout\ & ((\muxA[2]~4_combout\ & (\RegB|temp\(2))) # (!\muxA[2]~4_combout\ & ((\RAM1|altsyncram_component|auto_generated|q_a\(2)))))) # (!\RegA|temp[0]~1_combout\ & (((\muxA[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|temp\(2),
	datab => \RegA|temp[0]~1_combout\,
	datac => \RAM1|altsyncram_component|auto_generated|q_a\(2),
	datad => \muxA[2]~4_combout\,
	combout => \muxA[2]~5_combout\);

-- Location: FF_X32_Y30_N27
\RegA|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \muxA[2]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \A_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|temp\(2));

-- Location: LCCOMB_X31_Y30_N16
\muxA[6]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[6]~13_combout\ = (\muxA[6]~12_combout\ & ((\RegB|temp\(6)) # ((!\RegA|temp[0]~1_combout\)))) # (!\muxA[6]~12_combout\ & (((\RegA|temp[0]~1_combout\ & \RAM1|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|temp\(6),
	datab => \muxA[6]~12_combout\,
	datac => \RegA|temp[0]~1_combout\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(6),
	combout => \muxA[6]~13_combout\);

-- Location: FF_X31_Y30_N17
\RegA|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \muxA[6]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \A_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|temp\(6));

-- Location: LCCOMB_X31_Y30_N24
\ULA1|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux1~0_combout\ = (\ULA_ctrl[3]~input_o\) # ((\Buss_C_ctrl~input_o\ & ((\RegA|temp\(6)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buss_C_ctrl~input_o\,
	datab => \ULA_ctrl[3]~input_o\,
	datac => \RegPC|temp\(6),
	datad => \RegA|temp\(6),
	combout => \ULA1|Mux1~0_combout\);

-- Location: FF_X30_Y31_N5
\RegB|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|temp\(6));

-- Location: M9K_X33_Y31_N0
\ROM1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080070000000003",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_9v81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \mRom_en~input_o\,
	ena1 => \IR_en~input_o\,
	clr0 => \reset~inputclkctrl_outclk\,
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y31_N4
\signed_D[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_D[6]~7_combout\ = (\Buss_D_ctrl~input_o\ & (\RegB|temp\(6))) # (!\Buss_D_ctrl~input_o\ & ((\RegIR|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Buss_D_ctrl~input_o\,
	datac => \RegB|temp\(6),
	datad => \RegIR|temp\(6),
	combout => \signed_D[6]~7_combout\);

-- Location: LCCOMB_X31_Y30_N30
\signed_C[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_C[6]~7_combout\ = (\Buss_C_ctrl~input_o\ & ((\RegA|temp\(6)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|temp\(6),
	datac => \Buss_C_ctrl~input_o\,
	datad => \RegA|temp\(6),
	combout => \signed_C[6]~7_combout\);

-- Location: LCCOMB_X29_Y29_N8
\ULA1|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux1~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\signed_D[6]~7_combout\) # (\signed_C[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signed_D[6]~7_combout\,
	datac => \signed_C[6]~7_combout\,
	datad => \ULA_ctrl[3]~input_o\,
	combout => \ULA1|Mux1~1_combout\);

-- Location: FF_X32_Y30_N15
\RegPC|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|temp\(5));

-- Location: LCCOMB_X32_Y30_N16
\signed_C[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_C[5]~5_combout\ = (\Buss_C_ctrl~input_o\ & ((\RegA|temp\(5)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegPC|temp\(5),
	datad => \RegA|temp\(5),
	combout => \signed_C[5]~5_combout\);

-- Location: FF_X31_Y31_N1
\RegB|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|temp\(1));

-- Location: LCCOMB_X31_Y31_N0
\signed_D[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_D[1]~3_combout\ = (\Buss_D_ctrl~input_o\ & (\RegB|temp\(1))) # (!\Buss_D_ctrl~input_o\ & ((\RegIR|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buss_D_ctrl~input_o\,
	datac => \RegB|temp\(1),
	datad => \RegIR|temp\(1),
	combout => \signed_D[1]~3_combout\);

-- Location: LCCOMB_X30_Y31_N28
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\ = (\signed_D[4]~0_combout\ & ((\signed_D[3]~1_combout\) # ((\signed_D[2]~2_combout\ & \signed_D[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[2]~2_combout\,
	datab => \signed_D[1]~3_combout\,
	datac => \signed_D[4]~0_combout\,
	datad => \signed_D[3]~1_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\);

-- Location: LCCOMB_X30_Y31_N18
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\) # ((\Buss_D_ctrl~input_o\ & (\RegB|temp\(5))) # (!\Buss_D_ctrl~input_o\ & ((\RegIR|temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|temp\(5),
	datab => \RegIR|temp\(5),
	datac => \Buss_D_ctrl~input_o\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\);

-- Location: LCCOMB_X29_Y31_N4
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6) = (\signed_C[5]~5_combout\ & (((\signed_D[6]~7_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\)))) # (!\signed_C[5]~5_combout\ & 
-- (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_D[6]~7_combout\,
	datac => \signed_C[5]~5_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6));

-- Location: LCCOMB_X30_Y31_N26
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ = \signed_D[6]~7_combout\ $ (((\signed_D[5]~5_combout\) # (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signed_D[5]~5_combout\,
	datac => \signed_D[6]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\);

-- Location: LCCOMB_X29_Y31_N0
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_D[7]~6_combout\ $ 
-- (\signed_C[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_C[6]~7_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6),
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6));

-- Location: LCCOMB_X31_Y31_N22
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ = (\signed_D[3]~1_combout\) # ((\signed_D[2]~2_combout\ & \signed_D[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[2]~2_combout\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_D[3]~1_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\);

-- Location: LCCOMB_X31_Y31_N8
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ = \signed_D[5]~5_combout\ $ (((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \signed_D[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signed_D[5]~5_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \signed_D[4]~0_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\);

-- Location: LCCOMB_X32_Y30_N6
\signed_C[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_C[7]~6_combout\ = (\Buss_C_ctrl~input_o\ & ((\RegA|temp\(7)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegPC|temp\(7),
	datad => \RegA|temp\(7),
	combout => \signed_C[7]~6_combout\);

-- Location: LCCOMB_X31_Y31_N4
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ = \signed_D[4]~0_combout\ $ (((\signed_D[3]~1_combout\) # ((\signed_D[2]~2_combout\ & \signed_D[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[2]~2_combout\,
	datab => \signed_D[3]~1_combout\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_D[4]~0_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\);

-- Location: LCCOMB_X31_Y31_N10
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ $ 
-- (\signed_C[7]~6_combout\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (!\signed_C[6]~7_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[6]~7_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datac => \signed_C[7]~6_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7));

-- Location: LCCOMB_X31_Y31_N28
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (\signed_C[6]~7_combout\ $ 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\ & 
-- !\signed_C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[6]~7_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datad => \signed_C[5]~5_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6));

-- Location: LCCOMB_X32_Y30_N2
\signed_C[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_C[2]~2_combout\ = (\Buss_C_ctrl~input_o\ & ((\RegA|temp\(2)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|temp\(2),
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegA|temp\(2),
	combout => \signed_C[2]~2_combout\);

-- Location: LCCOMB_X30_Y31_N22
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2) = (\signed_C[1]~3_combout\ & (((\signed_D[6]~7_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\)))) # (!\signed_C[1]~3_combout\ & 
-- (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_D[6]~7_combout\,
	datac => \signed_C[1]~3_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2));

-- Location: LCCOMB_X30_Y30_N0
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_D[7]~6_combout\ $ 
-- (\signed_C[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_C[2]~2_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2),
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X30_Y31_N0
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1) = (\signed_C[0]~4_combout\ & (((\signed_D[6]~7_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\)))) # (!\signed_C[0]~4_combout\ & 
-- (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_C[0]~4_combout\,
	datac => \signed_D[6]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~9_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1));

-- Location: LCCOMB_X30_Y31_N24
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_D[7]~6_combout\ $ 
-- (\signed_C[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_C[1]~3_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1),
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X30_Y30_N30
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0) = (\signed_D[7]~6_combout\ & (\signed_D[6]~7_combout\ $ (((!\signed_D[5]~5_combout\ & !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[5]~5_combout\,
	datab => \signed_D[7]~6_combout\,
	datac => \signed_D[6]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~23_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0));

-- Location: LCCOMB_X30_Y30_N2
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0)) # ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\ & (\signed_D[7]~6_combout\ $ 
-- (\signed_C[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[7]~6_combout\,
	datab => \signed_C[0]~4_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[3]~7_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0),
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X31_Y31_N20
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (\signed_C[1]~3_combout\ $ 
-- (((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (((!\signed_C[0]~4_combout\ & 
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[1]~3_combout\,
	datab => \signed_C[0]~4_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1));

-- Location: LCCOMB_X31_Y31_N14
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) = \signed_D[5]~5_combout\ $ (((\signed_D[4]~0_combout\ & ((\signed_C[0]~4_combout\) # (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))) # 
-- (!\signed_D[4]~0_combout\ & (\signed_C[0]~4_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[4]~0_combout\,
	datab => \signed_C[0]~4_combout\,
	datac => \signed_D[5]~5_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0));

-- Location: LCCOMB_X31_Y29_N20
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) = (\signed_D[0]~4_combout\ & (\signed_D[1]~3_combout\ $ ((\signed_C[2]~2_combout\)))) # (!\signed_D[0]~4_combout\ & (\signed_D[1]~3_combout\ & ((!\signed_C[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[0]~4_combout\,
	datab => \signed_D[1]~3_combout\,
	datac => \signed_C[2]~2_combout\,
	datad => \signed_C[1]~3_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2));

-- Location: LCCOMB_X30_Y30_N8
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) $ 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~3\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~4_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\);

-- Location: LCCOMB_X30_Y30_N10
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\ & VCC)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\) # (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[2]~5\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~7\);

-- Location: LCCOMB_X30_Y30_N14
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\ & VCC)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\) # (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[4]~9\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~10_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\);

-- Location: LCCOMB_X30_Y30_N16
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[5]~11\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\);

-- Location: LCCOMB_X30_Y30_N18
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\ & VCC)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\) # 
-- (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~13\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~15\);

-- Location: LCCOMB_X30_Y30_N26
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ = !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\ = CARRY(!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~21\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\);

-- Location: LCCOMB_X30_Y30_N28
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ = !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~23\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\);

-- Location: LCCOMB_X28_Y30_N28
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ = !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\ = CARRY(!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\);

-- Location: LCCOMB_X28_Y30_N30
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ = !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~15\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\);

-- Location: LCCOMB_X31_Y31_N18
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ = \signed_D[2]~2_combout\ $ (((\Buss_D_ctrl~input_o\ & ((\RegB|temp\(1)))) # (!\Buss_D_ctrl~input_o\ & (\RegIR|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIR|temp\(1),
	datab => \RegB|temp\(1),
	datac => \Buss_D_ctrl~input_o\,
	datad => \signed_D[2]~2_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\);

-- Location: LCCOMB_X31_Y31_N30
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ $ 
-- ((\signed_C[7]~6_combout\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ & ((!\signed_C[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\,
	datac => \signed_C[7]~6_combout\,
	datad => \signed_C[6]~7_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7));

-- Location: FF_X32_Y31_N25
\RegPC|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|temp\(4));

-- Location: LCCOMB_X32_Y31_N0
\signed_C[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_C[4]~0_combout\ = (\Buss_C_ctrl~input_o\ & ((\RegA|temp\(4)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegPC|temp\(4),
	datac => \Buss_C_ctrl~input_o\,
	datad => \RegA|temp\(4),
	combout => \signed_C[4]~0_combout\);

-- Location: LCCOMB_X28_Y30_N2
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & ((\signed_C[4]~0_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (!\signed_C[3]~1_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[3]~1_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\,
	datac => \signed_C[4]~0_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4));

-- Location: LCCOMB_X28_Y30_N0
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (\signed_C[3]~1_combout\ $ 
-- (((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (((!\signed_C[2]~2_combout\ & 
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[3]~1_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\,
	datac => \signed_C[2]~2_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3));

-- Location: LCCOMB_X28_Y30_N8
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & ((\signed_C[2]~2_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\ & (!\signed_C[1]~3_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[1]~3_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~6_combout\,
	datac => \signed_C[2]~2_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~1_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2));

-- Location: LCCOMB_X32_Y29_N10
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) = (\signed_D[0]~4_combout\ & (\signed_D[1]~3_combout\ $ (((\signed_C[5]~5_combout\))))) # (!\signed_D[0]~4_combout\ & (\signed_D[1]~3_combout\ & (!\signed_C[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[0]~4_combout\,
	datab => \signed_D[1]~3_combout\,
	datac => \signed_C[4]~0_combout\,
	datad => \signed_C[5]~5_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5));

-- Location: LCCOMB_X28_Y30_N12
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) = (\signed_D[0]~4_combout\ & (\signed_D[1]~3_combout\ $ (((\signed_C[4]~0_combout\))))) # (!\signed_D[0]~4_combout\ & (\signed_D[1]~3_combout\ & (!\signed_C[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[0]~4_combout\,
	datab => \signed_D[1]~3_combout\,
	datac => \signed_C[3]~1_combout\,
	datad => \signed_C[4]~0_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4));

-- Location: LCCOMB_X28_Y30_N18
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) $ 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~3\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~4_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[2]~5\);

-- Location: LCCOMB_X28_Y30_N26
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\) 
-- # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~11\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~13\);

-- Location: LCCOMB_X31_Y31_N26
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\ = \signed_D[3]~1_combout\ $ (((\signed_D[1]~3_combout\ & \signed_D[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[1]~3_combout\,
	datac => \signed_D[3]~1_combout\,
	datad => \signed_D[2]~2_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\);

-- Location: LCCOMB_X32_Y31_N28
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (\signed_C[1]~3_combout\ $ 
-- (((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\ & (((!\signed_C[0]~4_combout\ & 
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[1]~3_combout\,
	datab => \signed_C[0]~4_combout\,
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~2_combout\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[1]~8_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X30_Y31_N16
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) = \signed_D[3]~1_combout\ $ (((\signed_C[0]~4_combout\ & ((\signed_D[1]~3_combout\) # (\signed_D[2]~2_combout\))) # (!\signed_C[0]~4_combout\ & (\signed_D[1]~3_combout\ & 
-- \signed_D[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[0]~4_combout\,
	datab => \signed_D[3]~1_combout\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_D[2]~2_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0));

-- Location: LCCOMB_X32_Y30_N4
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) = (\signed_D[0]~4_combout\ & (\signed_C[1]~3_combout\ $ (((\signed_D[1]~3_combout\))))) # (!\signed_D[0]~4_combout\ & (((!\signed_C[0]~4_combout\ & \signed_D[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[1]~3_combout\,
	datab => \signed_C[0]~4_combout\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_D[0]~4_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1));

-- Location: LCCOMB_X29_Y30_N0
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\ = (\signed_D[1]~3_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) $ (VCC))) # (!\signed_D[1]~3_combout\ & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & VCC))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\ = CARRY((\signed_D[1]~3_combout\ & \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[1]~3_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0),
	datad => VCC,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\);

-- Location: LCCOMB_X29_Y30_N2
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\) # (GND)))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\ = CARRY((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~1\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~3\);

-- Location: LCCOMB_X29_Y30_N6
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\ & VCC)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\) # (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\ & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[1]~2_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~5\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~7\);

-- Location: LCCOMB_X29_Y30_N10
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\ & VCC)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\) # 
-- (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\ & !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\ & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[1]~2_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[3]~6_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~9\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~11\);

-- Location: LCCOMB_X29_Y30_N16
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\ & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[4]~8_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[6]~12_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[7]~15\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\);

-- Location: LCCOMB_X29_Y30_N18
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\ & VCC)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\) # 
-- (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\ & !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\ & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[5]~10_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[7]~14_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~17\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\);

-- Location: LCCOMB_X29_Y30_N20
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\ & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[8]~16_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[6]~12_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~19\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\);

-- Location: LCCOMB_X29_Y30_N22
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\ & VCC)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\) 
-- # (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\ & !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\)) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\ & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[9]~18_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[7]~14_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~21\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\);

-- Location: LCCOMB_X29_Y30_N24
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ $ (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ & 
-- ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\))) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\ & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\ & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[10]~20_combout\,
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add17_result[8]~16_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~23\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\);

-- Location: LCCOMB_X29_Y30_N26
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\ = (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\ & VCC)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\)))) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\) 
-- # (GND)))))
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\ & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[11]~22_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~25\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\);

-- Location: LCCOMB_X29_Y30_N28
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\ = ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) $ (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ $ 
-- (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\)))) # (GND)
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\ = CARRY((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\ & 
-- !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\)) # (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\) # 
-- (!\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8),
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add13_result[12]~24_combout\,
	datad => VCC,
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~27\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\,
	cout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\);

-- Location: LCCOMB_X29_Y29_N30
\ULA1|temp_mult[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(14) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp_mult\(14),
	datac => \ULA1|Mux25~0clkctrl_outclk\,
	datad => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~28_combout\,
	combout => \ULA1|temp_mult\(14));

-- Location: LCCOMB_X29_Y29_N10
\ULA1|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux1~2_combout\ = (\ULA1|Mux2~2_combout\ & (\signed_D[6]~7_combout\ & ((\signed_C[6]~7_combout\) # (!\ULA1|Mux2~3_combout\)))) # (!\ULA1|Mux2~2_combout\ & (((\signed_C[6]~7_combout\) # (\ULA1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~2_combout\,
	datab => \signed_D[6]~7_combout\,
	datac => \signed_C[6]~7_combout\,
	datad => \ULA1|Mux2~3_combout\,
	combout => \ULA1|Mux1~2_combout\);

-- Location: LCCOMB_X29_Y29_N24
\ULA1|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux1~3_combout\ = (\ULA1|Mux1~2_combout\ & ((\ULA1|Mux2~2_combout\) # ((\ULA1|temp_mult\(14)) # (!\ULA1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~2_combout\,
	datab => \ULA1|Mux2~3_combout\,
	datac => \ULA1|temp_mult\(14),
	datad => \ULA1|Mux1~2_combout\,
	combout => \ULA1|Mux1~3_combout\);

-- Location: LCCOMB_X29_Y29_N6
\ULA1|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux1~4_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA1|Mux2~4_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((\ULA1|Mux2~4_combout\ & (\ULA1|Mux1~1_combout\)) # (!\ULA1|Mux2~4_combout\ & ((\ULA1|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA1|Mux2~4_combout\,
	datac => \ULA1|Mux1~1_combout\,
	datad => \ULA1|Mux1~3_combout\,
	combout => \ULA1|Mux1~4_combout\);

-- Location: LCCOMB_X29_Y29_N28
\ULA1|Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux1~5_combout\ = (\ULA1|Mux2~1_combout\ & ((\ULA1|Mux1~4_combout\ & ((!\ULA1|Mux1~0_combout\))) # (!\ULA1|Mux1~4_combout\ & (\ULA1|temp_mult\(6))))) # (!\ULA1|Mux2~1_combout\ & (((\ULA1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp_mult\(6),
	datab => \ULA1|Mux2~1_combout\,
	datac => \ULA1|Mux1~0_combout\,
	datad => \ULA1|Mux1~4_combout\,
	combout => \ULA1|Mux1~5_combout\);

-- Location: LCCOMB_X31_Y32_N2
\ULA1|Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_combout\ = (\signed_D[6]~7_combout\ & (!\ULA_ctrl[1]~input_o\ & \ULA_ctrl[2]~input_o\)) # (!\signed_D[6]~7_combout\ & ((!\ULA_ctrl[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[1]~input_o\,
	datac => \signed_D[6]~7_combout\,
	datad => \ULA_ctrl[2]~input_o\,
	combout => \ULA1|Add0~25_combout\);

-- Location: LCCOMB_X31_Y32_N18
\ULA1|Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_combout\ = (\signed_C[4]~0_combout\ & ((\ULA1|Add0~2_combout\ & (\ULA1|Add0~16\ & VCC)) # (!\ULA1|Add0~2_combout\ & (!\ULA1|Add0~16\)))) # (!\signed_C[4]~0_combout\ & ((\ULA1|Add0~2_combout\ & (!\ULA1|Add0~16\)) # (!\ULA1|Add0~2_combout\ & 
-- ((\ULA1|Add0~16\) # (GND)))))
-- \ULA1|Add0~18\ = CARRY((\signed_C[4]~0_combout\ & (!\ULA1|Add0~2_combout\ & !\ULA1|Add0~16\)) # (!\signed_C[4]~0_combout\ & ((!\ULA1|Add0~16\) # (!\ULA1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[4]~0_combout\,
	datab => \ULA1|Add0~2_combout\,
	datad => VCC,
	cin => \ULA1|Add0~16\,
	combout => \ULA1|Add0~17_combout\,
	cout => \ULA1|Add0~18\);

-- Location: LCCOMB_X31_Y32_N20
\ULA1|Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_combout\ = ((\signed_C[5]~5_combout\ $ (\ULA1|Add0~20_combout\ $ (!\ULA1|Add0~18\)))) # (GND)
-- \ULA1|Add0~22\ = CARRY((\signed_C[5]~5_combout\ & ((\ULA1|Add0~20_combout\) # (!\ULA1|Add0~18\))) # (!\signed_C[5]~5_combout\ & (\ULA1|Add0~20_combout\ & !\ULA1|Add0~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[5]~5_combout\,
	datab => \ULA1|Add0~20_combout\,
	datad => VCC,
	cin => \ULA1|Add0~18\,
	combout => \ULA1|Add0~21_combout\,
	cout => \ULA1|Add0~22\);

-- Location: LCCOMB_X31_Y32_N22
\ULA1|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~26_combout\ = (\signed_C[6]~7_combout\ & ((\ULA1|Add0~25_combout\ & (\ULA1|Add0~22\ & VCC)) # (!\ULA1|Add0~25_combout\ & (!\ULA1|Add0~22\)))) # (!\signed_C[6]~7_combout\ & ((\ULA1|Add0~25_combout\ & (!\ULA1|Add0~22\)) # (!\ULA1|Add0~25_combout\ 
-- & ((\ULA1|Add0~22\) # (GND)))))
-- \ULA1|Add0~27\ = CARRY((\signed_C[6]~7_combout\ & (!\ULA1|Add0~25_combout\ & !\ULA1|Add0~22\)) # (!\signed_C[6]~7_combout\ & ((!\ULA1|Add0~22\) # (!\ULA1|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[6]~7_combout\,
	datab => \ULA1|Add0~25_combout\,
	datad => VCC,
	cin => \ULA1|Add0~22\,
	combout => \ULA1|Add0~26_combout\,
	cout => \ULA1|Add0~27\);

-- Location: LCCOMB_X32_Y29_N16
\ULA1|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_combout\ = (\ULA1|Add0~1_combout\ & ((\ULA1|Mux1~5_combout\) # ((\ULA1|Mux2~0_combout\ & \ULA1|Add0~26_combout\)))) # (!\ULA1|Add0~1_combout\ & (\ULA1|Mux2~0_combout\ & ((\ULA1|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~1_combout\,
	datab => \ULA1|Mux2~0_combout\,
	datac => \ULA1|Mux1~5_combout\,
	datad => \ULA1|Add0~26_combout\,
	combout => \ULA1|Add0~34_combout\);

-- Location: LCCOMB_X31_Y29_N16
\ULA1|temp[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp\(6) = (!\reset~input_o\ & ((GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp\(6))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Add0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ULA1|temp\(6),
	datac => \ULA1|Mux25~0clkctrl_outclk\,
	datad => \ULA1|Add0~34_combout\,
	combout => \ULA1|temp\(6));

-- Location: LCCOMB_X31_Y29_N14
\ULA1|saida[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|saida\(6) = (\ULA_en~input_o\ & ((\ULA1|temp\(6)))) # (!\ULA_en~input_o\ & (\ULA1|saida\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|saida\(6),
	datac => \ULA_en~input_o\,
	datad => \ULA1|temp\(6),
	combout => \ULA1|saida\(6));

-- Location: LCCOMB_X30_Y31_N6
\signed_D[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_D[5]~5_combout\ = (\Buss_D_ctrl~input_o\ & (\RegB|temp\(5))) # (!\Buss_D_ctrl~input_o\ & ((\RegIR|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Buss_D_ctrl~input_o\,
	datac => \RegB|temp\(5),
	datad => \RegIR|temp\(5),
	combout => \signed_D[5]~5_combout\);

-- Location: LCCOMB_X31_Y32_N0
\ULA1|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~20_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA_ctrl[1]~input_o\ & \signed_D[5]~5_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((!\signed_D[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datac => \ULA_ctrl[1]~input_o\,
	datad => \signed_D[5]~5_combout\,
	combout => \ULA1|Add0~20_combout\);

-- Location: LCCOMB_X30_Y29_N20
\ULA1|Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~7_combout\ = (\ULA1|Mux2~2_combout\ & (\signed_D[5]~5_combout\ & ((\signed_C[5]~5_combout\) # (!\ULA1|Mux2~3_combout\)))) # (!\ULA1|Mux2~2_combout\ & ((\ULA1|Mux2~3_combout\) # ((\signed_C[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~2_combout\,
	datab => \ULA1|Mux2~3_combout\,
	datac => \signed_D[5]~5_combout\,
	datad => \signed_C[5]~5_combout\,
	combout => \ULA1|Mux2~7_combout\);

-- Location: LCCOMB_X30_Y29_N6
\ULA1|temp_mult[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(13) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp_mult\(13),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[13]~26_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(13));

-- Location: LCCOMB_X30_Y29_N26
\ULA1|Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~8_combout\ = (\ULA1|Mux2~7_combout\ & ((\ULA1|Mux2~2_combout\) # ((\ULA1|temp_mult\(13)) # (!\ULA1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~2_combout\,
	datab => \ULA1|Mux2~7_combout\,
	datac => \ULA1|Mux2~3_combout\,
	datad => \ULA1|temp_mult\(13),
	combout => \ULA1|Mux2~8_combout\);

-- Location: LCCOMB_X30_Y29_N2
\ULA1|Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~6_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\signed_D[5]~5_combout\) # (\signed_C[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[5]~5_combout\,
	datab => \ULA_ctrl[3]~input_o\,
	datad => \signed_C[5]~5_combout\,
	combout => \ULA1|Mux2~6_combout\);

-- Location: LCCOMB_X30_Y29_N4
\ULA1|Mux2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~9_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA1|Mux2~4_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((\ULA1|Mux2~4_combout\ & ((\ULA1|Mux2~6_combout\))) # (!\ULA1|Mux2~4_combout\ & (\ULA1|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA1|Mux2~4_combout\,
	datac => \ULA1|Mux2~8_combout\,
	datad => \ULA1|Mux2~6_combout\,
	combout => \ULA1|Mux2~9_combout\);

-- Location: LCCOMB_X28_Y29_N12
\ULA1|temp_mult[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(5) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp_mult\(5),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[5]~10_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(5));

-- Location: LCCOMB_X30_Y29_N22
\ULA1|Mux2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux2~10_combout\ = (\ULA1|Mux2~1_combout\ & ((\ULA1|Mux2~9_combout\ & (!\ULA1|Mux2~5_combout\)) # (!\ULA1|Mux2~9_combout\ & ((\ULA1|temp_mult\(5)))))) # (!\ULA1|Mux2~1_combout\ & (((\ULA1|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~5_combout\,
	datab => \ULA1|Mux2~1_combout\,
	datac => \ULA1|Mux2~9_combout\,
	datad => \ULA1|temp_mult\(5),
	combout => \ULA1|Mux2~10_combout\);

-- Location: LCCOMB_X30_Y29_N16
\ULA1|Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~23_combout\ = (\ULA1|Mux2~0_combout\ & ((\ULA1|Add0~21_combout\) # ((\ULA1|Add0~1_combout\ & \ULA1|Mux2~10_combout\)))) # (!\ULA1|Mux2~0_combout\ & (\ULA1|Add0~1_combout\ & ((\ULA1|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~0_combout\,
	datab => \ULA1|Add0~1_combout\,
	datac => \ULA1|Add0~21_combout\,
	datad => \ULA1|Mux2~10_combout\,
	combout => \ULA1|Add0~23_combout\);

-- Location: LCCOMB_X31_Y29_N6
\ULA1|temp[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp\(5) = (!\reset~input_o\ & ((GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp\(5))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Add0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp\(5),
	datab => \reset~input_o\,
	datac => \ULA1|Add0~23_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp\(5));

-- Location: LCCOMB_X31_Y29_N12
\ULA1|saida[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|saida\(5) = (\ULA_en~input_o\ & ((\ULA1|temp\(5)))) # (!\ULA_en~input_o\ & (\ULA1|saida\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|saida\(5),
	datac => \ULA_en~input_o\,
	datad => \ULA1|temp\(5),
	combout => \ULA1|saida\(5));

-- Location: LCCOMB_X31_Y30_N18
\muxA[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[0]~1_combout\ = (\muxA[0]~0_combout\ & ((\RegB|temp\(0)) # ((!\RegA|temp[0]~1_combout\)))) # (!\muxA[0]~0_combout\ & (((\RegA|temp[0]~1_combout\ & \RAM1|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|temp\(0),
	datab => \muxA[0]~0_combout\,
	datac => \RegA|temp[0]~1_combout\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(0),
	combout => \muxA[0]~1_combout\);

-- Location: FF_X31_Y30_N19
\RegA|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \muxA[0]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \A_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|temp\(0));

-- Location: LCCOMB_X31_Y30_N0
\signed_C[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_C[0]~4_combout\ = (\Buss_C_ctrl~input_o\ & ((\RegA|temp\(0)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buss_C_ctrl~input_o\,
	datac => \RegPC|temp\(0),
	datad => \RegA|temp\(0),
	combout => \signed_C[0]~4_combout\);

-- Location: LCCOMB_X31_Y32_N8
\ULA1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~8_cout\ = CARRY(!\ULA_ctrl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[2]~input_o\,
	datad => VCC,
	cout => \ULA1|Add0~8_cout\);

-- Location: LCCOMB_X31_Y32_N12
\ULA1|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~11_combout\ = ((\ULA1|Add0~5_combout\ $ (\signed_C[1]~3_combout\ $ (!\ULA1|Add0~10\)))) # (GND)
-- \ULA1|Add0~12\ = CARRY((\ULA1|Add0~5_combout\ & ((\signed_C[1]~3_combout\) # (!\ULA1|Add0~10\))) # (!\ULA1|Add0~5_combout\ & (\signed_C[1]~3_combout\ & !\ULA1|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~5_combout\,
	datab => \signed_C[1]~3_combout\,
	datad => VCC,
	cin => \ULA1|Add0~10\,
	combout => \ULA1|Add0~11_combout\,
	cout => \ULA1|Add0~12\);

-- Location: LCCOMB_X31_Y32_N14
\ULA1|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_combout\ = (\signed_C[2]~2_combout\ & ((\ULA1|Add0~4_combout\ & (\ULA1|Add0~12\ & VCC)) # (!\ULA1|Add0~4_combout\ & (!\ULA1|Add0~12\)))) # (!\signed_C[2]~2_combout\ & ((\ULA1|Add0~4_combout\ & (!\ULA1|Add0~12\)) # (!\ULA1|Add0~4_combout\ & 
-- ((\ULA1|Add0~12\) # (GND)))))
-- \ULA1|Add0~14\ = CARRY((\signed_C[2]~2_combout\ & (!\ULA1|Add0~4_combout\ & !\ULA1|Add0~12\)) # (!\signed_C[2]~2_combout\ & ((!\ULA1|Add0~12\) # (!\ULA1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[2]~2_combout\,
	datab => \ULA1|Add0~4_combout\,
	datad => VCC,
	cin => \ULA1|Add0~12\,
	combout => \ULA1|Add0~13_combout\,
	cout => \ULA1|Add0~14\);

-- Location: LCCOMB_X30_Y32_N14
\ULA1|temp_mult[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(2) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\)) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|temp_mult\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[2]~4_combout\,
	datac => \ULA1|temp_mult\(2),
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(2));

-- Location: LCCOMB_X28_Y29_N16
\ULA1|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux5~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\signed_D[2]~2_combout\) # (\signed_C[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[3]~input_o\,
	datac => \signed_D[2]~2_combout\,
	datad => \signed_C[2]~2_combout\,
	combout => \ULA1|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y29_N16
\ULA1|temp_mult[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(10) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|temp_mult\(10),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[10]~20_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(10));

-- Location: LCCOMB_X29_Y29_N2
\ULA1|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux5~2_combout\ = (\ULA1|Mux2~2_combout\ & (((\ULA1|Mux2~3_combout\)))) # (!\ULA1|Mux2~2_combout\ & ((\ULA1|Mux2~3_combout\ & ((\ULA1|temp_mult\(10)))) # (!\ULA1|Mux2~3_combout\ & (\signed_C[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[2]~2_combout\,
	datab => \ULA1|Mux2~2_combout\,
	datac => \ULA1|Mux2~3_combout\,
	datad => \ULA1|temp_mult\(10),
	combout => \ULA1|Mux5~2_combout\);

-- Location: LCCOMB_X29_Y29_N0
\ULA1|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux5~3_combout\ = (\ULA1|Mux2~2_combout\ & (\signed_D[2]~2_combout\ & ((\signed_C[2]~2_combout\) # (!\ULA1|Mux5~2_combout\)))) # (!\ULA1|Mux2~2_combout\ & (((\ULA1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[2]~2_combout\,
	datab => \ULA1|Mux2~2_combout\,
	datac => \signed_C[2]~2_combout\,
	datad => \ULA1|Mux5~2_combout\,
	combout => \ULA1|Mux5~3_combout\);

-- Location: LCCOMB_X29_Y29_N14
\ULA1|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux5~4_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA1|Mux2~4_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((\ULA1|Mux2~4_combout\ & (\ULA1|Mux5~1_combout\)) # (!\ULA1|Mux2~4_combout\ & ((\ULA1|Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA1|Mux2~4_combout\,
	datac => \ULA1|Mux5~1_combout\,
	datad => \ULA1|Mux5~3_combout\,
	combout => \ULA1|Mux5~4_combout\);

-- Location: LCCOMB_X30_Y32_N12
\ULA1|Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux5~5_combout\ = (\ULA1|Mux2~1_combout\ & ((\ULA1|Mux5~4_combout\ & (!\ULA1|Mux5~0_combout\)) # (!\ULA1|Mux5~4_combout\ & ((\ULA1|temp_mult\(2)))))) # (!\ULA1|Mux2~1_combout\ & (((\ULA1|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux5~0_combout\,
	datab => \ULA1|temp_mult\(2),
	datac => \ULA1|Mux2~1_combout\,
	datad => \ULA1|Mux5~4_combout\,
	combout => \ULA1|Mux5~5_combout\);

-- Location: LCCOMB_X30_Y32_N20
\ULA1|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~32_combout\ = (\ULA1|Add0~1_combout\ & ((\ULA1|Mux5~5_combout\) # ((\ULA1|Mux2~0_combout\ & \ULA1|Add0~13_combout\)))) # (!\ULA1|Add0~1_combout\ & (\ULA1|Mux2~0_combout\ & (\ULA1|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~1_combout\,
	datab => \ULA1|Mux2~0_combout\,
	datac => \ULA1|Add0~13_combout\,
	datad => \ULA1|Mux5~5_combout\,
	combout => \ULA1|Add0~32_combout\);

-- Location: LCCOMB_X30_Y32_N4
\ULA1|temp[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp\(2) = (!\reset~input_o\ & ((GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp\(2))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ULA1|temp\(2),
	datac => \ULA1|Mux25~0clkctrl_outclk\,
	datad => \ULA1|Add0~32_combout\,
	combout => \ULA1|temp\(2));

-- Location: LCCOMB_X30_Y32_N6
\ULA1|saida[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|saida\(2) = (\ULA_en~input_o\ & ((\ULA1|temp\(2)))) # (!\ULA_en~input_o\ & (\ULA1|saida\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|saida\(2),
	datac => \ULA1|temp\(2),
	datad => \ULA_en~input_o\,
	combout => \ULA1|saida\(2));

-- Location: LCCOMB_X30_Y31_N10
\signed_D[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_D[7]~6_combout\ = (\Buss_D_ctrl~input_o\ & (\RegB|temp\(7))) # (!\Buss_D_ctrl~input_o\ & ((\RegIR|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Buss_D_ctrl~input_o\,
	datac => \RegB|temp\(7),
	datad => \RegIR|temp\(7),
	combout => \signed_D[7]~6_combout\);

-- Location: LCCOMB_X29_Y29_N4
\ULA1|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux0~2_combout\ = (\ULA1|Mux2~2_combout\ & (\signed_D[7]~6_combout\ & ((\signed_C[7]~6_combout\) # (!\ULA1|Mux2~3_combout\)))) # (!\ULA1|Mux2~2_combout\ & ((\ULA1|Mux2~3_combout\) # ((\signed_C[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~2_combout\,
	datab => \ULA1|Mux2~3_combout\,
	datac => \signed_D[7]~6_combout\,
	datad => \signed_C[7]~6_combout\,
	combout => \ULA1|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y30_N30
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\ = !\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[14]~29\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\);

-- Location: LCCOMB_X29_Y29_N18
\ULA1|temp_mult[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(15) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|temp_mult\(15),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[15]~30_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(15));

-- Location: LCCOMB_X29_Y29_N22
\ULA1|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux0~3_combout\ = (\ULA1|Mux0~2_combout\ & (((\ULA1|Mux2~2_combout\) # (\ULA1|temp_mult\(15))) # (!\ULA1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~3_combout\,
	datab => \ULA1|Mux2~2_combout\,
	datac => \ULA1|Mux0~2_combout\,
	datad => \ULA1|temp_mult\(15),
	combout => \ULA1|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y29_N26
\ULA1|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux0~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\signed_D[7]~6_combout\) # (\signed_C[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[3]~input_o\,
	datac => \signed_D[7]~6_combout\,
	datad => \signed_C[7]~6_combout\,
	combout => \ULA1|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y29_N20
\ULA1|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux0~4_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA1|Mux2~4_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((\ULA1|Mux2~4_combout\ & ((\ULA1|Mux0~1_combout\))) # (!\ULA1|Mux2~4_combout\ & (\ULA1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA1|Mux2~4_combout\,
	datac => \ULA1|Mux0~3_combout\,
	datad => \ULA1|Mux0~1_combout\,
	combout => \ULA1|Mux0~4_combout\);

-- Location: LCCOMB_X28_Y29_N4
\ULA1|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux0~5_combout\ = (\ULA1|Mux0~4_combout\ & (((!\ULA1|Mux2~1_combout\) # (!\ULA1|Mux0~0_combout\)))) # (!\ULA1|Mux0~4_combout\ & (\ULA1|temp_mult\(7) & ((\ULA1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp_mult\(7),
	datab => \ULA1|Mux0~0_combout\,
	datac => \ULA1|Mux0~4_combout\,
	datad => \ULA1|Mux2~1_combout\,
	combout => \ULA1|Mux0~5_combout\);

-- Location: LCCOMB_X30_Y32_N2
\ULA1|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~24_combout\ = (\signed_D[7]~6_combout\ & (!\ULA_ctrl[1]~input_o\ & \ULA_ctrl[2]~input_o\)) # (!\signed_D[7]~6_combout\ & ((!\ULA_ctrl[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ctrl[1]~input_o\,
	datac => \signed_D[7]~6_combout\,
	datad => \ULA_ctrl[2]~input_o\,
	combout => \ULA1|Add0~24_combout\);

-- Location: LCCOMB_X31_Y32_N24
\ULA1|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~28_combout\ = \signed_C[7]~6_combout\ $ (\ULA1|Add0~27\ $ (!\ULA1|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[7]~6_combout\,
	datad => \ULA1|Add0~24_combout\,
	cin => \ULA1|Add0~27\,
	combout => \ULA1|Add0~28_combout\);

-- Location: LCCOMB_X28_Y29_N2
\ULA1|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~30_combout\ = (\ULA1|Add0~1_combout\ & ((\ULA1|Mux0~5_combout\) # ((\ULA1|Mux2~0_combout\ & \ULA1|Add0~28_combout\)))) # (!\ULA1|Add0~1_combout\ & (\ULA1|Mux2~0_combout\ & ((\ULA1|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~1_combout\,
	datab => \ULA1|Mux2~0_combout\,
	datac => \ULA1|Mux0~5_combout\,
	datad => \ULA1|Add0~28_combout\,
	combout => \ULA1|Add0~30_combout\);

-- Location: LCCOMB_X28_Y29_N6
\ULA1|temp[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp\(7) = (!\reset~input_o\ & ((GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp\(7))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp\(7),
	datab => \reset~input_o\,
	datac => \ULA1|Mux25~0clkctrl_outclk\,
	datad => \ULA1|Add0~30_combout\,
	combout => \ULA1|temp\(7));

-- Location: LCCOMB_X32_Y29_N30
\ULA1|N\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|N~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((\ULA1|temp\(7)))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\ULA1|N~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|N~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => \ULA1|temp\(7),
	combout => \ULA1|N~combout\);

-- Location: LCCOMB_X31_Y29_N26
\RegA|temp[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegA|temp[0]~0_combout\ = (\ULA1|N~combout\) # ((\ULA1|saida\(6)) # (\ULA1|saida\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|N~combout\,
	datac => \ULA1|saida\(6),
	datad => \ULA1|saida\(1),
	combout => \RegA|temp[0]~0_combout\);

-- Location: LCCOMB_X31_Y29_N24
\RAM1|RAM_OUT[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT[7]~0_combout\ = (!\ULA1|saida\(3) & (!\ULA1|saida\(5) & (!\ULA1|saida\(2) & !\ULA1|saida\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|saida\(3),
	datab => \ULA1|saida\(5),
	datac => \ULA1|saida\(2),
	datad => \ULA1|saida\(4),
	combout => \RAM1|RAM_OUT[7]~0_combout\);

-- Location: LCCOMB_X31_Y29_N8
\RegA|temp[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegA|temp[0]~1_combout\ = (\A_sel[1]~input_o\ & (((\RegA|temp[0]~0_combout\) # (!\RAM1|RAM_OUT[7]~0_combout\)) # (!\A_sel[0]~input_o\))) # (!\A_sel[1]~input_o\ & (!\A_sel[0]~input_o\ & ((\RegA|temp[0]~0_combout\) # (!\RAM1|RAM_OUT[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_sel[1]~input_o\,
	datab => \A_sel[0]~input_o\,
	datac => \RegA|temp[0]~0_combout\,
	datad => \RAM1|RAM_OUT[7]~0_combout\,
	combout => \RegA|temp[0]~1_combout\);

-- Location: LCCOMB_X32_Y31_N16
\muxA[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[1]~2_combout\ = (\RegA|temp[0]~2_combout\ & (((\RegA|temp[0]~1_combout\)))) # (!\RegA|temp[0]~2_combout\ & ((\RegA|temp[0]~1_combout\ & ((\RAM1|altsyncram_component|auto_generated|q_a\(1)))) # (!\RegA|temp[0]~1_combout\ & (\RAM_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_IN[1]~input_o\,
	datab => \RegA|temp[0]~2_combout\,
	datac => \RegA|temp[0]~1_combout\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(1),
	combout => \muxA[1]~2_combout\);

-- Location: LCCOMB_X32_Y31_N14
\muxA[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[1]~3_combout\ = (\RegA|temp[0]~2_combout\ & ((\muxA[1]~2_combout\ & (\RegB|temp\(1))) # (!\muxA[1]~2_combout\ & ((\ULA1|saida\(1)))))) # (!\RegA|temp[0]~2_combout\ & (((\muxA[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|temp\(1),
	datab => \RegA|temp[0]~2_combout\,
	datac => \ULA1|saida\(1),
	datad => \muxA[1]~2_combout\,
	combout => \muxA[1]~3_combout\);

-- Location: FF_X32_Y31_N15
\RegA|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \muxA[1]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \A_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|temp\(1));

-- Location: LCCOMB_X32_Y31_N8
\ULA1|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux6~0_combout\ = (\ULA_ctrl[3]~input_o\) # ((\Buss_C_ctrl~input_o\ & ((\RegA|temp\(1)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegPC|temp\(1),
	datad => \RegA|temp\(1),
	combout => \ULA1|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y28_N14
\ULA1|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux6~2_combout\ = (\ULA1|Mux2~2_combout\ & (\signed_D[1]~3_combout\ & ((\signed_C[1]~3_combout\) # (!\ULA1|Mux2~3_combout\)))) # (!\ULA1|Mux2~2_combout\ & (((\ULA1|Mux2~3_combout\) # (\signed_C[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~2_combout\,
	datab => \signed_D[1]~3_combout\,
	datac => \ULA1|Mux2~3_combout\,
	datad => \signed_C[1]~3_combout\,
	combout => \ULA1|Mux6~2_combout\);

-- Location: LCCOMB_X30_Y28_N18
\ULA1|temp_mult[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(9) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|temp_mult\(9),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[9]~18_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(9));

-- Location: LCCOMB_X30_Y28_N22
\ULA1|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux6~3_combout\ = (\ULA1|Mux6~2_combout\ & ((\ULA1|Mux2~2_combout\) # ((\ULA1|temp_mult\(9)) # (!\ULA1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~2_combout\,
	datab => \ULA1|Mux2~3_combout\,
	datac => \ULA1|Mux6~2_combout\,
	datad => \ULA1|temp_mult\(9),
	combout => \ULA1|Mux6~3_combout\);

-- Location: LCCOMB_X30_Y28_N28
\ULA1|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux6~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\signed_D[1]~3_combout\) # (\signed_C[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_C[1]~3_combout\,
	combout => \ULA1|Mux6~1_combout\);

-- Location: LCCOMB_X30_Y28_N26
\ULA1|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux6~4_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA1|Mux2~4_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((\ULA1|Mux2~4_combout\ & ((\ULA1|Mux6~1_combout\))) # (!\ULA1|Mux2~4_combout\ & (\ULA1|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA1|Mux2~4_combout\,
	datac => \ULA1|Mux6~3_combout\,
	datad => \ULA1|Mux6~1_combout\,
	combout => \ULA1|Mux6~4_combout\);

-- Location: LCCOMB_X30_Y28_N10
\ULA1|temp_mult[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(1) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\)) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|temp_mult\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[1]~2_combout\,
	datac => \ULA1|Mux25~0clkctrl_outclk\,
	datad => \ULA1|temp_mult\(1),
	combout => \ULA1|temp_mult\(1));

-- Location: LCCOMB_X30_Y28_N4
\ULA1|Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux6~5_combout\ = (\ULA1|Mux2~1_combout\ & ((\ULA1|Mux6~4_combout\ & (!\ULA1|Mux6~0_combout\)) # (!\ULA1|Mux6~4_combout\ & ((\ULA1|temp_mult\(1)))))) # (!\ULA1|Mux2~1_combout\ & (((\ULA1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~1_combout\,
	datab => \ULA1|Mux6~0_combout\,
	datac => \ULA1|Mux6~4_combout\,
	datad => \ULA1|temp_mult\(1),
	combout => \ULA1|Mux6~5_combout\);

-- Location: LCCOMB_X30_Y28_N30
\ULA1|Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~31_combout\ = (\ULA1|Add0~1_combout\ & ((\ULA1|Mux6~5_combout\) # ((\ULA1|Mux2~0_combout\ & \ULA1|Add0~11_combout\)))) # (!\ULA1|Add0~1_combout\ & (\ULA1|Mux2~0_combout\ & ((\ULA1|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~1_combout\,
	datab => \ULA1|Mux2~0_combout\,
	datac => \ULA1|Mux6~5_combout\,
	datad => \ULA1|Add0~11_combout\,
	combout => \ULA1|Add0~31_combout\);

-- Location: LCCOMB_X30_Y28_N2
\ULA1|temp[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp\(1) = (!\reset~input_o\ & ((GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp\(1))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Add0~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ULA1|temp\(1),
	datac => \ULA1|Add0~31_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp\(1));

-- Location: LCCOMB_X30_Y28_N20
\ULA1|saida[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|saida\(1) = (\ULA_en~input_o\ & ((\ULA1|temp\(1)))) # (!\ULA_en~input_o\ & (\ULA1|saida\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|saida\(1),
	datac => \ULA_en~input_o\,
	datad => \ULA1|temp\(1),
	combout => \ULA1|saida\(1));

-- Location: FF_X32_Y29_N5
\RegB|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|temp\(0));

-- Location: LCCOMB_X32_Y29_N0
\signed_D[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_D[0]~4_combout\ = (\Buss_D_ctrl~input_o\ & ((\RegB|temp\(0)))) # (!\Buss_D_ctrl~input_o\ & (\RegIR|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Buss_D_ctrl~input_o\,
	datac => \RegIR|temp\(0),
	datad => \RegB|temp\(0),
	combout => \signed_D[0]~4_combout\);

-- Location: LCCOMB_X32_Y29_N14
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) = \signed_D[1]~3_combout\ $ (((\signed_D[0]~4_combout\ & \signed_C[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signed_D[0]~4_combout\,
	datac => \signed_D[1]~3_combout\,
	datad => \signed_C[0]~4_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0));

-- Location: LCCOMB_X32_Y29_N8
\ULA1|temp_mult[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(0) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\)) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|temp_mult\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[0]~0_combout\,
	datac => \ULA1|temp_mult\(0),
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(0));

-- Location: LCCOMB_X32_Y29_N18
\ULA1|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux24~0_combout\ = (\ULA_ctrl[3]~input_o\) # ((\Buss_C_ctrl~input_o\ & ((\RegA|temp\(0)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegPC|temp\(0),
	datad => \RegA|temp\(0),
	combout => \ULA1|Mux24~0_combout\);

-- Location: LCCOMB_X32_Y29_N4
\ULA1|Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux24~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\signed_D[0]~4_combout\) # (\signed_C[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \signed_D[0]~4_combout\,
	datad => \signed_C[0]~4_combout\,
	combout => \ULA1|Mux24~1_combout\);

-- Location: LCCOMB_X32_Y29_N22
\ULA1|Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux24~2_combout\ = (\ULA1|Mux2~2_combout\ & (\signed_D[0]~4_combout\ & ((\signed_C[0]~4_combout\) # (!\ULA1|Mux2~3_combout\)))) # (!\ULA1|Mux2~2_combout\ & ((\signed_C[0]~4_combout\) # ((\ULA1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[0]~4_combout\,
	datab => \signed_D[0]~4_combout\,
	datac => \ULA1|Mux2~3_combout\,
	datad => \ULA1|Mux2~2_combout\,
	combout => \ULA1|Mux24~2_combout\);

-- Location: LCCOMB_X32_Y29_N28
\ULA1|temp_mult[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(8) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|temp_mult\(8),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[8]~16_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(8));

-- Location: LCCOMB_X32_Y29_N12
\ULA1|Mux24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux24~3_combout\ = (\ULA1|Mux24~2_combout\ & (((\ULA1|Mux2~2_combout\) # (\ULA1|temp_mult\(8))) # (!\ULA1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~3_combout\,
	datab => \ULA1|Mux2~2_combout\,
	datac => \ULA1|Mux24~2_combout\,
	datad => \ULA1|temp_mult\(8),
	combout => \ULA1|Mux24~3_combout\);

-- Location: LCCOMB_X32_Y29_N2
\ULA1|Mux24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux24~4_combout\ = (\ULA_ctrl[2]~input_o\ & (((!\ULA1|Mux2~4_combout\)))) # (!\ULA_ctrl[2]~input_o\ & ((\ULA1|Mux2~4_combout\ & (\ULA1|Mux24~1_combout\)) # (!\ULA1|Mux2~4_combout\ & ((\ULA1|Mux24~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA1|Mux24~1_combout\,
	datac => \ULA1|Mux2~4_combout\,
	datad => \ULA1|Mux24~3_combout\,
	combout => \ULA1|Mux24~4_combout\);

-- Location: LCCOMB_X32_Y29_N6
\ULA1|Mux24~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux24~5_combout\ = (\ULA1|Mux2~1_combout\ & ((\ULA1|Mux24~4_combout\ & ((!\ULA1|Mux24~0_combout\))) # (!\ULA1|Mux24~4_combout\ & (\ULA1|temp_mult\(0))))) # (!\ULA1|Mux2~1_combout\ & (((\ULA1|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~1_combout\,
	datab => \ULA1|temp_mult\(0),
	datac => \ULA1|Mux24~0_combout\,
	datad => \ULA1|Mux24~4_combout\,
	combout => \ULA1|Mux24~5_combout\);

-- Location: LCCOMB_X32_Y29_N20
\ULA1|Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~35_combout\ = (\ULA1|Add0~9_combout\ & ((\ULA1|Mux2~0_combout\) # ((\ULA1|Add0~1_combout\ & \ULA1|Mux24~5_combout\)))) # (!\ULA1|Add0~9_combout\ & (((\ULA1|Add0~1_combout\ & \ULA1|Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~9_combout\,
	datab => \ULA1|Mux2~0_combout\,
	datac => \ULA1|Add0~1_combout\,
	datad => \ULA1|Mux24~5_combout\,
	combout => \ULA1|Add0~35_combout\);

-- Location: LCCOMB_X31_Y29_N28
\ULA1|temp[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp\(0) = (!\reset~input_o\ & ((GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp\(0))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Add0~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ULA1|temp\(0),
	datac => \ULA1|Add0~35_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp\(0));

-- Location: LCCOMB_X31_Y29_N30
\ULA1|saida[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|saida\(0) = (\ULA_en~input_o\ & ((\ULA1|temp\(0)))) # (!\ULA_en~input_o\ & (\ULA1|saida\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|saida\(0),
	datac => \ULA_en~input_o\,
	datad => \ULA1|temp\(0),
	combout => \ULA1|saida\(0));

-- Location: LCCOMB_X31_Y31_N16
\signed_D[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_D[3]~1_combout\ = (\Buss_D_ctrl~input_o\ & (\RegB|temp\(3))) # (!\Buss_D_ctrl~input_o\ & ((\RegIR|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Buss_D_ctrl~input_o\,
	datac => \RegB|temp\(3),
	datad => \RegIR|temp\(3),
	combout => \signed_D[3]~1_combout\);

-- Location: LCCOMB_X31_Y31_N12
\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) = (\signed_C[7]~6_combout\ & (!\signed_D[3]~1_combout\ & (\signed_D[1]~3_combout\ $ (\signed_D[2]~2_combout\)))) # (!\signed_C[7]~6_combout\ & (\signed_D[3]~1_combout\ $ 
-- (((\signed_D[1]~3_combout\ & \signed_D[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[1]~3_combout\,
	datab => \signed_D[3]~1_combout\,
	datac => \signed_C[7]~6_combout\,
	datad => \signed_D[2]~2_combout\,
	combout => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8));

-- Location: LCCOMB_X30_Y29_N10
\ULA1|temp_mult[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(11) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp_mult\(11),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[11]~22_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(11));

-- Location: LCCOMB_X30_Y29_N14
\ULA1|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux4~3_combout\ = (\ULA1|Mux4~2_combout\ & ((\ULA1|Mux2~2_combout\) # ((\ULA1|temp_mult\(11)) # (!\ULA1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux4~2_combout\,
	datab => \ULA1|Mux2~2_combout\,
	datac => \ULA1|Mux2~3_combout\,
	datad => \ULA1|temp_mult\(11),
	combout => \ULA1|Mux4~3_combout\);

-- Location: LCCOMB_X30_Y29_N18
\ULA1|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux4~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\signed_D[3]~1_combout\) # (\signed_C[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_D[3]~1_combout\,
	datab => \ULA_ctrl[3]~input_o\,
	datad => \signed_C[3]~1_combout\,
	combout => \ULA1|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y29_N8
\ULA1|Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux4~4_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA1|Mux2~4_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((\ULA1|Mux2~4_combout\ & ((\ULA1|Mux4~1_combout\))) # (!\ULA1|Mux2~4_combout\ & (\ULA1|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA1|Mux2~4_combout\,
	datac => \ULA1|Mux4~3_combout\,
	datad => \ULA1|Mux4~1_combout\,
	combout => \ULA1|Mux4~4_combout\);

-- Location: LCCOMB_X30_Y29_N28
\ULA1|temp_mult[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(3) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|temp_mult\(3),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[3]~6_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(3));

-- Location: LCCOMB_X30_Y29_N30
\ULA1|Mux4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux4~5_combout\ = (\ULA1|Mux2~1_combout\ & ((\ULA1|Mux4~4_combout\ & (!\ULA1|Mux4~0_combout\)) # (!\ULA1|Mux4~4_combout\ & ((\ULA1|temp_mult\(3)))))) # (!\ULA1|Mux2~1_combout\ & (((\ULA1|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux4~0_combout\,
	datab => \ULA1|Mux2~1_combout\,
	datac => \ULA1|Mux4~4_combout\,
	datad => \ULA1|temp_mult\(3),
	combout => \ULA1|Mux4~5_combout\);

-- Location: LCCOMB_X31_Y32_N16
\ULA1|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~15_combout\ = ((\ULA1|Add0~3_combout\ $ (\signed_C[3]~1_combout\ $ (!\ULA1|Add0~14\)))) # (GND)
-- \ULA1|Add0~16\ = CARRY((\ULA1|Add0~3_combout\ & ((\signed_C[3]~1_combout\) # (!\ULA1|Add0~14\))) # (!\ULA1|Add0~3_combout\ & (\signed_C[3]~1_combout\ & !\ULA1|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~3_combout\,
	datab => \signed_C[3]~1_combout\,
	datad => VCC,
	cin => \ULA1|Add0~14\,
	combout => \ULA1|Add0~15_combout\,
	cout => \ULA1|Add0~16\);

-- Location: LCCOMB_X30_Y29_N0
\ULA1|Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~33_combout\ = (\ULA1|Mux2~0_combout\ & ((\ULA1|Add0~15_combout\) # ((\ULA1|Add0~1_combout\ & \ULA1|Mux4~5_combout\)))) # (!\ULA1|Mux2~0_combout\ & (\ULA1|Add0~1_combout\ & (\ULA1|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~0_combout\,
	datab => \ULA1|Add0~1_combout\,
	datac => \ULA1|Mux4~5_combout\,
	datad => \ULA1|Add0~15_combout\,
	combout => \ULA1|Add0~33_combout\);

-- Location: LCCOMB_X31_Y29_N18
\ULA1|temp[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp\(3) = (!\reset~input_o\ & ((GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp\(3))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Add0~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ULA1|temp\(3),
	datac => \ULA1|Add0~33_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp\(3));

-- Location: LCCOMB_X31_Y29_N22
\ULA1|saida[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|saida\(3) = (\ULA_en~input_o\ & ((\ULA1|temp\(3)))) # (!\ULA_en~input_o\ & (\ULA1|saida\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|saida\(3),
	datac => \ULA_en~input_o\,
	datad => \ULA1|temp\(3),
	combout => \ULA1|saida\(3));

-- Location: FF_X31_Y31_N17
\RegB|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|temp\(3));

-- Location: LCCOMB_X32_Y31_N2
\muxA[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[3]~6_combout\ = (\RegA|temp[0]~1_combout\ & (((\RAM1|altsyncram_component|auto_generated|q_a\(3)) # (\RegA|temp[0]~2_combout\)))) # (!\RegA|temp[0]~1_combout\ & (\RAM_IN[3]~input_o\ & ((!\RegA|temp[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_IN[3]~input_o\,
	datab => \RegA|temp[0]~1_combout\,
	datac => \RAM1|altsyncram_component|auto_generated|q_a\(3),
	datad => \RegA|temp[0]~2_combout\,
	combout => \muxA[3]~6_combout\);

-- Location: LCCOMB_X32_Y31_N4
\muxA[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \muxA[3]~7_combout\ = (\RegA|temp[0]~2_combout\ & ((\muxA[3]~6_combout\ & ((\RegB|temp\(3)))) # (!\muxA[3]~6_combout\ & (\ULA1|saida\(3))))) # (!\RegA|temp[0]~2_combout\ & (((\muxA[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|saida\(3),
	datab => \RegA|temp[0]~2_combout\,
	datac => \RegB|temp\(3),
	datad => \muxA[3]~6_combout\,
	combout => \muxA[3]~7_combout\);

-- Location: FF_X32_Y31_N5
\RegA|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \muxA[3]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \A_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|temp\(3));

-- Location: LCCOMB_X32_Y31_N22
\signed_C[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signed_C[3]~1_combout\ = (\Buss_C_ctrl~input_o\ & ((\RegA|temp\(3)))) # (!\Buss_C_ctrl~input_o\ & (\RegPC|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPC|temp\(3),
	datab => \Buss_C_ctrl~input_o\,
	datac => \RegA|temp\(3),
	combout => \signed_C[3]~1_combout\);

-- Location: LCCOMB_X29_Y32_N26
\ULA1|temp_mult[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(4) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\)) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|temp_mult\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[4]~8_combout\,
	datac => \ULA1|temp_mult\(4),
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(4));

-- Location: LCCOMB_X29_Y32_N4
\ULA1|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux3~1_combout\ = (!\ULA_ctrl[3]~input_o\ & ((\signed_C[4]~0_combout\) # (\signed_D[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[3]~input_o\,
	datab => \signed_C[4]~0_combout\,
	datad => \signed_D[4]~0_combout\,
	combout => \ULA1|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y32_N14
\ULA1|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux3~2_combout\ = (\ULA1|Mux2~2_combout\ & (\signed_D[4]~0_combout\ & ((\signed_C[4]~0_combout\) # (!\ULA1|Mux2~3_combout\)))) # (!\ULA1|Mux2~2_combout\ & ((\signed_C[4]~0_combout\) # ((\ULA1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signed_C[4]~0_combout\,
	datab => \signed_D[4]~0_combout\,
	datac => \ULA1|Mux2~2_combout\,
	datad => \ULA1|Mux2~3_combout\,
	combout => \ULA1|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y32_N24
\ULA1|temp_mult[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp_mult\(12) = (GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp_mult\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|temp_mult\(12),
	datac => \ULA1|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add9_result[12]~24_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp_mult\(12));

-- Location: LCCOMB_X29_Y32_N16
\ULA1|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux3~3_combout\ = (\ULA1|Mux3~2_combout\ & (((\ULA1|Mux2~2_combout\) # (\ULA1|temp_mult\(12))) # (!\ULA1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux2~3_combout\,
	datab => \ULA1|Mux2~2_combout\,
	datac => \ULA1|Mux3~2_combout\,
	datad => \ULA1|temp_mult\(12),
	combout => \ULA1|Mux3~3_combout\);

-- Location: LCCOMB_X29_Y32_N10
\ULA1|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux3~4_combout\ = (\ULA_ctrl[2]~input_o\ & (!\ULA1|Mux2~4_combout\)) # (!\ULA_ctrl[2]~input_o\ & ((\ULA1|Mux2~4_combout\ & (\ULA1|Mux3~1_combout\)) # (!\ULA1|Mux2~4_combout\ & ((\ULA1|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ctrl[2]~input_o\,
	datab => \ULA1|Mux2~4_combout\,
	datac => \ULA1|Mux3~1_combout\,
	datad => \ULA1|Mux3~3_combout\,
	combout => \ULA1|Mux3~4_combout\);

-- Location: LCCOMB_X29_Y32_N8
\ULA1|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Mux3~5_combout\ = (\ULA1|Mux2~1_combout\ & ((\ULA1|Mux3~4_combout\ & (!\ULA1|Mux3~0_combout\)) # (!\ULA1|Mux3~4_combout\ & ((\ULA1|temp_mult\(4)))))) # (!\ULA1|Mux2~1_combout\ & (((\ULA1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Mux3~0_combout\,
	datab => \ULA1|Mux2~1_combout\,
	datac => \ULA1|temp_mult\(4),
	datad => \ULA1|Mux3~4_combout\,
	combout => \ULA1|Mux3~5_combout\);

-- Location: LCCOMB_X30_Y32_N26
\ULA1|Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Add0~19_combout\ = (\ULA1|Add0~1_combout\ & ((\ULA1|Mux3~5_combout\) # ((\ULA1|Add0~17_combout\ & \ULA1|Mux2~0_combout\)))) # (!\ULA1|Add0~1_combout\ & (\ULA1|Add0~17_combout\ & (\ULA1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|Add0~1_combout\,
	datab => \ULA1|Add0~17_combout\,
	datac => \ULA1|Mux2~0_combout\,
	datad => \ULA1|Mux3~5_combout\,
	combout => \ULA1|Add0~19_combout\);

-- Location: LCCOMB_X30_Y32_N30
\ULA1|temp[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|temp\(4) = (!\reset~input_o\ & ((GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & (\ULA1|temp\(4))) # (!GLOBAL(\ULA1|Mux25~0clkctrl_outclk\) & ((\ULA1|Add0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp\(4),
	datab => \reset~input_o\,
	datac => \ULA1|Add0~19_combout\,
	datad => \ULA1|Mux25~0clkctrl_outclk\,
	combout => \ULA1|temp\(4));

-- Location: LCCOMB_X31_Y29_N4
\ULA1|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Equal0~1_combout\ = (!\ULA1|temp\(6) & !\ULA1|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|temp\(6),
	datad => \ULA1|temp\(0),
	combout => \ULA1|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y29_N10
\ULA1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Equal0~0_combout\ = (!\ULA1|temp\(3) & (!\ULA1|temp\(1) & (!\ULA1|temp\(7) & !\ULA1|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp\(3),
	datab => \ULA1|temp\(1),
	datac => \ULA1|temp\(7),
	datad => \ULA1|temp\(2),
	combout => \ULA1|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y29_N0
\ULA1|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Equal0~2_combout\ = (!\ULA1|temp\(5) & (!\ULA1|temp\(4) & (\ULA1|Equal0~1_combout\ & \ULA1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|temp\(5),
	datab => \ULA1|temp\(4),
	datac => \ULA1|Equal0~1_combout\,
	datad => \ULA1|Equal0~0_combout\,
	combout => \ULA1|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y29_N2
\ULA1|Z\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ULA1|Z~combout\ = (GLOBAL(\ULA_en~inputclkctrl_outclk\) & ((\ULA1|Equal0~2_combout\))) # (!GLOBAL(\ULA_en~inputclkctrl_outclk\) & (\ULA1|Z~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|Z~combout\,
	datac => \ULA_en~inputclkctrl_outclk\,
	datad => \ULA1|Equal0~2_combout\,
	combout => \ULA1|Z~combout\);

-- Location: LCCOMB_X32_Y29_N24
\RAM1|RAM_OUT[7]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT[7]~1_combout\ = (!\ULA1|saida\(6) & (!\ULA1|N~combout\ & \RAM1|RAM_OUT[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|saida\(6),
	datac => \ULA1|N~combout\,
	datad => \RAM1|RAM_OUT[7]~0_combout\,
	combout => \RAM1|RAM_OUT[7]~1_combout\);

-- Location: LCCOMB_X32_Y29_N26
\RAM1|RAM_OUT[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT[7]~2_combout\ = ((\ULA1|saida\(0)) # (!\RAM1|RAM_OUT[7]~1_combout\)) # (!\ULA1|saida\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|saida\(1),
	datab => \ULA1|saida\(0),
	datad => \RAM1|RAM_OUT[7]~1_combout\,
	combout => \RAM1|RAM_OUT[7]~2_combout\);

-- Location: CLKCTRL_G13
\RAM1|RAM_OUT[7]~2clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM1|RAM_OUT[7]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM1|RAM_OUT[7]~2clkctrl_outclk\);

-- Location: LCCOMB_X34_Y30_N4
\RAM1|RAM_OUT[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT\(0) = (GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\RAM1|RAM_OUT\(0))) # (!GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\RAM1|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|RAM_OUT\(0),
	datac => \RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(0),
	combout => \RAM1|RAM_OUT\(0));

-- Location: LCCOMB_X32_Y30_N30
\RAM1|RAM_OUT[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT\(1) = (GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\RAM1|RAM_OUT\(1))) # (!GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\RAM1|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|RAM_OUT\(1),
	datac => \RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(1),
	combout => \RAM1|RAM_OUT\(1));

-- Location: LCCOMB_X32_Y30_N20
\RAM1|RAM_OUT[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT\(2) = (GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\RAM1|RAM_OUT\(2))) # (!GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\RAM1|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|RAM_OUT\(2),
	datac => \RAM1|altsyncram_component|auto_generated|q_a\(2),
	datad => \RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	combout => \RAM1|RAM_OUT\(2));

-- Location: LCCOMB_X34_Y30_N18
\RAM1|RAM_OUT[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT\(3) = (GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\RAM1|RAM_OUT\(3))) # (!GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\RAM1|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|RAM_OUT\(3),
	datac => \RAM1|altsyncram_component|auto_generated|q_a\(3),
	datad => \RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	combout => \RAM1|RAM_OUT\(3));

-- Location: LCCOMB_X34_Y30_N16
\RAM1|RAM_OUT[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT\(4) = (GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\RAM1|RAM_OUT\(4))) # (!GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\RAM1|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|RAM_OUT\(4),
	datac => \RAM1|altsyncram_component|auto_generated|q_a\(4),
	datad => \RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	combout => \RAM1|RAM_OUT\(4));

-- Location: LCCOMB_X32_Y30_N22
\RAM1|RAM_OUT[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT\(5) = (GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\RAM1|RAM_OUT\(5))) # (!GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\RAM1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|RAM_OUT\(5),
	datac => \RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(5),
	combout => \RAM1|RAM_OUT\(5));

-- Location: LCCOMB_X34_Y30_N30
\RAM1|RAM_OUT[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT\(6) = (GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\RAM1|RAM_OUT\(6))) # (!GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\RAM1|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|RAM_OUT\(6),
	datac => \RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(6),
	combout => \RAM1|RAM_OUT\(6));

-- Location: LCCOMB_X34_Y30_N8
\RAM1|RAM_OUT[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM1|RAM_OUT\(7) = (GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & (\RAM1|RAM_OUT\(7))) # (!GLOBAL(\RAM1|RAM_OUT[7]~2clkctrl_outclk\) & ((\RAM1|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|RAM_OUT\(7),
	datac => \RAM1|RAM_OUT[7]~2clkctrl_outclk\,
	datad => \RAM1|altsyncram_component|auto_generated|q_a\(7),
	combout => \RAM1|RAM_OUT\(7));

-- Location: FF_X32_Y30_N13
\RegPC|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ULA1|saida\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|temp\(2));

-- Location: LCCOMB_X32_Y31_N26
\RegPC|temp[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegPC|temp[3]~feeder_combout\ = \ULA1|saida\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ULA1|saida\(3),
	combout => \RegPC|temp[3]~feeder_combout\);

-- Location: FF_X32_Y31_N27
\RegPC|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPC|temp[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPC|temp\(3));

ww_Z <= \Z~output_o\;

ww_N <= \N~output_o\;

ww_RAM_OUT(0) <= \RAM_OUT[0]~output_o\;

ww_RAM_OUT(1) <= \RAM_OUT[1]~output_o\;

ww_RAM_OUT(2) <= \RAM_OUT[2]~output_o\;

ww_RAM_OUT(3) <= \RAM_OUT[3]~output_o\;

ww_RAM_OUT(4) <= \RAM_OUT[4]~output_o\;

ww_RAM_OUT(5) <= \RAM_OUT[5]~output_o\;

ww_RAM_OUT(6) <= \RAM_OUT[6]~output_o\;

ww_RAM_OUT(7) <= \RAM_OUT[7]~output_o\;

ww_IR(0) <= \IR[0]~output_o\;

ww_IR(1) <= \IR[1]~output_o\;

ww_IR(2) <= \IR[2]~output_o\;

ww_IR(3) <= \IR[3]~output_o\;

ww_IR(4) <= \IR[4]~output_o\;

ww_IR(5) <= \IR[5]~output_o\;

ww_IR(6) <= \IR[6]~output_o\;

ww_IR(7) <= \IR[7]~output_o\;

ww_teste_ULA(0) <= \teste_ULA[0]~output_o\;

ww_teste_ULA(1) <= \teste_ULA[1]~output_o\;

ww_teste_ULA(2) <= \teste_ULA[2]~output_o\;

ww_teste_ULA(3) <= \teste_ULA[3]~output_o\;

ww_teste_ULA(4) <= \teste_ULA[4]~output_o\;

ww_teste_ULA(5) <= \teste_ULA[5]~output_o\;

ww_teste_ULA(6) <= \teste_ULA[6]~output_o\;

ww_teste_ULA(7) <= \teste_ULA[7]~output_o\;

ww_teste_C(0) <= \teste_C[0]~output_o\;

ww_teste_C(1) <= \teste_C[1]~output_o\;

ww_teste_C(2) <= \teste_C[2]~output_o\;

ww_teste_C(3) <= \teste_C[3]~output_o\;

ww_teste_C(4) <= \teste_C[4]~output_o\;

ww_teste_C(5) <= \teste_C[5]~output_o\;

ww_teste_C(6) <= \teste_C[6]~output_o\;

ww_teste_C(7) <= \teste_C[7]~output_o\;

ww_teste_D(0) <= \teste_D[0]~output_o\;

ww_teste_D(1) <= \teste_D[1]~output_o\;

ww_teste_D(2) <= \teste_D[2]~output_o\;

ww_teste_D(3) <= \teste_D[3]~output_o\;

ww_teste_D(4) <= \teste_D[4]~output_o\;

ww_teste_D(5) <= \teste_D[5]~output_o\;

ww_teste_D(6) <= \teste_D[6]~output_o\;

ww_teste_D(7) <= \teste_D[7]~output_o\;
END structure;


