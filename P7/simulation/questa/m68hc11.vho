-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "04/12/2024 07:29:39"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	m68hc11 IS
    PORT (
	Z : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	IRQn : IN std_logic;
	XIRQn : IN std_logic;
	csnn : OUT std_logic;
	ACCA_D : OUT std_logic_vector(7 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(7 DOWNTO 0);
	AP_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	Debug_Q : OUT std_logic_vector(7 DOWNTO 0);
	Debug_Yupa : OUT std_logic_vector(7 DOWNTO 0);
	Edo_Pres : OUT std_logic_vector(11 DOWNTO 0);
	IX : OUT std_logic_vector(15 DOWNTO 0);
	PC_D : OUT std_logic_vector(15 DOWNTO 0);
	X_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END m68hc11;

-- Design Ports Information
-- Z	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csnn	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[15]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[14]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[13]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[12]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[11]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[10]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[9]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[8]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[7]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[11]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[12]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[11]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[10]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[9]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[8]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[5]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[3]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[15]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[14]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[13]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[12]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[11]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[10]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[9]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[7]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[6]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[3]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[15]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[14]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[13]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[12]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[10]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[8]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[3]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m68hc11 IS
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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_IRQn : std_logic;
SIGNAL ww_XIRQn : std_logic;
SIGNAL ww_csnn : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Debug_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Debug_Yupa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Edo_Pres : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_IX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_X_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|inst13|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \csnn~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AP_D[15]~output_o\ : std_logic;
SIGNAL \AP_D[14]~output_o\ : std_logic;
SIGNAL \AP_D[13]~output_o\ : std_logic;
SIGNAL \AP_D[12]~output_o\ : std_logic;
SIGNAL \AP_D[11]~output_o\ : std_logic;
SIGNAL \AP_D[10]~output_o\ : std_logic;
SIGNAL \AP_D[9]~output_o\ : std_logic;
SIGNAL \AP_D[8]~output_o\ : std_logic;
SIGNAL \AP_D[7]~output_o\ : std_logic;
SIGNAL \AP_D[6]~output_o\ : std_logic;
SIGNAL \AP_D[5]~output_o\ : std_logic;
SIGNAL \AP_D[4]~output_o\ : std_logic;
SIGNAL \AP_D[3]~output_o\ : std_logic;
SIGNAL \AP_D[2]~output_o\ : std_logic;
SIGNAL \AP_D[1]~output_o\ : std_logic;
SIGNAL \AP_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \Debug_Q[7]~output_o\ : std_logic;
SIGNAL \Debug_Q[6]~output_o\ : std_logic;
SIGNAL \Debug_Q[5]~output_o\ : std_logic;
SIGNAL \Debug_Q[4]~output_o\ : std_logic;
SIGNAL \Debug_Q[3]~output_o\ : std_logic;
SIGNAL \Debug_Q[2]~output_o\ : std_logic;
SIGNAL \Debug_Q[1]~output_o\ : std_logic;
SIGNAL \Debug_Q[0]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[7]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[6]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[5]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[4]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[3]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[2]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[1]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[0]~output_o\ : std_logic;
SIGNAL \Edo_Pres[11]~output_o\ : std_logic;
SIGNAL \Edo_Pres[10]~output_o\ : std_logic;
SIGNAL \Edo_Pres[9]~output_o\ : std_logic;
SIGNAL \Edo_Pres[8]~output_o\ : std_logic;
SIGNAL \Edo_Pres[7]~output_o\ : std_logic;
SIGNAL \Edo_Pres[6]~output_o\ : std_logic;
SIGNAL \Edo_Pres[5]~output_o\ : std_logic;
SIGNAL \Edo_Pres[4]~output_o\ : std_logic;
SIGNAL \Edo_Pres[3]~output_o\ : std_logic;
SIGNAL \Edo_Pres[2]~output_o\ : std_logic;
SIGNAL \Edo_Pres[1]~output_o\ : std_logic;
SIGNAL \Edo_Pres[0]~output_o\ : std_logic;
SIGNAL \IX[15]~output_o\ : std_logic;
SIGNAL \IX[14]~output_o\ : std_logic;
SIGNAL \IX[13]~output_o\ : std_logic;
SIGNAL \IX[12]~output_o\ : std_logic;
SIGNAL \IX[11]~output_o\ : std_logic;
SIGNAL \IX[10]~output_o\ : std_logic;
SIGNAL \IX[9]~output_o\ : std_logic;
SIGNAL \IX[8]~output_o\ : std_logic;
SIGNAL \IX[7]~output_o\ : std_logic;
SIGNAL \IX[6]~output_o\ : std_logic;
SIGNAL \IX[5]~output_o\ : std_logic;
SIGNAL \IX[4]~output_o\ : std_logic;
SIGNAL \IX[3]~output_o\ : std_logic;
SIGNAL \IX[2]~output_o\ : std_logic;
SIGNAL \IX[1]~output_o\ : std_logic;
SIGNAL \IX[0]~output_o\ : std_logic;
SIGNAL \PC_D[15]~output_o\ : std_logic;
SIGNAL \PC_D[14]~output_o\ : std_logic;
SIGNAL \PC_D[13]~output_o\ : std_logic;
SIGNAL \PC_D[12]~output_o\ : std_logic;
SIGNAL \PC_D[11]~output_o\ : std_logic;
SIGNAL \PC_D[10]~output_o\ : std_logic;
SIGNAL \PC_D[9]~output_o\ : std_logic;
SIGNAL \PC_D[8]~output_o\ : std_logic;
SIGNAL \PC_D[7]~output_o\ : std_logic;
SIGNAL \PC_D[6]~output_o\ : std_logic;
SIGNAL \PC_D[5]~output_o\ : std_logic;
SIGNAL \PC_D[4]~output_o\ : std_logic;
SIGNAL \PC_D[3]~output_o\ : std_logic;
SIGNAL \PC_D[2]~output_o\ : std_logic;
SIGNAL \PC_D[1]~output_o\ : std_logic;
SIGNAL \PC_D[0]~output_o\ : std_logic;
SIGNAL \X_D[15]~output_o\ : std_logic;
SIGNAL \X_D[14]~output_o\ : std_logic;
SIGNAL \X_D[13]~output_o\ : std_logic;
SIGNAL \X_D[12]~output_o\ : std_logic;
SIGNAL \X_D[11]~output_o\ : std_logic;
SIGNAL \X_D[10]~output_o\ : std_logic;
SIGNAL \X_D[9]~output_o\ : std_logic;
SIGNAL \X_D[8]~output_o\ : std_logic;
SIGNAL \X_D[7]~output_o\ : std_logic;
SIGNAL \X_D[6]~output_o\ : std_logic;
SIGNAL \X_D[5]~output_o\ : std_logic;
SIGNAL \X_D[4]~output_o\ : std_logic;
SIGNAL \X_D[3]~output_o\ : std_logic;
SIGNAL \X_D[2]~output_o\ : std_logic;
SIGNAL \X_D[1]~output_o\ : std_logic;
SIGNAL \X_D[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~5_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~12\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~14\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst14|inst13|nCRI~q\ : std_logic;
SIGNAL \inst14|inst13|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~24\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~10_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~11_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~12_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal15~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal15~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~20_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal19~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~21_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal12~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal9~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal11~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~36_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal10~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~18_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~30_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~31_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~37_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal13~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[14]~50_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~39_combout\ : std_logic;
SIGNAL \inst14|inst13|nWA~q\ : std_logic;
SIGNAL \ACCA|C[5]~2_combout\ : std_logic;
SIGNAL \ACCA|data_out[5]~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~40_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~41_combout\ : std_logic;
SIGNAL \inst14|inst13|nWB~q\ : std_logic;
SIGNAL \ACCB|C[5]~2_combout\ : std_logic;
SIGNAL \ACCB|data_out[5]~2_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~8_combout\ : std_logic;
SIGNAL \inst1|Mux33~0_combout\ : std_logic;
SIGNAL \ACCA|data_out[4]~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal16~0_combout\ : std_logic;
SIGNAL \inst14|inst13|BD~feeder_combout\ : std_logic;
SIGNAL \inst14|inst13|BD~q\ : std_logic;
SIGNAL \inst14|inst9|data[26]~42_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal19~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~34_combout\ : std_logic;
SIGNAL \inst14|inst9|data[48]~43_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA1~q\ : std_logic;
SIGNAL \inst14|inst9|Equal18~0_combout\ : std_logic;
SIGNAL \inst14|inst13|RA[0]~feeder_combout\ : std_logic;
SIGNAL \AUX|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \ACCB|C[7]~0_combout\ : std_logic;
SIGNAL \ACCB|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCA|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~8_combout\ : std_logic;
SIGNAL \ACCA|C[7]~0_combout\ : std_logic;
SIGNAL \inst1|Mux35~0_combout\ : std_logic;
SIGNAL \ACCB|C[6]~1_combout\ : std_logic;
SIGNAL \ACCB|B[7]~0_combout\ : std_logic;
SIGNAL \ACCA|B[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~5_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~7_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~13_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~14_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~q\ : std_logic;
SIGNAL \inst6|data[7]~en_q\ : std_logic;
SIGNAL \inst6|data[7]~1_combout\ : std_logic;
SIGNAL \PC|Add0~16_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~44_combout\ : std_logic;
SIGNAL \PC|Add0~55_combout\ : std_logic;
SIGNAL \PC|Add0~17\ : std_logic;
SIGNAL \PC|Add0~18_combout\ : std_logic;
SIGNAL \ACCA|C[1]~6_combout\ : std_logic;
SIGNAL \ACCA|data_out[1]~6_combout\ : std_logic;
SIGNAL \ACCB|C[1]~6_combout\ : std_logic;
SIGNAL \ACCB|data_out[1]~6_combout\ : std_logic;
SIGNAL \inst1|Mux29~0_combout\ : std_logic;
SIGNAL \inst1|Mux27~0_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~7_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~45_combout\ : std_logic;
SIGNAL \inst14|inst13|CC~q\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst5|inst|valor_interno~q\ : std_logic;
SIGNAL \inst1|Add0~1_cout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~31_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~23_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~2_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~3_combout\ : std_logic;
SIGNAL \ACCB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~35_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA0~q\ : std_logic;
SIGNAL \inst1|Yupa[7]~3_combout\ : std_logic;
SIGNAL \ACCA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~4_combout\ : std_logic;
SIGNAL \AUX|data_out~8_combout\ : std_logic;
SIGNAL \AUX|data_out~9_combout\ : std_logic;
SIGNAL \AUX|data_out~10_combout\ : std_logic;
SIGNAL \AUX|data_out~11_combout\ : std_logic;
SIGNAL \AUX|data_out~12_combout\ : std_logic;
SIGNAL \AUX|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~20_combout\ : std_logic;
SIGNAL \PC|Add0~19\ : std_logic;
SIGNAL \PC|Add0~20_combout\ : std_logic;
SIGNAL \ACCB|C[2]~5_combout\ : std_logic;
SIGNAL \ACCA|C[2]~5_combout\ : std_logic;
SIGNAL \ACCA|data_out[2]~5_combout\ : std_logic;
SIGNAL \inst1|Yupa2[2]~17_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~46_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~19_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~22_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~47_combout\ : std_logic;
SIGNAL \inst14|inst13|nCBD~q\ : std_logic;
SIGNAL \inst16|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem~26_combout\ : std_logic;
SIGNAL \inst6|mem~27_combout\ : std_logic;
SIGNAL \inst6|data[2]~reg0_q\ : std_logic;
SIGNAL \inst1|Yupa2[2]~18_combout\ : std_logic;
SIGNAL \inst1|Yupa2[2]~19_combout\ : std_logic;
SIGNAL \ACCB|data_out[2]~5_combout\ : std_logic;
SIGNAL \inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~23_combout\ : std_logic;
SIGNAL \AUX|data_out~13_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~24_combout\ : std_logic;
SIGNAL \inst6|data[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~25_combout\ : std_logic;
SIGNAL \inst1|Yupa[2]~26_combout\ : std_logic;
SIGNAL \PC|Add0~53_combout\ : std_logic;
SIGNAL \PC|Add0~21\ : std_logic;
SIGNAL \PC|Add0~22_combout\ : std_logic;
SIGNAL \PC|Add0~52_combout\ : std_logic;
SIGNAL \PC|Add0~23\ : std_logic;
SIGNAL \PC|Add0~24_combout\ : std_logic;
SIGNAL \PC|Add0~51_combout\ : std_logic;
SIGNAL \PC|Add0~25\ : std_logic;
SIGNAL \PC|Add0~26_combout\ : std_logic;
SIGNAL \PC|Add0~50_combout\ : std_logic;
SIGNAL \PC|Add0~27\ : std_logic;
SIGNAL \PC|Add0~28_combout\ : std_logic;
SIGNAL \PC|Add0~49_combout\ : std_logic;
SIGNAL \inst16|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \PC|Add0~29\ : std_logic;
SIGNAL \PC|Add0~30_combout\ : std_logic;
SIGNAL \PC|Add0~48_combout\ : std_logic;
SIGNAL \inst16|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem~17_combout\ : std_logic;
SIGNAL \inst6|mem~24_combout\ : std_logic;
SIGNAL \inst6|mem~25_combout\ : std_logic;
SIGNAL \inst6|data[4]~reg0_q\ : std_logic;
SIGNAL \ACCB|C[3]~4_combout\ : std_logic;
SIGNAL \ACCB|data_out[3]~4_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~21_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~22_combout\ : std_logic;
SIGNAL \ACCA|data_out[3]~4_combout\ : std_logic;
SIGNAL \ACCA|C[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~19_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~14_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~15_combout\ : std_logic;
SIGNAL \inst1|Yupa2[3]~16_combout\ : std_logic;
SIGNAL \AUX|data_out~4_combout\ : std_logic;
SIGNAL \AUX|data_out~5_combout\ : std_logic;
SIGNAL \AUX|data_out~6_combout\ : std_logic;
SIGNAL \AUX|data_out~7_combout\ : std_logic;
SIGNAL \inst6|mem~30_combout\ : std_logic;
SIGNAL \inst6|mem~31_combout\ : std_logic;
SIGNAL \inst6|data[0]~reg0_q\ : std_logic;
SIGNAL \inst1|Yupa2[0]~24_combout\ : std_logic;
SIGNAL \inst1|Yupa2[0]~25_combout\ : std_logic;
SIGNAL \ACCA|C[0]~7_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~27_combout\ : std_logic;
SIGNAL \inst1|Yupa2[1]~20_combout\ : std_logic;
SIGNAL \inst6|mem~28_combout\ : std_logic;
SIGNAL \inst6|mem~29_combout\ : std_logic;
SIGNAL \inst6|data[1]~reg0_q\ : std_logic;
SIGNAL \inst1|Yupa2[1]~21_combout\ : std_logic;
SIGNAL \inst1|Yupa2[1]~22_combout\ : std_logic;
SIGNAL \AUX|data_out~14_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~28_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~29_combout\ : std_logic;
SIGNAL \inst1|Yupa[1]~30_combout\ : std_logic;
SIGNAL \PC|Add0~54_combout\ : std_logic;
SIGNAL \inst16|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem~20_combout\ : std_logic;
SIGNAL \inst6|mem~21_combout\ : std_logic;
SIGNAL \inst6|data[6]~reg0_q\ : std_logic;
SIGNAL \inst1|Yupa2[6]~6_combout\ : std_logic;
SIGNAL \inst1|Yupa2[6]~7_combout\ : std_logic;
SIGNAL \ACCB|data_out[6]~1_combout\ : std_logic;
SIGNAL \inst1|Mux34~0_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~6_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~8_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~7_combout\ : std_logic;
SIGNAL \inst1|Yupa[6]~9_combout\ : std_logic;
SIGNAL \ACCA|data_out[6]~1_combout\ : std_logic;
SIGNAL \ACCA|C[6]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Banderas[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~0_combout\ : std_logic;
SIGNAL \inst6|mem~18_combout\ : std_logic;
SIGNAL \inst6|mem~19_combout\ : std_logic;
SIGNAL \inst6|data[7]~reg0_q\ : std_logic;
SIGNAL \inst1|Yupa[7]~2_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~1_combout\ : std_logic;
SIGNAL \inst1|Yupa[7]~5_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~1_combout\ : std_logic;
SIGNAL \inst1|Yupa2[7]~4_combout\ : std_logic;
SIGNAL \AUX|data_out~0_combout\ : std_logic;
SIGNAL \AUX|data_out~1_combout\ : std_logic;
SIGNAL \AUX|data_out~2_combout\ : std_logic;
SIGNAL \AUX|data_out~3_combout\ : std_logic;
SIGNAL \ACCB|C[4]~3_combout\ : std_logic;
SIGNAL \ACCB|data_out[4]~3_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~11_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~12_combout\ : std_logic;
SIGNAL \inst1|Yupa2[4]~13_combout\ : std_logic;
SIGNAL \ACCA|C[4]~3_combout\ : std_logic;
SIGNAL \inst1|Mux32~0_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Yupa_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~11_combout\ : std_logic;
SIGNAL \inst1|Yupa2[5]~8_combout\ : std_logic;
SIGNAL \inst6|mem~22_combout\ : std_logic;
SIGNAL \inst6|mem~23_combout\ : std_logic;
SIGNAL \inst6|data[5]~reg0_q\ : std_logic;
SIGNAL \inst1|Yupa2[5]~9_combout\ : std_logic;
SIGNAL \inst1|Yupa2[5]~10_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~10_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~12_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~13_combout\ : std_logic;
SIGNAL \inst1|Yupa[5]~14_combout\ : std_logic;
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \inst3|IRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|IRQ_flag~q\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \inst3|XIRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|XIRQ_flag~q\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~7_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~8_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal12~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal12~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~48_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~6_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~25_combout\ : std_logic;
SIGNAL \inst14|inst9|data~26_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal5~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~33_combout\ : std_logic;
SIGNAL \inst14|inst13|nDUPA~q\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Banderas[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa[4]~15_combout\ : std_logic;
SIGNAL \inst1|Yupa[4]~16_combout\ : std_logic;
SIGNAL \inst1|Yupa[4]~17_combout\ : std_logic;
SIGNAL \inst1|Yupa[4]~18_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~26\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~28\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst8|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~30\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst8|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal15~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal12~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~38_combout\ : std_logic;
SIGNAL \ACCB|C[0]~7_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~7_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~33_combout\ : std_logic;
SIGNAL \AUX|data_out~15_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~32_combout\ : std_logic;
SIGNAL \inst1|Yupa[0]~34_combout\ : std_logic;
SIGNAL \inst8|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~16\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~18\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~20\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~22\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst8|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[81]~27_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[3]~15_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~4_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~15_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~16_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~17_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal6~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~28_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~2_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~3_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~4_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~8_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal7~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data~9_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~23_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~24_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~49_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~32_combout\ : std_logic;
SIGNAL \inst14|inst13|CZ~q\ : std_logic;
SIGNAL \inst14|inst9|data[14]~29_combout\ : std_logic;
SIGNAL \inst14|inst13|B4~q\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr0~1_combout\ : std_logic;
SIGNAL \inst1|WideOr0~combout\ : std_logic;
SIGNAL \inst14|inst13|B3~q\ : std_logic;
SIGNAL \inst5|inst10|output~0_combout\ : std_logic;
SIGNAL \inst5|inst10|output~1_combout\ : std_logic;
SIGNAL \inst5|inst10|output~2_combout\ : std_logic;
SIGNAL \inst5|inst10|output~4_combout\ : std_logic;
SIGNAL \inst5|inst10|output~3_combout\ : std_logic;
SIGNAL \inst5|inst10|output~5_combout\ : std_logic;
SIGNAL \inst5|inst10|output~6_combout\ : std_logic;
SIGNAL \inst5|inst2|valor_interno~q\ : std_logic;
SIGNAL \inst1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PC|data_out[15]~0_combout\ : std_logic;
SIGNAL \PC|data_out[14]~1_combout\ : std_logic;
SIGNAL \PC|data_out[13]~2_combout\ : std_logic;
SIGNAL \PC|data_out[12]~3_combout\ : std_logic;
SIGNAL \PC|data_out[11]~4_combout\ : std_logic;
SIGNAL \PC|data_out[10]~5_combout\ : std_logic;
SIGNAL \PC|data_out[9]~6_combout\ : std_logic;
SIGNAL \PC|data_out[8]~7_combout\ : std_logic;
SIGNAL \PC|Add0~31\ : std_logic;
SIGNAL \PC|Add0~32_combout\ : std_logic;
SIGNAL \PC|Equal0~0_combout\ : std_logic;
SIGNAL \PC|Add0~33\ : std_logic;
SIGNAL \PC|Add0~34_combout\ : std_logic;
SIGNAL \PC|Add0~35\ : std_logic;
SIGNAL \PC|Add0~36_combout\ : std_logic;
SIGNAL \PC|Add0~37\ : std_logic;
SIGNAL \PC|Add0~38_combout\ : std_logic;
SIGNAL \PC|Add0~39\ : std_logic;
SIGNAL \PC|Add0~40_combout\ : std_logic;
SIGNAL \PC|Add0~41\ : std_logic;
SIGNAL \PC|Add0~42_combout\ : std_logic;
SIGNAL \PC|Add0~43\ : std_logic;
SIGNAL \PC|Add0~44_combout\ : std_logic;
SIGNAL \PC|Add0~45\ : std_logic;
SIGNAL \PC|Add0~46_combout\ : std_logic;
SIGNAL \inst1|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ACCA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACCB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|inst13|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|inst4|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \AUX|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst13|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CC~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nAS~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_nDUPA~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CZ~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Z <= ww_Z;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_IRQn <= IRQn;
ww_XIRQn <= XIRQn;
csnn <= ww_csnn;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AP_D <= ww_AP_D;
AUX_D <= ww_AUX_D;
Debug_Q <= ww_Debug_Q;
Debug_Yupa <= ww_Debug_Yupa;
Edo_Pres <= ww_Edo_Pres;
IX <= ww_IX;
PC_D <= ww_PC_D;
X_D <= ww_X_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst14|inst13|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|inst13|nCRI~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
\inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\ <= NOT \inst14|inst13|nCRI~clkctrl_outclk\;
\inst14|inst13|ALT_INV_CC~q\ <= NOT \inst14|inst13|CC~q\;
\inst14|inst13|ALT_INV_nAS~q\ <= NOT \inst14|inst13|nAS~q\;
\inst14|inst13|ALT_INV_EA\(1) <= NOT \inst14|inst13|EA\(1);
\inst14|inst13|ALT_INV_EA\(0) <= NOT \inst14|inst13|EA\(0);
\inst14|inst13|ALT_INV_nDUPA~q\ <= NOT \inst14|inst13|nDUPA~q\;
\inst14|inst13|ALT_INV_CZ~q\ <= NOT \inst14|inst13|CZ~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X69_Y54_N9
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst2|valor_interno~q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\csnn~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst13|ALT_INV_nAS~q\,
	devoe => ww_devoe,
	o => \csnn~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\ACCA_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\ACCA_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\ACCA_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\ACCA_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\ACCA_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\ACCA_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\ACCA_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\ACCA_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\ACCB_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\ACCB_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\ACCB_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\ACCB_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\ACCB_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\ACCB_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\ACCB_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\ACCB_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\AP_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[15]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\AP_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[14]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\AP_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[13]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\AP_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[12]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\AP_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[11]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\AP_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[10]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\AP_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[9]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\AP_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[8]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\AP_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[7]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\AP_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\AP_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[5]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\AP_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[4]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\AP_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\AP_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\AP_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\AP_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\AUX_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\AUX_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\AUX_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\AUX_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\AUX_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\AUX_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\AUX_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\AUX_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\AUX_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\AUX_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\AUX_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\AUX_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\AUX_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\AUX_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\AUX_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\AUX_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\Debug_Q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Q[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\Debug_Q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(6),
	devoe => ww_devoe,
	o => \Debug_Q[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\Debug_Q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(5),
	devoe => ww_devoe,
	o => \Debug_Q[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\Debug_Q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(4),
	devoe => ww_devoe,
	o => \Debug_Q[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\Debug_Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(3),
	devoe => ww_devoe,
	o => \Debug_Q[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\Debug_Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(2),
	devoe => ww_devoe,
	o => \Debug_Q[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\Debug_Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(1),
	devoe => ww_devoe,
	o => \Debug_Q[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\Debug_Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Q[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\Debug_Yupa[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\Debug_Yupa[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(6),
	devoe => ww_devoe,
	o => \Debug_Yupa[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\Debug_Yupa[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(5),
	devoe => ww_devoe,
	o => \Debug_Yupa[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\Debug_Yupa[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(4),
	devoe => ww_devoe,
	o => \Debug_Yupa[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\Debug_Yupa[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(3),
	devoe => ww_devoe,
	o => \Debug_Yupa[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\Debug_Yupa[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[2]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\Debug_Yupa[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(1),
	devoe => ww_devoe,
	o => \Debug_Yupa[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\Debug_Yupa[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Yupa[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\Edo_Pres[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[11]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\Edo_Pres[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[10]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Edo_Pres[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\Edo_Pres[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[8]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Edo_Pres[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\Edo_Pres[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Edo_Pres[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\Edo_Pres[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\Edo_Pres[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\Edo_Pres[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\Edo_Pres[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Edo_Pres[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\IX[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[15]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\IX[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[14]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\IX[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[13]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\IX[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[12]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\IX[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[11]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\IX[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\IX[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[9]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\IX[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[8]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\IX[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\IX[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\IX[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[5]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\IX[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\IX[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \IX[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\IX[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\IX[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\IX[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\PC_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(15),
	devoe => ww_devoe,
	o => \PC_D[15]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\PC_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(14),
	devoe => ww_devoe,
	o => \PC_D[14]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\PC_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(13),
	devoe => ww_devoe,
	o => \PC_D[13]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\PC_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(12),
	devoe => ww_devoe,
	o => \PC_D[12]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\PC_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(11),
	devoe => ww_devoe,
	o => \PC_D[11]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\PC_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(10),
	devoe => ww_devoe,
	o => \PC_D[10]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\PC_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(9),
	devoe => ww_devoe,
	o => \PC_D[9]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\PC_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(8),
	devoe => ww_devoe,
	o => \PC_D[8]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\PC_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(7),
	devoe => ww_devoe,
	o => \PC_D[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\PC_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(6),
	devoe => ww_devoe,
	o => \PC_D[6]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\PC_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(5),
	devoe => ww_devoe,
	o => \PC_D[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\PC_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(4),
	devoe => ww_devoe,
	o => \PC_D[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\PC_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(3),
	devoe => ww_devoe,
	o => \PC_D[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\PC_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(2),
	devoe => ww_devoe,
	o => \PC_D[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\PC_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(1),
	devoe => ww_devoe,
	o => \PC_D[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\PC_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(0),
	devoe => ww_devoe,
	o => \PC_D[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\X_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\X_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[14]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\X_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[13]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\X_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[12]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\X_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[11]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\X_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\X_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[9]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\X_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[8]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\X_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[7]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\X_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[6]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\X_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\X_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \X_D[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\X_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \X_D[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\X_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \X_D[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\X_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \X_D[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\X_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \X_D[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X63_Y49_N26
\inst14|inst3|SELECTOR~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~5_combout\ = (\inst14|inst3|SELECTOR~4_combout\) # ((!\inst14|inst13|instruccion\(0) & \inst14|inst13|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datab => \inst14|inst13|instruccion\(1),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst3|SELECTOR~5_combout\);

-- Location: LCCOMB_X60_Y49_N4
\inst14|inst4|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[1]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ $ (VCC))) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & 
-- (\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & VCC))
-- \inst14|inst4|valor_interno[1]~12\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datad => VCC,
	combout => \inst14|inst4|valor_interno[1]~11_combout\,
	cout => \inst14|inst4|valor_interno[1]~12\);

-- Location: LCCOMB_X60_Y49_N6
\inst14|inst4|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[2]~13_combout\ = (\inst14|inst4|valor_interno[1]~12\ & (((\inst14|inst3|SELECTOR~5_combout\)) # (!\inst14|inst4|valor_interno\(2)))) # (!\inst14|inst4|valor_interno[1]~12\ & (((\inst14|inst4|valor_interno\(2) & 
-- !\inst14|inst3|SELECTOR~5_combout\)) # (GND)))
-- \inst14|inst4|valor_interno[2]~14\ = CARRY(((\inst14|inst3|SELECTOR~5_combout\) # (!\inst14|inst4|valor_interno[1]~12\)) # (!\inst14|inst4|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(2),
	datab => \inst14|inst3|SELECTOR~5_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[1]~12\,
	combout => \inst14|inst4|valor_interno[2]~13_combout\,
	cout => \inst14|inst4|valor_interno[2]~14\);

-- Location: IOIBUF_X0_Y18_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X60_Y49_N7
\inst14|inst4|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[2]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(2));

-- Location: LCCOMB_X60_Y49_N8
\inst14|inst4|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[3]~15_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ & (\inst14|inst4|valor_interno[2]~14\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ & 
-- (!\inst14|inst4|valor_interno[2]~14\ & VCC))
-- \inst14|inst4|valor_interno[3]~16\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ & !\inst14|inst4|valor_interno[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[2]~14\,
	combout => \inst14|inst4|valor_interno[3]~15_combout\,
	cout => \inst14|inst4|valor_interno[3]~16\);

-- Location: FF_X60_Y49_N9
\inst14|inst4|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[3]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(3));

-- Location: FF_X61_Y49_N13
\inst14|inst13|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal2~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCRI~q\);

-- Location: CLKCTRL_G11
\inst14|inst13|nCRI~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|inst13|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|inst13|nCRI~clkctrl_outclk\);

-- Location: LCCOMB_X60_Y49_N16
\inst14|inst4|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[7]~23_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\ & (\inst14|inst4|valor_interno[6]~22\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\ & 
-- (!\inst14|inst4|valor_interno[6]~22\ & VCC))
-- \inst14|inst4|valor_interno[7]~24\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\ & !\inst14|inst4|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[6]~22\,
	combout => \inst14|inst4|valor_interno[7]~23_combout\,
	cout => \inst14|inst4|valor_interno[7]~24\);

-- Location: LCCOMB_X60_Y49_N18
\inst14|inst4|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[8]~25_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\ & (!\inst14|inst4|valor_interno[7]~24\)) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\ & 
-- ((\inst14|inst4|valor_interno[7]~24\) # (GND)))
-- \inst14|inst4|valor_interno[8]~26\ = CARRY((!\inst14|inst4|valor_interno[7]~24\) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[7]~24\,
	combout => \inst14|inst4|valor_interno[8]~25_combout\,
	cout => \inst14|inst4|valor_interno[8]~26\);

-- Location: FF_X60_Y49_N19
\inst14|inst4|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[8]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(8));

-- Location: FF_X60_Y49_N5
\inst14|inst4|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[1]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(1));

-- Location: LCCOMB_X62_Y50_N0
\inst14|inst4|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[0]~33_combout\ = !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst4|valor_interno[0]~33_combout\);

-- Location: FF_X62_Y50_N1
\inst14|inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[0]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(0));

-- Location: LCCOMB_X61_Y49_N16
\inst14|inst9|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	combout => \inst14|inst9|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y49_N24
\inst14|inst9|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ & \inst14|inst9|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datad => \inst14|inst9|Equal0~0_combout\,
	combout => \inst14|inst9|Equal2~2_combout\);

-- Location: LCCOMB_X61_Y49_N22
\inst14|inst9|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & (\inst14|inst9|Equal2~0_combout\ & \inst14|inst9|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datac => \inst14|inst9|Equal2~0_combout\,
	datad => \inst14|inst9|Equal2~2_combout\,
	combout => \inst14|inst9|Equal3~0_combout\);

-- Location: LCCOMB_X63_Y49_N18
\inst14|inst9|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	combout => \inst14|inst9|Equal4~1_combout\);

-- Location: LCCOMB_X63_Y49_N0
\inst14|inst9|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\ & (\inst14|inst9|Equal2~1_combout\ & \inst14|inst9|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\,
	datac => \inst14|inst9|Equal2~1_combout\,
	datad => \inst14|inst9|Equal4~1_combout\,
	combout => \inst14|inst9|Equal4~2_combout\);

-- Location: LCCOMB_X62_Y48_N0
\inst14|inst9|data[31]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~10_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\) # (!\inst14|inst9|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal4~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	combout => \inst14|inst9|data[31]~10_combout\);

-- Location: LCCOMB_X62_Y48_N30
\inst14|inst9|data[31]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~11_combout\ = (\inst14|inst9|data[31]~10_combout\ & ((!\inst14|inst9|Equal0~1_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datac => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst9|data[31]~10_combout\,
	combout => \inst14|inst9|data[31]~11_combout\);

-- Location: LCCOMB_X62_Y48_N8
\inst14|inst9|data[26]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~12_combout\ = (!\inst14|inst9|Equal3~0_combout\ & (\inst14|inst9|data[31]~11_combout\ & !\inst14|inst9|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal3~0_combout\,
	datac => \inst14|inst9|data[31]~11_combout\,
	datad => \inst14|inst9|Equal6~0_combout\,
	combout => \inst14|inst9|data[26]~12_combout\);

-- Location: LCCOMB_X63_Y49_N2
\inst14|inst9|Equal15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal15~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\ & 
-- \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	combout => \inst14|inst9|Equal15~1_combout\);

-- Location: LCCOMB_X63_Y49_N28
\inst14|inst9|Equal15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal15~2_combout\ = (\inst14|inst9|Equal15~0_combout\ & (\inst14|inst9|Equal15~1_combout\ & ((\inst14|inst3|SELECTOR~5_combout\) # (!\inst14|inst4|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|SELECTOR~5_combout\,
	datab => \inst14|inst4|valor_interno\(2),
	datac => \inst14|inst9|Equal15~0_combout\,
	datad => \inst14|inst9|Equal15~1_combout\,
	combout => \inst14|inst9|Equal15~2_combout\);

-- Location: LCCOMB_X62_Y48_N4
\inst14|inst9|data[32]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~20_combout\ = (\inst14|inst9|data[26]~49_combout\ & ((!\inst14|inst9|Equal15~2_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst9|data[26]~49_combout\,
	datad => \inst14|inst9|Equal15~2_combout\,
	combout => \inst14|inst9|data[32]~20_combout\);

-- Location: LCCOMB_X62_Y50_N18
\inst14|inst9|Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal19~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\ & (\inst14|inst9|Equal15~0_combout\ & \inst14|inst9|Equal15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\,
	datac => \inst14|inst9|Equal15~0_combout\,
	datad => \inst14|inst9|Equal15~1_combout\,
	combout => \inst14|inst9|Equal19~0_combout\);

-- Location: LCCOMB_X62_Y50_N20
\inst14|inst9|data[90]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~21_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & \inst14|inst9|Equal19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datad => \inst14|inst9|Equal19~0_combout\,
	combout => \inst14|inst9|data[90]~21_combout\);

-- Location: LCCOMB_X61_Y48_N26
\inst14|inst9|Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal12~2_combout\ = (\inst14|inst9|Equal12~1_combout\ & \inst14|inst9|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|Equal12~1_combout\,
	datad => \inst14|inst9|Equal15~0_combout\,
	combout => \inst14|inst9|Equal12~2_combout\);

-- Location: LCCOMB_X63_Y48_N24
\inst14|inst9|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal9~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & (\inst14|inst9|Equal2~3_combout\ & \inst14|inst9|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datac => \inst14|inst9|Equal2~3_combout\,
	datad => \inst14|inst9|Equal4~2_combout\,
	combout => \inst14|inst9|Equal9~0_combout\);

-- Location: LCCOMB_X61_Y48_N18
\inst14|inst9|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal11~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & 
-- \inst14|inst9|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datad => \inst14|inst9|Equal4~2_combout\,
	combout => \inst14|inst9|Equal11~0_combout\);

-- Location: LCCOMB_X61_Y48_N8
\inst14|inst9|data[72]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~36_combout\ = (\inst14|inst9|Equal12~2_combout\ & (\inst14|inst9|Equal2~3_combout\ & (!\inst14|inst9|Equal9~0_combout\ & !\inst14|inst9|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal12~2_combout\,
	datab => \inst14|inst9|Equal2~3_combout\,
	datac => \inst14|inst9|Equal9~0_combout\,
	datad => \inst14|inst9|Equal11~0_combout\,
	combout => \inst14|inst9|data[72]~36_combout\);

-- Location: LCCOMB_X63_Y48_N0
\inst14|inst9|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal10~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & 
-- \inst14|inst9|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datad => \inst14|inst9|Equal4~2_combout\,
	combout => \inst14|inst9|Equal10~0_combout\);

-- Location: LCCOMB_X61_Y49_N6
\inst14|inst9|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & (\inst14|inst9|Equal4~2_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datac => \inst14|inst9|Equal4~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	combout => \inst14|inst9|Equal4~3_combout\);

-- Location: LCCOMB_X62_Y49_N8
\inst14|inst9|data[72]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~18_combout\ = ((\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\)))) # (!\inst14|inst9|Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datad => \inst14|inst9|Equal4~2_combout\,
	combout => \inst14|inst9|data[72]~18_combout\);

-- Location: LCCOMB_X61_Y48_N20
\inst14|inst9|data[72]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~30_combout\ = (\inst14|inst9|data[91]~15_combout\ & (!\inst14|inst9|Equal3~0_combout\ & (!\inst14|inst9|Equal4~3_combout\ & \inst14|inst9|data[72]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[91]~15_combout\,
	datab => \inst14|inst9|Equal3~0_combout\,
	datac => \inst14|inst9|Equal4~3_combout\,
	datad => \inst14|inst9|data[72]~18_combout\,
	combout => \inst14|inst9|data[72]~30_combout\);

-- Location: LCCOMB_X61_Y48_N28
\inst14|inst9|data[72]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~31_combout\ = (!\inst14|inst9|Equal6~0_combout\ & (!\inst14|inst9|Equal10~0_combout\ & \inst14|inst9|data[72]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal6~0_combout\,
	datac => \inst14|inst9|Equal10~0_combout\,
	datad => \inst14|inst9|data[72]~30_combout\,
	combout => \inst14|inst9|data[72]~31_combout\);

-- Location: LCCOMB_X61_Y48_N10
\inst14|inst9|data[72]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~37_combout\ = (\inst14|inst9|Equal5~0_combout\) # ((\inst14|inst9|Equal12~3_combout\) # ((\inst14|inst9|data[72]~36_combout\ & \inst14|inst9|data[72]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~36_combout\,
	datab => \inst14|inst9|Equal5~0_combout\,
	datac => \inst14|inst9|Equal12~3_combout\,
	datad => \inst14|inst9|data[72]~31_combout\,
	combout => \inst14|inst9|data[72]~37_combout\);

-- Location: FF_X61_Y48_N11
\inst14|inst13|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[72]~37_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(0));

-- Location: LCCOMB_X61_Y49_N12
\inst14|inst9|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal13~0_combout\ = (\inst14|inst9|Equal15~0_combout\ & (\inst14|inst9|Equal2~3_combout\ & \inst14|inst9|Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal15~0_combout\,
	datab => \inst14|inst9|Equal2~3_combout\,
	datad => \inst14|inst9|Equal12~1_combout\,
	combout => \inst14|inst9|Equal13~0_combout\);

-- Location: LCCOMB_X61_Y49_N26
\inst14|inst9|data[14]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~50_combout\ = (!\inst14|inst9|Equal3~0_combout\ & (!\inst14|inst9|Equal0~1_combout\ & (!\inst14|inst9|Equal2~4_combout\ & !\inst14|inst9|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~0_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst9|Equal2~4_combout\,
	datad => \inst14|inst9|Equal4~3_combout\,
	combout => \inst14|inst9|data[14]~50_combout\);

-- Location: LCCOMB_X61_Y49_N28
\inst14|inst9|data[71]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~39_combout\ = (\inst14|inst9|data[14]~50_combout\ & ((\inst14|inst9|Equal13~0_combout\) # (\inst14|inst9|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal13~0_combout\,
	datac => \inst14|inst9|data[14]~50_combout\,
	datad => \inst14|inst9|Equal5~0_combout\,
	combout => \inst14|inst9|data[71]~39_combout\);

-- Location: FF_X62_Y48_N5
\inst14|inst13|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|data[71]~39_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWA~q\);

-- Location: LCCOMB_X66_Y48_N18
\ACCA|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[5]~2_combout\ = (\ACCA|data_out\(5)) # (((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|nWA~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[5]~2_combout\);

-- Location: LCCOMB_X66_Y48_N6
\ACCA|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[5]~2_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[5]~2_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|C[5]~2_combout\,
	datad => \inst1|Yupa[5]~14_combout\,
	combout => \ACCA|data_out[5]~2_combout\);

-- Location: LCCOMB_X61_Y48_N12
\inst14|inst9|data[72]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~40_combout\ = (!\inst14|inst9|Equal6~0_combout\ & \inst14|inst9|data[72]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal6~0_combout\,
	datad => \inst14|inst9|data[72]~30_combout\,
	combout => \inst14|inst9|data[72]~40_combout\);

-- Location: LCCOMB_X61_Y48_N2
\inst14|inst9|data[75]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~41_combout\ = (\inst14|inst9|data[72]~40_combout\ & ((\inst14|inst9|data[26]~49_combout\ & (\inst14|inst9|Equal12~3_combout\)) # (!\inst14|inst9|data[26]~49_combout\ & ((!\inst14|inst9|Equal5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal12~3_combout\,
	datab => \inst14|inst9|data[26]~49_combout\,
	datac => \inst14|inst9|Equal5~0_combout\,
	datad => \inst14|inst9|data[72]~40_combout\,
	combout => \inst14|inst9|data[75]~41_combout\);

-- Location: FF_X61_Y48_N3
\inst14|inst13|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[75]~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EB\(0));

-- Location: FF_X61_Y48_N9
\inst14|inst13|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal9~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWB~q\);

-- Location: LCCOMB_X67_Y49_N4
\ACCB|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[5]~2_combout\ = (((\inst14|inst13|nWB~q\) # (\ACCB|data_out\(5))) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \ACCB|data_out\(5),
	combout => \ACCB|C[5]~2_combout\);

-- Location: LCCOMB_X67_Y49_N20
\ACCB|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[5]~2_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[5]~2_combout\)) # (!\inst14|inst13|EB\(0) & ((\inst1|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[5]~2_combout\,
	datad => \inst1|Yupa2[5]~10_combout\,
	combout => \ACCB|data_out[5]~2_combout\);

-- Location: LCCOMB_X62_Y49_N22
\ACCB|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~8_combout\ = (\inst14|inst13|nWB~q\ & ((\inst14|inst13|EA\(1)) # (\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|data_out[0]~8_combout\);

-- Location: FF_X67_Y49_N21
\ACCB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[5]~2_combout\,
	asdata => \inst1|Yupa[5]~14_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(5));

-- Location: LCCOMB_X65_Y50_N26
\inst1|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux33~0_combout\ = (\inst14|inst13|EA\(1) & (((\ACCB|data_out\(5)) # (\inst14|inst13|nWB~q\)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \ACCB|data_out\(5),
	datad => \inst14|inst13|nWB~q\,
	combout => \inst1|Mux33~0_combout\);

-- Location: LCCOMB_X66_Y49_N0
\ACCA|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[4]~3_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[4]~3_combout\))) # (!\inst14|inst13|EA\(1) & (\inst1|Yupa[4]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[4]~18_combout\,
	datab => \ACCA|C[4]~3_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[4]~3_combout\);

-- Location: LCCOMB_X63_Y48_N28
\inst14|inst9|Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal16~0_combout\ = (\inst14|inst9|Equal15~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\ & (\inst14|inst9|Equal2~3_combout\ & \inst14|inst9|Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal15~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\,
	datac => \inst14|inst9|Equal2~3_combout\,
	datad => \inst14|inst9|Equal15~1_combout\,
	combout => \inst14|inst9|Equal16~0_combout\);

-- Location: LCCOMB_X63_Y48_N26
\inst14|inst13|BD~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst13|BD~feeder_combout\ = \inst14|inst9|Equal16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst9|Equal16~0_combout\,
	combout => \inst14|inst13|BD~feeder_combout\);

-- Location: FF_X63_Y48_N27
\inst14|inst13|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst13|BD~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|BD~q\);

-- Location: LCCOMB_X63_Y48_N30
\inst14|inst9|data[26]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~42_combout\ = (\inst14|inst9|data[26]~48_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\) # (!\inst14|inst9|Equal15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst9|Equal15~2_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datad => \inst14|inst9|data[26]~48_combout\,
	combout => \inst14|inst9|data[26]~42_combout\);

-- Location: LCCOMB_X62_Y50_N28
\inst14|inst9|Equal19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal19~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & \inst14|inst9|Equal19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datad => \inst14|inst9|Equal19~0_combout\,
	combout => \inst14|inst9|Equal19~1_combout\);

-- Location: LCCOMB_X61_Y48_N24
\inst14|inst9|data[32]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~34_combout\ = (!\inst14|inst9|Equal6~0_combout\ & (\inst14|inst9|data[32]~8_combout\ & (\inst14|inst9|Equal19~1_combout\ & \inst14|inst9|data[72]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal6~0_combout\,
	datab => \inst14|inst9|data[32]~8_combout\,
	datac => \inst14|inst9|Equal19~1_combout\,
	datad => \inst14|inst9|data[72]~30_combout\,
	combout => \inst14|inst9|data[32]~34_combout\);

-- Location: LCCOMB_X63_Y48_N6
\inst14|inst9|data[48]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[48]~43_combout\ = (\inst14|inst9|Equal16~0_combout\) # ((\inst14|inst9|data[26]~49_combout\ & (\inst14|inst9|data[26]~42_combout\ & \inst14|inst9|data[32]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal16~0_combout\,
	datab => \inst14|inst9|data[26]~49_combout\,
	datac => \inst14|inst9|data[26]~42_combout\,
	datad => \inst14|inst9|data[32]~34_combout\,
	combout => \inst14|inst9|data[48]~43_combout\);

-- Location: FF_X63_Y48_N7
\inst14|inst13|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[48]~43_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA1~q\);

-- Location: LCCOMB_X63_Y48_N10
\inst14|inst9|Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal18~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & \inst14|inst9|Equal15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datad => \inst14|inst9|Equal15~2_combout\,
	combout => \inst14|inst9|Equal18~0_combout\);

-- Location: LCCOMB_X63_Y48_N12
\inst14|inst13|RA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst13|RA[0]~feeder_combout\ = \inst14|inst9|Equal18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst9|Equal18~0_combout\,
	combout => \inst14|inst13|RA[0]~feeder_combout\);

-- Location: FF_X63_Y48_N13
\inst14|inst13|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst13|RA[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|RA\(0));

-- Location: LCCOMB_X67_Y48_N4
\AUX|TRI_STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_C~0_combout\ = (\inst14|inst13|BD~q\) # ((\inst14|inst13|RA\(0)) # (!\inst14|inst13|nERA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nERA1~q\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X63_Y49_N24
\ACCB|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[7]~0_combout\ = (\ACCB|data_out\(7)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[7]~0_combout\);

-- Location: LCCOMB_X62_Y49_N16
\ACCB|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[7]~0_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[7]~0_combout\)) # (!\inst14|inst13|EB\(0) & ((\inst1|Yupa2[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[7]~0_combout\,
	datad => \inst1|Yupa2[7]~4_combout\,
	combout => \ACCB|data_out[7]~0_combout\);

-- Location: LCCOMB_X65_Y50_N28
\ACCA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[7]~0_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[7]~0_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[7]~0_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \inst1|Yupa[7]~5_combout\,
	combout => \ACCA|data_out[7]~0_combout\);

-- Location: LCCOMB_X66_Y48_N4
\ACCA|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~8_combout\ = (\inst14|inst13|nWA~q\ & ((\inst14|inst13|EA\(0)) # (\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|nWA~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[0]~8_combout\);

-- Location: FF_X65_Y50_N29
\ACCA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[7]~0_combout\,
	asdata => \inst1|Yupa2[7]~4_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(7));

-- Location: LCCOMB_X64_Y50_N16
\ACCA|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[7]~0_combout\ = (\ACCA|data_out\(7)) # (((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|nWA~q\,
	combout => \ACCA|C[7]~0_combout\);

-- Location: LCCOMB_X64_Y50_N18
\inst1|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux35~0_combout\ = (\inst14|inst13|EA\(1) & ((\ACCB|data_out\(7)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCB|data_out\(7),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux35~0_combout\);

-- Location: LCCOMB_X62_Y49_N28
\ACCB|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[6]~1_combout\ = (\inst14|inst13|nWB~q\) # (((\ACCB|data_out\(6)) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWB~q\,
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EB\(0),
	datad => \ACCB|data_out\(6),
	combout => \ACCB|C[6]~1_combout\);

-- Location: LCCOMB_X62_Y49_N4
\ACCB|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|B[7]~0_combout\ = (\inst14|inst13|nWB~q\) # ((\inst14|inst13|EB\(0)) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|B[7]~0_combout\);

-- Location: LCCOMB_X62_Y49_N18
\ACCA|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|B[7]~0_combout\ = (\inst14|inst13|EA\(0)) # ((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|nWA~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|B[7]~0_combout\);

-- Location: LCCOMB_X64_Y48_N4
\inst1|Yupa2[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~5_combout\ = (\ACCA|data_out\(6) & ((\ACCB|data_out\(6)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(6) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(6)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \ACCB|data_out\(6),
	datac => \ACCB|B[7]~0_combout\,
	datad => \ACCA|B[7]~0_combout\,
	combout => \inst1|Yupa2[6]~5_combout\);

-- Location: LCCOMB_X63_Y48_N4
\inst14|inst9|data[26]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~7_combout\ = ((!\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ & \inst14|inst9|Equal0~1_combout\)) # (!\inst14|inst9|data[26]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst9|data[26]~6_combout\,
	combout => \inst14|inst9|data[26]~7_combout\);

-- Location: LCCOMB_X62_Y48_N6
\inst14|inst9|data[26]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~13_combout\ = (((\inst14|inst9|data[26]~7_combout\) # (!\inst14|inst9|data[26]~12_combout\)) # (!\inst14|inst9|Equal18~0_combout\)) # (!\inst14|inst9|data~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~9_combout\,
	datab => \inst14|inst9|Equal18~0_combout\,
	datac => \inst14|inst9|data[26]~12_combout\,
	datad => \inst14|inst9|data[26]~7_combout\,
	combout => \inst14|inst9|data[26]~13_combout\);

-- Location: LCCOMB_X62_Y48_N16
\inst14|inst9|data[26]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~14_combout\ = ((\inst14|inst9|Equal16~0_combout\) # ((\inst14|inst9|Equal2~4_combout\) # (!\inst14|inst9|data[26]~13_combout\))) # (!\inst14|inst9|data[26]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~49_combout\,
	datab => \inst14|inst9|Equal16~0_combout\,
	datac => \inst14|inst9|Equal2~4_combout\,
	datad => \inst14|inst9|data[26]~13_combout\,
	combout => \inst14|inst9|data[26]~14_combout\);

-- Location: FF_X62_Y48_N17
\inst14|inst13|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[26]~14_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nAS~q\);

-- Location: FF_X65_Y48_N29
\inst6|data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst13|nAS~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~en_q\);

-- Location: LCCOMB_X65_Y48_N6
\inst6|data[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|data[7]~1_combout\ = (\inst14|inst13|BD~q\ & \inst6|data[7]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \inst6|data[7]~1_combout\);

-- Location: FF_X62_Y50_N29
\inst14|inst13|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|Equal19~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(2));

-- Location: LCCOMB_X66_Y47_N0
\PC|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~16_combout\ = \PC|data_out\(0) $ (VCC)
-- \PC|Add0~17\ = CARRY(\PC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(0),
	datad => VCC,
	combout => \PC|Add0~16_combout\,
	cout => \PC|Add0~17\);

-- Location: LCCOMB_X61_Y48_N30
\inst14|inst9|data[32]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~44_combout\ = ((\inst14|inst9|Equal2~4_combout\) # ((\inst14|inst9|data[26]~6_combout\ & \inst14|inst9|data[32]~34_combout\))) # (!\inst14|inst9|data[32]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[32]~20_combout\,
	datab => \inst14|inst9|data[26]~6_combout\,
	datac => \inst14|inst9|Equal2~4_combout\,
	datad => \inst14|inst9|data[32]~34_combout\,
	combout => \inst14|inst9|data[32]~44_combout\);

-- Location: FF_X61_Y48_N31
\inst14|inst13|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[32]~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(0));

-- Location: LCCOMB_X65_Y49_N30
\PC|Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~55_combout\ = (\inst14|inst13|PC\(2) & (((\inst1|Yupa[0]~34_combout\)))) # (!\inst14|inst13|PC\(2) & ((\inst14|inst13|PC\(0) & (\PC|Add0~16_combout\)) # (!\inst14|inst13|PC\(0) & ((\inst1|Yupa[0]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~16_combout\,
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \inst1|Yupa[0]~34_combout\,
	combout => \PC|Add0~55_combout\);

-- Location: FF_X65_Y49_N31
\PC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~55_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(0));

-- Location: LCCOMB_X66_Y47_N2
\PC|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~18_combout\ = (\PC|data_out\(1) & (!\PC|Add0~17\)) # (!\PC|data_out\(1) & ((\PC|Add0~17\) # (GND)))
-- \PC|Add0~19\ = CARRY((!\PC|Add0~17\) # (!\PC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(1),
	datad => VCC,
	cin => \PC|Add0~17\,
	combout => \PC|Add0~18_combout\,
	cout => \PC|Add0~19\);

-- Location: LCCOMB_X66_Y49_N14
\ACCA|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[1]~6_combout\ = ((\ACCA|data_out\(1)) # ((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(1)))) # (!\inst14|inst13|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(0),
	datab => \ACCA|data_out\(1),
	datac => \inst14|inst13|nWA~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[1]~6_combout\);

-- Location: LCCOMB_X66_Y49_N20
\ACCA|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[1]~6_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[1]~6_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[1]~6_combout\,
	datab => \inst1|Yupa[1]~30_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[1]~6_combout\);

-- Location: LCCOMB_X67_Y49_N2
\ACCB|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[1]~6_combout\ = (((\inst14|inst13|nWB~q\) # (\ACCB|data_out\(1))) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \ACCB|data_out\(1),
	combout => \ACCB|C[1]~6_combout\);

-- Location: LCCOMB_X67_Y49_N14
\ACCB|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[1]~6_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[1]~6_combout\)) # (!\inst14|inst13|EB\(0) & ((\inst1|Yupa2[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[1]~6_combout\,
	datad => \inst1|Yupa2[1]~22_combout\,
	combout => \ACCB|data_out[1]~6_combout\);

-- Location: FF_X67_Y49_N15
\ACCB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[1]~6_combout\,
	asdata => \inst1|Yupa[1]~30_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(1));

-- Location: LCCOMB_X65_Y50_N22
\inst1|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux29~0_combout\ = (\inst14|inst13|EA\(1) & ((\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(1)) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \ACCB|data_out\(1),
	combout => \inst1|Mux29~0_combout\);

-- Location: LCCOMB_X65_Y50_N16
\inst1|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux27~0_combout\ = (\inst14|inst13|EA\(1) & ((\ACCB|data_out\(0)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|nWB~q\,
	combout => \inst1|Mux27~0_combout\);

-- Location: LCCOMB_X66_Y49_N30
\ACCA|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~7_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[0]~7_combout\))) # (!\inst14|inst13|EA\(1) & (\inst1|Yupa[0]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[0]~34_combout\,
	datab => \ACCA|C[0]~7_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[0]~7_combout\);

-- Location: LCCOMB_X61_Y48_N4
\inst14|inst9|data[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~45_combout\ = (\inst14|inst9|data[26]~49_combout\ & (\inst14|inst9|Equal13~0_combout\ & \inst14|inst9|data[72]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~49_combout\,
	datab => \inst14|inst9|Equal13~0_combout\,
	datad => \inst14|inst9|data[72]~31_combout\,
	combout => \inst14|inst9|data[6]~45_combout\);

-- Location: FF_X61_Y48_N5
\inst14|inst13|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[6]~45_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CC~q\);

-- Location: LCCOMB_X66_Y50_N22
\inst1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = ((\ACCA|C[7]~0_combout\ $ (\inst1|Mux35~0_combout\ $ (!\inst1|Add0~15\)))) # (GND)
-- \inst1|Add0~17\ = CARRY((\ACCA|C[7]~0_combout\ & ((\inst1|Mux35~0_combout\) # (!\inst1|Add0~15\))) # (!\ACCA|C[7]~0_combout\ & (\inst1|Mux35~0_combout\ & !\inst1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[7]~0_combout\,
	datab => \inst1|Mux35~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X66_Y50_N24
\inst1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = \inst1|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\);

-- Location: FF_X66_Y50_N25
\inst1|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~18_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(1));

-- Location: FF_X66_Y50_N7
\inst5|inst|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CC~q\,
	asdata => \inst1|Banderas\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|valor_interno~q\);

-- Location: LCCOMB_X66_Y50_N6
\inst1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_cout\ = CARRY((!\inst14|inst13|EA\(1) & \inst5|inst|valor_interno~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst5|inst|valor_interno~q\,
	datad => VCC,
	cout => \inst1|Add0~1_cout\);

-- Location: LCCOMB_X66_Y50_N8
\inst1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|Mux27~0_combout\ & ((\ACCA|C[0]~7_combout\ & (\inst1|Add0~1_cout\ & VCC)) # (!\ACCA|C[0]~7_combout\ & (!\inst1|Add0~1_cout\)))) # (!\inst1|Mux27~0_combout\ & ((\ACCA|C[0]~7_combout\ & (!\inst1|Add0~1_cout\)) # 
-- (!\ACCA|C[0]~7_combout\ & ((\inst1|Add0~1_cout\) # (GND)))))
-- \inst1|Add0~3\ = CARRY((\inst1|Mux27~0_combout\ & (!\ACCA|C[0]~7_combout\ & !\inst1|Add0~1_cout\)) # (!\inst1|Mux27~0_combout\ & ((!\inst1|Add0~1_cout\) # (!\ACCA|C[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux27~0_combout\,
	datab => \ACCA|C[0]~7_combout\,
	datad => VCC,
	cin => \inst1|Add0~1_cout\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X66_Y50_N9
\inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(0));

-- Location: LCCOMB_X65_Y49_N12
\inst1|Yupa[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~31_combout\ = (\inst1|Q\(0)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datad => \inst1|Q\(0),
	combout => \inst1|Yupa[0]~31_combout\);

-- Location: LCCOMB_X62_Y49_N20
\inst1|Yupa2[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~23_combout\ = (\ACCB|data_out\(0) & ((\ACCA|B[7]~0_combout\) # ((\ACCA|data_out\(0))))) # (!\ACCB|data_out\(0) & (\ACCB|B[7]~0_combout\ & ((\ACCA|B[7]~0_combout\) # (\ACCA|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|B[7]~0_combout\,
	datad => \ACCA|data_out\(0),
	combout => \inst1|Yupa2[0]~23_combout\);

-- Location: LCCOMB_X65_Y48_N28
\inst1|Yupa2[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~2_combout\ = (\inst14|inst13|BD~q\ & (((\inst6|data[7]~en_q\)))) # (!\inst14|inst13|BD~q\ & (!\inst14|inst13|RA\(0) & ((\inst14|inst13|nERA1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|RA\(0),
	datac => \inst6|data[7]~en_q\,
	datad => \inst14|inst13|nERA1~q\,
	combout => \inst1|Yupa2[7]~2_combout\);

-- Location: LCCOMB_X65_Y48_N24
\inst1|Yupa2[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~3_combout\ = ((\inst14|inst13|nDUPA~q\) # ((\inst1|Yupa2[7]~2_combout\) # (!\ACCA|B[7]~0_combout\))) # (!\ACCB|B[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|B[7]~0_combout\,
	datab => \inst14|inst13|nDUPA~q\,
	datac => \ACCA|B[7]~0_combout\,
	datad => \inst1|Yupa2[7]~2_combout\,
	combout => \inst1|Yupa2[7]~3_combout\);

-- Location: LCCOMB_X61_Y48_N22
\ACCB|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|TRI_STATE~0_combout\ = (\inst14|inst13|EB\(0) & (!\inst14|inst13|nWB~q\ & !\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|TRI_STATE~0_combout\);

-- Location: LCCOMB_X61_Y48_N14
\inst14|inst9|data[47]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~35_combout\ = (\inst14|inst9|Equal18~0_combout\) # ((\inst14|inst9|data[32]~20_combout\ & (\inst14|inst9|data[26]~6_combout\ & \inst14|inst9|data[32]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[32]~20_combout\,
	datab => \inst14|inst9|data[26]~6_combout\,
	datac => \inst14|inst9|Equal18~0_combout\,
	datad => \inst14|inst9|data[32]~34_combout\,
	combout => \inst14|inst9|data[47]~35_combout\);

-- Location: FF_X61_Y48_N15
\inst14|inst13|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[47]~35_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA0~q\);

-- Location: LCCOMB_X65_Y48_N14
\inst1|Yupa[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~3_combout\ = (!\inst14|inst13|BD~q\ & ((\inst6|data[7]~en_q\) # ((\inst14|inst13|nERA0~q\ & !\inst14|inst13|RA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nERA0~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \inst14|inst13|RA\(0),
	datad => \inst6|data[7]~en_q\,
	combout => \inst1|Yupa[7]~3_combout\);

-- Location: LCCOMB_X64_Y48_N14
\ACCA|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|TRI_STATE~0_combout\ = (!\inst14|inst13|nWA~q\ & (!\inst14|inst13|EA\(1) & \inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|TRI_STATE~0_combout\);

-- Location: LCCOMB_X65_Y48_N8
\inst1|Yupa[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~4_combout\ = (\ACCB|TRI_STATE~0_combout\) # ((\inst14|inst13|nDUPA~q\) # ((\inst1|Yupa[7]~3_combout\) # (\ACCA|TRI_STATE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \inst14|inst13|nDUPA~q\,
	datac => \inst1|Yupa[7]~3_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[7]~4_combout\);

-- Location: LCCOMB_X62_Y49_N0
\AUX|data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~8_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(8))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \AUX|data_out\(8),
	datac => \inst1|Yupa[7]~5_combout\,
	combout => \AUX|data_out~8_combout\);

-- Location: FF_X62_Y49_N1
\AUX|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(7));

-- Location: LCCOMB_X64_Y48_N20
\AUX|data_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~9_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(7))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \AUX|data_out\(7),
	datad => \inst1|Yupa[6]~9_combout\,
	combout => \AUX|data_out~9_combout\);

-- Location: FF_X64_Y48_N21
\AUX|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(6));

-- Location: LCCOMB_X64_Y48_N30
\AUX|data_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~10_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(6))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(6),
	datac => \inst14|inst13|BD~q\,
	datad => \inst1|Yupa[5]~14_combout\,
	combout => \AUX|data_out~10_combout\);

-- Location: FF_X64_Y48_N31
\AUX|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(5));

-- Location: LCCOMB_X64_Y50_N20
\AUX|data_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~11_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(5))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \AUX|data_out\(5),
	datad => \inst1|Yupa[4]~18_combout\,
	combout => \AUX|data_out~11_combout\);

-- Location: FF_X64_Y50_N21
\AUX|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(4));

-- Location: LCCOMB_X64_Y50_N22
\AUX|data_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~12_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(4))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \AUX|data_out\(4),
	datad => \inst1|Yupa[3]~22_combout\,
	combout => \AUX|data_out~12_combout\);

-- Location: FF_X64_Y50_N23
\AUX|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~12_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(3));

-- Location: LCCOMB_X64_Y48_N28
\AUX|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_D~0_combout\ = (\inst14|inst13|RA\(0)) # ((\inst14|inst13|BD~q\) # (!\inst14|inst13|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datac => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nERA0~q\,
	combout => \AUX|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X64_Y49_N8
\inst1|Yupa[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~20_combout\ = (\AUX|data_out\(3) & ((\ACCA|data_out\(3)) # ((!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(3) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(3)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(3),
	datab => \ACCA|data_out\(3),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[3]~20_combout\);

-- Location: LCCOMB_X66_Y47_N4
\PC|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~20_combout\ = (\PC|data_out\(2) & (\PC|Add0~19\ $ (GND))) # (!\PC|data_out\(2) & (!\PC|Add0~19\ & VCC))
-- \PC|Add0~21\ = CARRY((\PC|data_out\(2) & !\PC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(2),
	datad => VCC,
	cin => \PC|Add0~19\,
	combout => \PC|Add0~20_combout\,
	cout => \PC|Add0~21\);

-- Location: LCCOMB_X62_Y49_N2
\ACCB|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[2]~5_combout\ = (\inst14|inst13|nWB~q\) # (((\ACCB|data_out\(2)) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWB~q\,
	datab => \inst14|inst13|EB\(0),
	datac => \ACCB|data_out\(2),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[2]~5_combout\);

-- Location: LCCOMB_X66_Y48_N26
\ACCA|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[2]~5_combout\ = (\inst14|inst13|nWA~q\) # (((\ACCA|data_out\(2)) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \inst14|inst13|EA\(0),
	datac => \ACCA|data_out\(2),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[2]~5_combout\);

-- Location: LCCOMB_X66_Y48_N8
\ACCA|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[2]~5_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[2]~5_combout\))) # (!\inst14|inst13|EA\(1) & (\inst1|Yupa[2]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[2]~26_combout\,
	datab => \ACCA|C[2]~5_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[2]~5_combout\);

-- Location: FF_X66_Y48_N9
\ACCA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[2]~5_combout\,
	asdata => \inst1|Yupa2[2]~19_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(2));

-- Location: LCCOMB_X62_Y49_N30
\inst1|Yupa2[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~17_combout\ = (\ACCB|data_out\(2) & (((\ACCA|data_out\(2)) # (\ACCA|B[7]~0_combout\)))) # (!\ACCB|data_out\(2) & (\ACCB|B[7]~0_combout\ & ((\ACCA|data_out\(2)) # (\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(2),
	datab => \ACCB|B[7]~0_combout\,
	datac => \ACCA|data_out\(2),
	datad => \ACCA|B[7]~0_combout\,
	combout => \inst1|Yupa2[2]~17_combout\);

-- Location: LCCOMB_X63_Y48_N8
\inst14|inst9|data[31]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~46_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst9|Equal15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal15~2_combout\,
	combout => \inst14|inst9|data[31]~46_combout\);

-- Location: LCCOMB_X62_Y48_N14
\inst14|inst9|data[32]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~19_combout\ = (\inst14|inst9|data[72]~18_combout\ & (!\inst14|inst9|Equal6~0_combout\ & (\inst14|inst9|data[32]~8_combout\ & \inst14|inst9|data[14]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~18_combout\,
	datab => \inst14|inst9|Equal6~0_combout\,
	datac => \inst14|inst9|data[32]~8_combout\,
	datad => \inst14|inst9|data[14]~50_combout\,
	combout => \inst14|inst9|data[32]~19_combout\);

-- Location: LCCOMB_X62_Y48_N24
\inst14|inst9|data[90]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~22_combout\ = (\inst14|inst9|data[90]~21_combout\ & (\inst14|inst9|data[32]~20_combout\ & (\inst14|inst9|data[32]~19_combout\ & \inst14|inst9|data[26]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[90]~21_combout\,
	datab => \inst14|inst9|data[32]~20_combout\,
	datac => \inst14|inst9|data[32]~19_combout\,
	datad => \inst14|inst9|data[26]~6_combout\,
	combout => \inst14|inst9|data[90]~22_combout\);

-- Location: LCCOMB_X62_Y48_N20
\inst14|inst9|data[31]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~47_combout\ = (((\inst14|inst9|data[90]~22_combout\) # (!\inst14|inst9|data~9_combout\)) # (!\inst14|inst9|data[31]~46_combout\)) # (!\inst14|inst9|data[31]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~11_combout\,
	datab => \inst14|inst9|data[31]~46_combout\,
	datac => \inst14|inst9|data~9_combout\,
	datad => \inst14|inst9|data[90]~22_combout\,
	combout => \inst14|inst9|data[31]~47_combout\);

-- Location: FF_X62_Y48_N21
\inst14|inst13|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[31]~47_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCBD~q\);

-- Location: FF_X67_Y48_N5
\inst16|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \PC|data_out\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst14|inst13|nCBD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|valor_interno\(3));

-- Location: FF_X67_Y48_N25
\inst16|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \PC|data_out\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst14|inst13|nCBD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|valor_interno\(2));

-- Location: LCCOMB_X67_Y48_N0
\inst16|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|valor_interno[0]~feeder_combout\ = \PC|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(0),
	combout => \inst16|valor_interno[0]~feeder_combout\);

-- Location: FF_X67_Y48_N1
\inst16|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst16|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|nCBD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|valor_interno\(0));

-- Location: LCCOMB_X67_Y48_N24
\inst6|mem~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~26_combout\ = (\inst16|valor_interno\(3) & ((\inst16|valor_interno\(1)) # ((\inst16|valor_interno\(2))))) # (!\inst16|valor_interno\(3) & ((\inst16|valor_interno\(2) $ (\inst16|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|valor_interno\(1),
	datab => \inst16|valor_interno\(3),
	datac => \inst16|valor_interno\(2),
	datad => \inst16|valor_interno\(0),
	combout => \inst6|mem~26_combout\);

-- Location: LCCOMB_X67_Y48_N14
\inst6|mem~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~27_combout\ = (!\inst6|mem~26_combout\ & \inst6|mem~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mem~26_combout\,
	datad => \inst6|mem~17_combout\,
	combout => \inst6|mem~27_combout\);

-- Location: FF_X65_Y48_N19
\inst6|data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst6|mem~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[2]~reg0_q\);

-- Location: LCCOMB_X66_Y48_N28
\inst1|Yupa2[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~18_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\inst6|data[2]~reg0_q\) # (!\inst6|data[7]~1_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(10) & ((\inst6|data[2]~reg0_q\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(10),
	datac => \inst6|data[7]~1_combout\,
	datad => \inst6|data[2]~reg0_q\,
	combout => \inst1|Yupa2[2]~18_combout\);

-- Location: LCCOMB_X66_Y48_N30
\inst1|Yupa2[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[2]~19_combout\ = ((\inst1|Yupa[2]~23_combout\ & (\inst1|Yupa2[2]~17_combout\ & \inst1|Yupa2[2]~18_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[2]~23_combout\,
	datab => \inst1|Yupa2[7]~3_combout\,
	datac => \inst1|Yupa2[2]~17_combout\,
	datad => \inst1|Yupa2[2]~18_combout\,
	combout => \inst1|Yupa2[2]~19_combout\);

-- Location: LCCOMB_X62_Y49_N24
\ACCB|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[2]~5_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[2]~5_combout\)) # (!\inst14|inst13|EB\(0) & ((\inst1|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[2]~5_combout\,
	datad => \inst1|Yupa2[2]~19_combout\,
	combout => \ACCB|data_out[2]~5_combout\);

-- Location: FF_X62_Y49_N25
\ACCB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[2]~5_combout\,
	asdata => \inst1|Yupa[2]~26_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(2));

-- Location: LCCOMB_X64_Y50_N24
\inst1|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux30~0_combout\ = (\inst14|inst13|EA\(1) & ((\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(2)) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \ACCB|data_out\(2),
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux30~0_combout\);

-- Location: LCCOMB_X66_Y50_N10
\inst1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = ((\ACCA|C[1]~6_combout\ $ (\inst1|Mux29~0_combout\ $ (!\inst1|Add0~3\)))) # (GND)
-- \inst1|Add0~5\ = CARRY((\ACCA|C[1]~6_combout\ & ((\inst1|Mux29~0_combout\) # (!\inst1|Add0~3\))) # (!\ACCA|C[1]~6_combout\ & (\inst1|Mux29~0_combout\ & !\inst1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[1]~6_combout\,
	datab => \inst1|Mux29~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X66_Y50_N12
\inst1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|Mux30~0_combout\ & ((\ACCA|C[2]~5_combout\ & (\inst1|Add0~5\ & VCC)) # (!\ACCA|C[2]~5_combout\ & (!\inst1|Add0~5\)))) # (!\inst1|Mux30~0_combout\ & ((\ACCA|C[2]~5_combout\ & (!\inst1|Add0~5\)) # (!\ACCA|C[2]~5_combout\ & 
-- ((\inst1|Add0~5\) # (GND)))))
-- \inst1|Add0~7\ = CARRY((\inst1|Mux30~0_combout\ & (!\ACCA|C[2]~5_combout\ & !\inst1|Add0~5\)) # (!\inst1|Mux30~0_combout\ & ((!\inst1|Add0~5\) # (!\ACCA|C[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux30~0_combout\,
	datab => \ACCA|C[2]~5_combout\,
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: FF_X66_Y50_N13
\inst1|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(2));

-- Location: LCCOMB_X65_Y49_N4
\inst1|Yupa[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~23_combout\ = (\inst1|Yupa_interno\(2)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datad => \inst1|Yupa_interno\(2),
	combout => \inst1|Yupa[2]~23_combout\);

-- Location: LCCOMB_X64_Y50_N12
\AUX|data_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~13_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(3))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \AUX|data_out\(3),
	datad => \inst1|Yupa[2]~26_combout\,
	combout => \AUX|data_out~13_combout\);

-- Location: FF_X64_Y50_N13
\AUX|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(2));

-- Location: LCCOMB_X64_Y48_N24
\inst1|Yupa[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~24_combout\ = (\ACCA|data_out\(2) & ((\AUX|data_out\(2)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(2) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(2)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \AUX|data_out\(2),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[2]~24_combout\);

-- Location: LCCOMB_X65_Y48_N2
\inst6|data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|data[7]~0_combout\ = (!\inst14|inst13|BD~q\ & \inst6|data[7]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \inst6|data[7]~0_combout\);

-- Location: LCCOMB_X65_Y49_N28
\inst1|Yupa[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~25_combout\ = (\inst6|data[2]~reg0_q\ & (((\ACCB|data_out\(2))) # (!\ACCB|TRI_STATE~0_combout\))) # (!\inst6|data[2]~reg0_q\ & (!\inst6|data[7]~0_combout\ & ((\ACCB|data_out\(2)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[2]~reg0_q\,
	datab => \ACCB|TRI_STATE~0_combout\,
	datac => \ACCB|data_out\(2),
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[2]~25_combout\);

-- Location: LCCOMB_X65_Y49_N14
\inst1|Yupa[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[2]~26_combout\ = ((\inst1|Yupa[2]~23_combout\ & (\inst1|Yupa[2]~24_combout\ & \inst1|Yupa[2]~25_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[7]~4_combout\,
	datab => \inst1|Yupa[2]~23_combout\,
	datac => \inst1|Yupa[2]~24_combout\,
	datad => \inst1|Yupa[2]~25_combout\,
	combout => \inst1|Yupa[2]~26_combout\);

-- Location: LCCOMB_X65_Y49_N8
\PC|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~53_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\inst1|Yupa[2]~26_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~20_combout\)))) # (!\inst14|inst13|PC\(0) & (((\inst1|Yupa[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \PC|Add0~20_combout\,
	datac => \inst1|Yupa[2]~26_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|Add0~53_combout\);

-- Location: FF_X65_Y49_N9
\PC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~53_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(2));

-- Location: LCCOMB_X66_Y47_N6
\PC|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~22_combout\ = (\PC|data_out\(3) & (!\PC|Add0~21\)) # (!\PC|data_out\(3) & ((\PC|Add0~21\) # (GND)))
-- \PC|Add0~23\ = CARRY((!\PC|Add0~21\) # (!\PC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(3),
	datad => VCC,
	cin => \PC|Add0~21\,
	combout => \PC|Add0~22_combout\,
	cout => \PC|Add0~23\);

-- Location: LCCOMB_X64_Y49_N24
\PC|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~52_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\inst1|Yupa[3]~22_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~22_combout\)))) # (!\inst14|inst13|PC\(0) & (((\inst1|Yupa[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~22_combout\,
	datad => \inst1|Yupa[3]~22_combout\,
	combout => \PC|Add0~52_combout\);

-- Location: FF_X64_Y49_N25
\PC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~52_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(3));

-- Location: LCCOMB_X66_Y47_N8
\PC|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~24_combout\ = (\PC|data_out\(4) & (\PC|Add0~23\ $ (GND))) # (!\PC|data_out\(4) & (!\PC|Add0~23\ & VCC))
-- \PC|Add0~25\ = CARRY((\PC|data_out\(4) & !\PC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(4),
	datad => VCC,
	cin => \PC|Add0~23\,
	combout => \PC|Add0~24_combout\,
	cout => \PC|Add0~25\);

-- Location: LCCOMB_X64_Y49_N2
\PC|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~51_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\inst1|Yupa[4]~18_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~24_combout\)))) # (!\inst14|inst13|PC\(0) & (((\inst1|Yupa[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~24_combout\,
	datad => \inst1|Yupa[4]~18_combout\,
	combout => \PC|Add0~51_combout\);

-- Location: FF_X64_Y49_N3
\PC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~51_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(4));

-- Location: LCCOMB_X66_Y47_N10
\PC|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~26_combout\ = (\PC|data_out\(5) & (!\PC|Add0~25\)) # (!\PC|data_out\(5) & ((\PC|Add0~25\) # (GND)))
-- \PC|Add0~27\ = CARRY((!\PC|Add0~25\) # (!\PC|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(5),
	datad => VCC,
	cin => \PC|Add0~25\,
	combout => \PC|Add0~26_combout\,
	cout => \PC|Add0~27\);

-- Location: LCCOMB_X65_Y47_N26
\PC|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~50_combout\ = (\inst14|inst13|PC\(2) & (((\inst1|Yupa[5]~14_combout\)))) # (!\inst14|inst13|PC\(2) & ((\inst14|inst13|PC\(0) & (\PC|Add0~26_combout\)) # (!\inst14|inst13|PC\(0) & ((\inst1|Yupa[5]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \inst14|inst13|PC\(0),
	datac => \PC|Add0~26_combout\,
	datad => \inst1|Yupa[5]~14_combout\,
	combout => \PC|Add0~50_combout\);

-- Location: FF_X65_Y47_N27
\PC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~50_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(5));

-- Location: LCCOMB_X66_Y47_N12
\PC|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~28_combout\ = (\PC|data_out\(6) & (\PC|Add0~27\ $ (GND))) # (!\PC|data_out\(6) & (!\PC|Add0~27\ & VCC))
-- \PC|Add0~29\ = CARRY((\PC|data_out\(6) & !\PC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(6),
	datad => VCC,
	cin => \PC|Add0~27\,
	combout => \PC|Add0~28_combout\,
	cout => \PC|Add0~29\);

-- Location: LCCOMB_X65_Y47_N28
\PC|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~49_combout\ = (\inst14|inst13|PC\(2) & (((\inst1|Yupa[6]~9_combout\)))) # (!\inst14|inst13|PC\(2) & ((\inst14|inst13|PC\(0) & (\PC|Add0~28_combout\)) # (!\inst14|inst13|PC\(0) & ((\inst1|Yupa[6]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \PC|Add0~28_combout\,
	datac => \inst14|inst13|PC\(0),
	datad => \inst1|Yupa[6]~9_combout\,
	combout => \PC|Add0~49_combout\);

-- Location: FF_X65_Y47_N29
\PC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~49_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(6));

-- Location: LCCOMB_X67_Y47_N10
\inst16|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|valor_interno[6]~feeder_combout\ = \PC|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(6),
	combout => \inst16|valor_interno[6]~feeder_combout\);

-- Location: FF_X67_Y47_N11
\inst16|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst16|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|nCBD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|valor_interno\(6));

-- Location: LCCOMB_X66_Y47_N14
\PC|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~30_combout\ = (\PC|data_out\(7) & (!\PC|Add0~29\)) # (!\PC|data_out\(7) & ((\PC|Add0~29\) # (GND)))
-- \PC|Add0~31\ = CARRY((!\PC|Add0~29\) # (!\PC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(7),
	datad => VCC,
	cin => \PC|Add0~29\,
	combout => \PC|Add0~30_combout\,
	cout => \PC|Add0~31\);

-- Location: LCCOMB_X63_Y49_N6
\PC|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~48_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & (\inst1|Yupa[7]~5_combout\)) # (!\inst14|inst13|PC\(2) & ((\PC|Add0~30_combout\))))) # (!\inst14|inst13|PC\(0) & (\inst1|Yupa[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[7]~5_combout\,
	datab => \inst14|inst13|PC\(0),
	datac => \inst14|inst13|PC\(2),
	datad => \PC|Add0~30_combout\,
	combout => \PC|Add0~48_combout\);

-- Location: FF_X63_Y49_N7
\PC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~48_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(7));

-- Location: LCCOMB_X67_Y47_N28
\inst16|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|valor_interno[7]~feeder_combout\ = \PC|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(7),
	combout => \inst16|valor_interno[7]~feeder_combout\);

-- Location: FF_X67_Y47_N29
\inst16|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst16|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|nCBD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|valor_interno\(7));

-- Location: FF_X67_Y47_N1
\inst16|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \PC|data_out\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst14|inst13|nCBD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|valor_interno\(5));

-- Location: FF_X66_Y47_N29
\inst16|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \PC|data_out\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst14|inst13|nCBD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|valor_interno\(4));

-- Location: LCCOMB_X67_Y47_N0
\inst6|mem~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~17_combout\ = (!\inst16|valor_interno\(6) & (!\inst16|valor_interno\(7) & (!\inst16|valor_interno\(5) & !\inst16|valor_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|valor_interno\(6),
	datab => \inst16|valor_interno\(7),
	datac => \inst16|valor_interno\(5),
	datad => \inst16|valor_interno\(4),
	combout => \inst6|mem~17_combout\);

-- Location: LCCOMB_X67_Y48_N20
\inst6|mem~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~24_combout\ = (!\inst16|valor_interno\(1) & ((\inst16|valor_interno\(2) & (!\inst16|valor_interno\(3))) # (!\inst16|valor_interno\(2) & (\inst16|valor_interno\(3) & \inst16|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|valor_interno\(1),
	datab => \inst16|valor_interno\(2),
	datac => \inst16|valor_interno\(3),
	datad => \inst16|valor_interno\(0),
	combout => \inst6|mem~24_combout\);

-- Location: LCCOMB_X64_Y47_N4
\inst6|mem~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~25_combout\ = (\inst6|mem~17_combout\ & \inst6|mem~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~17_combout\,
	datad => \inst6|mem~24_combout\,
	combout => \inst6|mem~25_combout\);

-- Location: FF_X64_Y47_N5
\inst6|data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|mem~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[4]~reg0_q\);

-- Location: LCCOMB_X67_Y49_N28
\ACCB|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[3]~4_combout\ = ((\ACCB|data_out\(3)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCB|data_out\(3),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[3]~4_combout\);

-- Location: LCCOMB_X67_Y49_N24
\ACCB|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[3]~4_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[3]~4_combout\)) # (!\inst14|inst13|EB\(0) & ((\inst1|Yupa2[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[3]~4_combout\,
	datad => \inst1|Yupa2[3]~16_combout\,
	combout => \ACCB|data_out[3]~4_combout\);

-- Location: FF_X67_Y49_N25
\ACCB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[3]~4_combout\,
	asdata => \inst1|Yupa[3]~22_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(3));

-- Location: LCCOMB_X64_Y49_N6
\inst1|Yupa[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~21_combout\ = (\ACCB|TRI_STATE~0_combout\ & (\ACCB|data_out\(3) & ((\inst6|data[4]~reg0_q\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|TRI_STATE~0_combout\ & ((\inst6|data[4]~reg0_q\) # ((!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \inst6|data[4]~reg0_q\,
	datac => \ACCB|data_out\(3),
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[3]~21_combout\);

-- Location: LCCOMB_X64_Y49_N0
\inst1|Yupa[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~22_combout\ = ((\inst1|Yupa[3]~20_combout\ & (\inst1|Yupa[3]~19_combout\ & \inst1|Yupa[3]~21_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[7]~4_combout\,
	datab => \inst1|Yupa[3]~20_combout\,
	datac => \inst1|Yupa[3]~19_combout\,
	datad => \inst1|Yupa[3]~21_combout\,
	combout => \inst1|Yupa[3]~22_combout\);

-- Location: LCCOMB_X66_Y49_N22
\ACCA|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[3]~4_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[3]~4_combout\))) # (!\inst14|inst13|EA\(1) & (\inst1|Yupa[3]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~22_combout\,
	datab => \ACCA|C[3]~4_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[3]~4_combout\);

-- Location: FF_X66_Y49_N23
\ACCA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[3]~4_combout\,
	asdata => \inst1|Yupa2[3]~16_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(3));

-- Location: LCCOMB_X65_Y49_N10
\ACCA|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[3]~4_combout\ = ((\ACCA|data_out\(3)) # ((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(0)))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|data_out\(3),
	datac => \inst14|inst13|nWA~q\,
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[3]~4_combout\);

-- Location: LCCOMB_X67_Y49_N8
\inst1|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux31~0_combout\ = (\inst14|inst13|EA\(1) & ((\ACCB|data_out\(3)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCB|data_out\(3),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EB\(0),
	combout => \inst1|Mux31~0_combout\);

-- Location: LCCOMB_X66_Y50_N14
\inst1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = ((\ACCA|C[3]~4_combout\ $ (\inst1|Mux31~0_combout\ $ (!\inst1|Add0~7\)))) # (GND)
-- \inst1|Add0~9\ = CARRY((\ACCA|C[3]~4_combout\ & ((\inst1|Mux31~0_combout\) # (!\inst1|Add0~7\))) # (!\ACCA|C[3]~4_combout\ & (\inst1|Mux31~0_combout\ & !\inst1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[3]~4_combout\,
	datab => \inst1|Mux31~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X66_Y50_N29
\inst1|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~8_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(3));

-- Location: LCCOMB_X65_Y49_N20
\inst1|Yupa[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~19_combout\ = (\inst1|Yupa_interno\(3)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datad => \inst1|Yupa_interno\(3),
	combout => \inst1|Yupa[3]~19_combout\);

-- Location: LCCOMB_X67_Y49_N30
\inst1|Yupa2[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~14_combout\ = (\ACCB|B[7]~0_combout\ & (((\AUX|data_out\(11)) # (\AUX|TRI_STATE_C~0_combout\)))) # (!\ACCB|B[7]~0_combout\ & (\ACCB|data_out\(3) & ((\AUX|data_out\(11)) # (\AUX|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|B[7]~0_combout\,
	datab => \ACCB|data_out\(3),
	datac => \AUX|data_out\(11),
	datad => \AUX|TRI_STATE_C~0_combout\,
	combout => \inst1|Yupa2[3]~14_combout\);

-- Location: LCCOMB_X66_Y49_N6
\inst1|Yupa2[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~15_combout\ = (\ACCA|data_out\(3) & (((\inst6|data[4]~reg0_q\) # (!\inst6|data[7]~1_combout\)))) # (!\ACCA|data_out\(3) & (\ACCA|B[7]~0_combout\ & ((\inst6|data[4]~reg0_q\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(3),
	datab => \ACCA|B[7]~0_combout\,
	datac => \inst6|data[7]~1_combout\,
	datad => \inst6|data[4]~reg0_q\,
	combout => \inst1|Yupa2[3]~15_combout\);

-- Location: LCCOMB_X66_Y49_N28
\inst1|Yupa2[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[3]~16_combout\ = ((\inst1|Yupa[3]~19_combout\ & (\inst1|Yupa2[3]~14_combout\ & \inst1|Yupa2[3]~15_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~19_combout\,
	datab => \inst1|Yupa2[3]~14_combout\,
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst1|Yupa2[3]~15_combout\,
	combout => \inst1|Yupa2[3]~16_combout\);

-- Location: LCCOMB_X67_Y49_N26
\AUX|data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~4_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(12))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(12),
	datac => \inst14|inst13|RA\(0),
	datad => \inst1|Yupa2[3]~16_combout\,
	combout => \AUX|data_out~4_combout\);

-- Location: FF_X67_Y49_N27
\AUX|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(11));

-- Location: LCCOMB_X66_Y48_N16
\AUX|data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~5_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(11))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(11),
	datab => \inst14|inst13|RA\(0),
	datac => \inst1|Yupa2[2]~19_combout\,
	combout => \AUX|data_out~5_combout\);

-- Location: FF_X66_Y48_N17
\AUX|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(10));

-- Location: LCCOMB_X66_Y48_N10
\AUX|data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~6_combout\ = (\inst14|inst13|RA\(0) & ((\AUX|data_out\(10)))) # (!\inst14|inst13|RA\(0) & (\inst1|Yupa2[1]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[1]~22_combout\,
	datab => \AUX|data_out\(10),
	datac => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~6_combout\);

-- Location: FF_X66_Y48_N11
\AUX|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(9));

-- Location: LCCOMB_X64_Y50_N14
\AUX|data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~7_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(9))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(0),
	datac => \AUX|data_out\(9),
	datad => \inst1|Yupa2[0]~25_combout\,
	combout => \AUX|data_out~7_combout\);

-- Location: FF_X64_Y50_N15
\AUX|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(8));

-- Location: LCCOMB_X67_Y48_N30
\inst6|mem~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~30_combout\ = (!\inst16|valor_interno\(1) & ((\inst16|valor_interno\(2) & (!\inst16|valor_interno\(3) & !\inst16|valor_interno\(0))) # (!\inst16|valor_interno\(2) & (\inst16|valor_interno\(3) & \inst16|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|valor_interno\(1),
	datab => \inst16|valor_interno\(2),
	datac => \inst16|valor_interno\(3),
	datad => \inst16|valor_interno\(0),
	combout => \inst6|mem~30_combout\);

-- Location: LCCOMB_X67_Y48_N6
\inst6|mem~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~31_combout\ = (\inst6|mem~30_combout\ & \inst6|mem~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mem~30_combout\,
	datad => \inst6|mem~17_combout\,
	combout => \inst6|mem~31_combout\);

-- Location: FF_X67_Y48_N7
\inst6|data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|mem~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[0]~reg0_q\);

-- Location: LCCOMB_X65_Y49_N16
\inst1|Yupa2[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~24_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\inst6|data[0]~reg0_q\) # (!\inst6|data[7]~1_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(8) & ((\inst6|data[0]~reg0_q\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(8),
	datac => \inst6|data[0]~reg0_q\,
	datad => \inst6|data[7]~1_combout\,
	combout => \inst1|Yupa2[0]~24_combout\);

-- Location: LCCOMB_X65_Y49_N6
\inst1|Yupa2[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[0]~25_combout\ = ((\inst1|Yupa[0]~31_combout\ & (\inst1|Yupa2[0]~23_combout\ & \inst1|Yupa2[0]~24_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[0]~31_combout\,
	datab => \inst1|Yupa2[0]~23_combout\,
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst1|Yupa2[0]~24_combout\,
	combout => \inst1|Yupa2[0]~25_combout\);

-- Location: FF_X66_Y49_N31
\ACCA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[0]~7_combout\,
	asdata => \inst1|Yupa2[0]~25_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(0));

-- Location: LCCOMB_X65_Y49_N18
\ACCA|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[0]~7_combout\ = (\ACCA|data_out\(0)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[0]~7_combout\);

-- Location: FF_X66_Y50_N5
\inst1|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~4_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(1));

-- Location: LCCOMB_X64_Y49_N20
\inst1|Yupa[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~27_combout\ = (\inst1|Yupa_interno\(1)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|nDUPA~q\,
	datad => \inst1|Yupa_interno\(1),
	combout => \inst1|Yupa[1]~27_combout\);

-- Location: LCCOMB_X65_Y50_N14
\inst1|Yupa2[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~20_combout\ = (\ACCB|data_out\(1) & ((\ACCA|data_out\(1)) # ((\ACCA|B[7]~0_combout\)))) # (!\ACCB|data_out\(1) & (\ACCB|B[7]~0_combout\ & ((\ACCA|data_out\(1)) # (\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(1),
	datab => \ACCA|data_out\(1),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[1]~20_combout\);

-- Location: LCCOMB_X67_Y48_N28
\inst6|mem~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~28_combout\ = (\inst16|valor_interno\(1) & ((\inst16|valor_interno\(2)) # ((\inst16|valor_interno\(3)) # (\inst16|valor_interno\(0))))) # (!\inst16|valor_interno\(1) & (\inst16|valor_interno\(2) & (\inst16|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|valor_interno\(1),
	datab => \inst16|valor_interno\(2),
	datac => \inst16|valor_interno\(3),
	datad => \inst16|valor_interno\(0),
	combout => \inst6|mem~28_combout\);

-- Location: LCCOMB_X67_Y48_N12
\inst6|mem~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~29_combout\ = (\inst6|mem~17_combout\ & !\inst6|mem~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem~17_combout\,
	datad => \inst6|mem~28_combout\,
	combout => \inst6|mem~29_combout\);

-- Location: FF_X67_Y48_N13
\inst6|data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|mem~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[1]~reg0_q\);

-- Location: LCCOMB_X65_Y48_N12
\inst1|Yupa2[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~21_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\inst6|data[1]~reg0_q\) # (!\inst6|data[7]~1_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(9) & ((\inst6|data[1]~reg0_q\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(9),
	datac => \inst6|data[7]~1_combout\,
	datad => \inst6|data[1]~reg0_q\,
	combout => \inst1|Yupa2[1]~21_combout\);

-- Location: LCCOMB_X65_Y48_N26
\inst1|Yupa2[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[1]~22_combout\ = ((\inst1|Yupa[1]~27_combout\ & (\inst1|Yupa2[1]~20_combout\ & \inst1|Yupa2[1]~21_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[1]~27_combout\,
	datab => \inst1|Yupa2[7]~3_combout\,
	datac => \inst1|Yupa2[1]~20_combout\,
	datad => \inst1|Yupa2[1]~21_combout\,
	combout => \inst1|Yupa2[1]~22_combout\);

-- Location: FF_X66_Y49_N21
\ACCA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[1]~6_combout\,
	asdata => \inst1|Yupa2[1]~22_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(1));

-- Location: LCCOMB_X64_Y50_N30
\AUX|data_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~14_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(2))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(2),
	datac => \inst14|inst13|BD~q\,
	datad => \inst1|Yupa[1]~30_combout\,
	combout => \AUX|data_out~14_combout\);

-- Location: FF_X64_Y50_N31
\AUX|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~14_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(1));

-- Location: LCCOMB_X64_Y49_N22
\inst1|Yupa[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~28_combout\ = (\ACCA|data_out\(1) & ((\AUX|data_out\(1)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(1) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(1)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \AUX|data_out\(1),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[1]~28_combout\);

-- Location: LCCOMB_X64_Y49_N28
\inst1|Yupa[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~29_combout\ = (\ACCB|TRI_STATE~0_combout\ & (\ACCB|data_out\(1) & ((\inst6|data[1]~reg0_q\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|TRI_STATE~0_combout\ & (((\inst6|data[1]~reg0_q\) # (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \ACCB|data_out\(1),
	datac => \inst6|data[1]~reg0_q\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[1]~29_combout\);

-- Location: LCCOMB_X64_Y49_N30
\inst1|Yupa[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[1]~30_combout\ = ((\inst1|Yupa[1]~28_combout\ & (\inst1|Yupa[1]~27_combout\ & \inst1|Yupa[1]~29_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[1]~28_combout\,
	datab => \inst1|Yupa[1]~27_combout\,
	datac => \inst1|Yupa[7]~4_combout\,
	datad => \inst1|Yupa[1]~29_combout\,
	combout => \inst1|Yupa[1]~30_combout\);

-- Location: LCCOMB_X65_Y47_N0
\PC|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~54_combout\ = (\inst14|inst13|PC\(2) & (((\inst1|Yupa[1]~30_combout\)))) # (!\inst14|inst13|PC\(2) & ((\inst14|inst13|PC\(0) & (\PC|Add0~18_combout\)) # (!\inst14|inst13|PC\(0) & ((\inst1|Yupa[1]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \PC|Add0~18_combout\,
	datac => \inst1|Yupa[1]~30_combout\,
	datad => \inst14|inst13|PC\(0),
	combout => \PC|Add0~54_combout\);

-- Location: FF_X65_Y47_N1
\PC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~54_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(1));

-- Location: LCCOMB_X67_Y48_N10
\inst16|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|valor_interno[1]~feeder_combout\ = \PC|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(1),
	combout => \inst16|valor_interno[1]~feeder_combout\);

-- Location: FF_X67_Y48_N11
\inst16|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst16|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|nCBD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|valor_interno\(1));

-- Location: LCCOMB_X67_Y48_N2
\inst6|mem~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~20_combout\ = (\inst16|valor_interno\(1)) # ((\inst16|valor_interno\(2) & ((\inst16|valor_interno\(3)) # (!\inst16|valor_interno\(0)))) # (!\inst16|valor_interno\(2) & (\inst16|valor_interno\(3) $ (\inst16|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|valor_interno\(1),
	datab => \inst16|valor_interno\(2),
	datac => \inst16|valor_interno\(3),
	datad => \inst16|valor_interno\(0),
	combout => \inst6|mem~20_combout\);

-- Location: LCCOMB_X67_Y48_N8
\inst6|mem~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~21_combout\ = (!\inst6|mem~20_combout\ & \inst6|mem~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem~20_combout\,
	datad => \inst6|mem~17_combout\,
	combout => \inst6|mem~21_combout\);

-- Location: FF_X65_Y48_N7
\inst6|data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst6|mem~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[6]~reg0_q\);

-- Location: LCCOMB_X65_Y48_N22
\inst1|Yupa2[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~6_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\inst6|data[6]~reg0_q\) # (!\inst6|data[7]~1_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(14) & ((\inst6|data[6]~reg0_q\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(14),
	datac => \inst6|data[7]~1_combout\,
	datad => \inst6|data[6]~reg0_q\,
	combout => \inst1|Yupa2[6]~6_combout\);

-- Location: LCCOMB_X65_Y48_N16
\inst1|Yupa2[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[6]~7_combout\ = ((\inst1|Yupa[6]~6_combout\ & (\inst1|Yupa2[6]~5_combout\ & \inst1|Yupa2[6]~6_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[6]~6_combout\,
	datab => \inst1|Yupa2[6]~5_combout\,
	datac => \inst1|Yupa2[6]~6_combout\,
	datad => \inst1|Yupa2[7]~3_combout\,
	combout => \inst1|Yupa2[6]~7_combout\);

-- Location: LCCOMB_X62_Y49_N14
\ACCB|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[6]~1_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[6]~1_combout\)) # (!\inst14|inst13|EB\(0) & ((\inst1|Yupa2[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[6]~1_combout\,
	datad => \inst1|Yupa2[6]~7_combout\,
	combout => \ACCB|data_out[6]~1_combout\);

-- Location: FF_X62_Y49_N15
\ACCB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[6]~1_combout\,
	asdata => \inst1|Yupa[6]~9_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(6));

-- Location: LCCOMB_X65_Y50_N20
\inst1|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux34~0_combout\ = (\inst14|inst13|EA\(1) & ((\ACCB|data_out\(6)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(6),
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|nWB~q\,
	combout => \inst1|Mux34~0_combout\);

-- Location: LCCOMB_X66_Y50_N18
\inst1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = ((\inst1|Mux33~0_combout\ $ (\ACCA|C[5]~2_combout\ $ (!\inst1|Add0~11\)))) # (GND)
-- \inst1|Add0~13\ = CARRY((\inst1|Mux33~0_combout\ & ((\ACCA|C[5]~2_combout\) # (!\inst1|Add0~11\))) # (!\inst1|Mux33~0_combout\ & (\ACCA|C[5]~2_combout\ & !\inst1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux33~0_combout\,
	datab => \ACCA|C[5]~2_combout\,
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X66_Y50_N20
\inst1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\ACCA|C[6]~1_combout\ & ((\inst1|Mux34~0_combout\ & (\inst1|Add0~13\ & VCC)) # (!\inst1|Mux34~0_combout\ & (!\inst1|Add0~13\)))) # (!\ACCA|C[6]~1_combout\ & ((\inst1|Mux34~0_combout\ & (!\inst1|Add0~13\)) # 
-- (!\inst1|Mux34~0_combout\ & ((\inst1|Add0~13\) # (GND)))))
-- \inst1|Add0~15\ = CARRY((\ACCA|C[6]~1_combout\ & (!\inst1|Mux34~0_combout\ & !\inst1|Add0~13\)) # (!\ACCA|C[6]~1_combout\ & ((!\inst1|Add0~13\) # (!\inst1|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[6]~1_combout\,
	datab => \inst1|Mux34~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: FF_X66_Y50_N21
\inst1|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(6));

-- Location: LCCOMB_X66_Y48_N2
\inst1|Yupa[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~6_combout\ = (\inst1|Yupa_interno\(6)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Yupa_interno\(6),
	datad => \inst14|inst13|nDUPA~q\,
	combout => \inst1|Yupa[6]~6_combout\);

-- Location: LCCOMB_X65_Y48_N30
\inst1|Yupa[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~8_combout\ = (\inst6|data[6]~reg0_q\ & ((\ACCB|data_out\(6)) # ((!\ACCB|TRI_STATE~0_combout\)))) # (!\inst6|data[6]~reg0_q\ & (!\inst6|data[7]~0_combout\ & ((\ACCB|data_out\(6)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[6]~reg0_q\,
	datab => \ACCB|data_out\(6),
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[6]~8_combout\);

-- Location: LCCOMB_X64_Y48_N10
\inst1|Yupa[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~7_combout\ = (\ACCA|data_out\(6) & ((\AUX|data_out\(6)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(6) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(6)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \AUX|data_out\(6),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[6]~7_combout\);

-- Location: LCCOMB_X65_Y48_N4
\inst1|Yupa[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[6]~9_combout\ = ((\inst1|Yupa[6]~6_combout\ & (\inst1|Yupa[6]~8_combout\ & \inst1|Yupa[6]~7_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[6]~6_combout\,
	datab => \inst1|Yupa[7]~4_combout\,
	datac => \inst1|Yupa[6]~8_combout\,
	datad => \inst1|Yupa[6]~7_combout\,
	combout => \inst1|Yupa[6]~9_combout\);

-- Location: LCCOMB_X66_Y48_N0
\ACCA|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[6]~1_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[6]~1_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[6]~1_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \inst1|Yupa[6]~9_combout\,
	combout => \ACCA|data_out[6]~1_combout\);

-- Location: FF_X66_Y48_N1
\ACCA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[6]~1_combout\,
	asdata => \inst1|Yupa2[6]~7_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(6));

-- Location: LCCOMB_X66_Y48_N12
\ACCA|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[6]~1_combout\ = (\inst14|inst13|nWA~q\) # ((\ACCA|data_out\(6)) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \ACCA|data_out\(6),
	datac => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[6]~1_combout\);

-- Location: LCCOMB_X66_Y50_N26
\inst1|Banderas[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Banderas[2]~feeder_combout\ = \inst1|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~16_combout\,
	combout => \inst1|Banderas[2]~feeder_combout\);

-- Location: FF_X66_Y50_N27
\inst1|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Banderas[2]~feeder_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(2));

-- Location: LCCOMB_X64_Y50_N10
\inst1|Yupa[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~0_combout\ = (\inst1|Banderas\(2)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Banderas\(2),
	datad => \inst14|inst13|nDUPA~q\,
	combout => \inst1|Yupa[7]~0_combout\);

-- Location: LCCOMB_X67_Y48_N26
\inst6|mem~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~18_combout\ = (\inst16|valor_interno\(2)) # ((\inst16|valor_interno\(3) & (\inst16|valor_interno\(1))) # (!\inst16|valor_interno\(3) & ((\inst16|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|valor_interno\(1),
	datab => \inst16|valor_interno\(2),
	datac => \inst16|valor_interno\(3),
	datad => \inst16|valor_interno\(0),
	combout => \inst6|mem~18_combout\);

-- Location: LCCOMB_X67_Y48_N16
\inst6|mem~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~19_combout\ = (!\inst6|mem~18_combout\ & \inst6|mem~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mem~18_combout\,
	datad => \inst6|mem~17_combout\,
	combout => \inst6|mem~19_combout\);

-- Location: FF_X65_Y48_N11
\inst6|data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst6|mem~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~reg0_q\);

-- Location: LCCOMB_X65_Y48_N0
\inst1|Yupa[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~2_combout\ = (\inst6|data[7]~reg0_q\ & ((\ACCB|data_out\(7)) # ((!\ACCB|TRI_STATE~0_combout\)))) # (!\inst6|data[7]~reg0_q\ & (!\inst6|data[7]~0_combout\ & ((\ACCB|data_out\(7)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~reg0_q\,
	datab => \ACCB|data_out\(7),
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[7]~2_combout\);

-- Location: LCCOMB_X64_Y48_N16
\inst1|Yupa[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~1_combout\ = (\AUX|data_out\(7) & ((\ACCA|data_out\(7)) # ((!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(7) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(7)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(7),
	datab => \ACCA|data_out\(7),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[7]~1_combout\);

-- Location: LCCOMB_X63_Y49_N22
\inst1|Yupa[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[7]~5_combout\ = ((\inst1|Yupa[7]~0_combout\ & (\inst1|Yupa[7]~2_combout\ & \inst1|Yupa[7]~1_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[7]~0_combout\,
	datab => \inst1|Yupa[7]~2_combout\,
	datac => \inst1|Yupa[7]~1_combout\,
	datad => \inst1|Yupa[7]~4_combout\,
	combout => \inst1|Yupa[7]~5_combout\);

-- Location: FF_X62_Y49_N17
\ACCB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[7]~0_combout\,
	asdata => \inst1|Yupa[7]~5_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(7));

-- Location: LCCOMB_X65_Y50_N12
\inst1|Yupa2[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~0_combout\ = (\ACCB|data_out\(7) & ((\ACCA|data_out\(7)) # ((\ACCA|B[7]~0_combout\)))) # (!\ACCB|data_out\(7) & (\ACCB|B[7]~0_combout\ & ((\ACCA|data_out\(7)) # (\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \ACCA|data_out\(7),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[7]~0_combout\);

-- Location: LCCOMB_X65_Y50_N6
\inst1|Yupa2[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~1_combout\ = (\AUX|data_out\(15) & (((\inst6|data[7]~reg0_q\) # (!\inst6|data[7]~1_combout\)))) # (!\AUX|data_out\(15) & (\AUX|TRI_STATE_C~0_combout\ & ((\inst6|data[7]~reg0_q\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \inst6|data[7]~reg0_q\,
	datad => \inst6|data[7]~1_combout\,
	combout => \inst1|Yupa2[7]~1_combout\);

-- Location: LCCOMB_X65_Y50_N8
\inst1|Yupa2[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[7]~4_combout\ = ((\inst1|Yupa2[7]~0_combout\ & (\inst1|Yupa[7]~0_combout\ & \inst1|Yupa2[7]~1_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[7]~0_combout\,
	datab => \inst1|Yupa[7]~0_combout\,
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst1|Yupa2[7]~1_combout\,
	combout => \inst1|Yupa2[7]~4_combout\);

-- Location: LCCOMB_X64_Y50_N8
\AUX|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~0_combout\ = (\inst1|Yupa2[7]~4_combout\) # (\inst14|inst13|RA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Yupa2[7]~4_combout\,
	datac => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~0_combout\);

-- Location: FF_X64_Y50_N9
\AUX|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(15));

-- Location: LCCOMB_X65_Y48_N20
\AUX|data_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~1_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(15))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(0),
	datac => \AUX|data_out\(15),
	datad => \inst1|Yupa2[6]~7_combout\,
	combout => \AUX|data_out~1_combout\);

-- Location: FF_X65_Y48_N21
\AUX|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(14));

-- Location: LCCOMB_X66_Y48_N14
\AUX|data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~2_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(14))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(14),
	datac => \inst14|inst13|RA\(0),
	datad => \inst1|Yupa2[5]~10_combout\,
	combout => \AUX|data_out~2_combout\);

-- Location: FF_X66_Y48_N15
\AUX|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(13));

-- Location: LCCOMB_X67_Y49_N16
\AUX|data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~3_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(13))) # (!\inst14|inst13|RA\(0) & ((\inst1|Yupa2[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(0),
	datac => \AUX|data_out\(13),
	datad => \inst1|Yupa2[4]~13_combout\,
	combout => \AUX|data_out~3_combout\);

-- Location: FF_X67_Y49_N17
\AUX|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(12));

-- Location: LCCOMB_X67_Y49_N6
\ACCB|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[4]~3_combout\ = ((\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(4)) # (!\inst14|inst13|EB\(0)))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \ACCB|data_out\(4),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[4]~3_combout\);

-- Location: LCCOMB_X67_Y49_N22
\ACCB|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[4]~3_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[4]~3_combout\)) # (!\inst14|inst13|EB\(0) & ((\inst1|Yupa2[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[4]~3_combout\,
	datab => \inst14|inst13|EB\(0),
	datad => \inst1|Yupa2[4]~13_combout\,
	combout => \ACCB|data_out[4]~3_combout\);

-- Location: FF_X67_Y49_N23
\ACCB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[4]~3_combout\,
	asdata => \inst1|Yupa[4]~18_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(4));

-- Location: LCCOMB_X67_Y49_N12
\inst1|Yupa2[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~11_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\ACCB|data_out\(4)) # (\ACCB|B[7]~0_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(12) & ((\ACCB|data_out\(4)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(12),
	datac => \ACCB|data_out\(4),
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[4]~11_combout\);

-- Location: LCCOMB_X66_Y49_N10
\inst1|Yupa2[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~12_combout\ = (\inst6|data[7]~1_combout\ & (\inst6|data[4]~reg0_q\ & ((\ACCA|data_out\(4)) # (\ACCA|B[7]~0_combout\)))) # (!\inst6|data[7]~1_combout\ & ((\ACCA|data_out\(4)) # ((\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~1_combout\,
	datab => \ACCA|data_out\(4),
	datac => \ACCA|B[7]~0_combout\,
	datad => \inst6|data[4]~reg0_q\,
	combout => \inst1|Yupa2[4]~12_combout\);

-- Location: LCCOMB_X66_Y49_N8
\inst1|Yupa2[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[4]~13_combout\ = ((\inst1|Yupa[4]~15_combout\ & (\inst1|Yupa2[4]~11_combout\ & \inst1|Yupa2[4]~12_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[4]~15_combout\,
	datab => \inst1|Yupa2[4]~11_combout\,
	datac => \inst1|Yupa2[7]~3_combout\,
	datad => \inst1|Yupa2[4]~12_combout\,
	combout => \inst1|Yupa2[4]~13_combout\);

-- Location: FF_X66_Y49_N1
\ACCA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[4]~3_combout\,
	asdata => \inst1|Yupa2[4]~13_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(4));

-- Location: LCCOMB_X66_Y49_N16
\ACCA|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[4]~3_combout\ = ((\ACCA|data_out\(4)) # ((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(1)))) # (!\inst14|inst13|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(0),
	datab => \ACCA|data_out\(4),
	datac => \inst14|inst13|nWA~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[4]~3_combout\);

-- Location: LCCOMB_X65_Y50_N24
\inst1|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux32~0_combout\ = (\inst14|inst13|EA\(1) & ((\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(4)) # (!\inst14|inst13|EB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \ACCB|data_out\(4),
	combout => \inst1|Mux32~0_combout\);

-- Location: LCCOMB_X66_Y50_N16
\inst1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\ACCA|C[4]~3_combout\ & ((\inst1|Mux32~0_combout\ & (\inst1|Add0~9\ & VCC)) # (!\inst1|Mux32~0_combout\ & (!\inst1|Add0~9\)))) # (!\ACCA|C[4]~3_combout\ & ((\inst1|Mux32~0_combout\ & (!\inst1|Add0~9\)) # 
-- (!\inst1|Mux32~0_combout\ & ((\inst1|Add0~9\) # (GND)))))
-- \inst1|Add0~11\ = CARRY((\ACCA|C[4]~3_combout\ & (!\inst1|Mux32~0_combout\ & !\inst1|Add0~9\)) # (!\ACCA|C[4]~3_combout\ & ((!\inst1|Add0~9\) # (!\inst1|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[4]~3_combout\,
	datab => \inst1|Mux32~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X66_Y50_N2
\inst1|Yupa_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa_interno[5]~feeder_combout\ = \inst1|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|Yupa_interno[5]~feeder_combout\);

-- Location: FF_X66_Y50_N3
\inst1|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Yupa_interno[5]~feeder_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(5));

-- Location: LCCOMB_X65_Y48_N18
\inst1|Yupa[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~11_combout\ = (\inst1|Yupa_interno\(5)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Yupa_interno\(5),
	datad => \inst14|inst13|nDUPA~q\,
	combout => \inst1|Yupa[5]~11_combout\);

-- Location: LCCOMB_X66_Y48_N20
\inst1|Yupa2[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~8_combout\ = (\ACCA|data_out\(5) & ((\ACCB|data_out\(5)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(5) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(5)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \ACCB|data_out\(5),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \inst1|Yupa2[5]~8_combout\);

-- Location: LCCOMB_X67_Y48_N18
\inst6|mem~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~22_combout\ = (!\inst16|valor_interno\(1) & (\inst16|valor_interno\(0) & (\inst16|valor_interno\(2) $ (\inst16|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|valor_interno\(1),
	datab => \inst16|valor_interno\(2),
	datac => \inst16|valor_interno\(3),
	datad => \inst16|valor_interno\(0),
	combout => \inst6|mem~22_combout\);

-- Location: LCCOMB_X67_Y48_N22
\inst6|mem~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~23_combout\ = (\inst6|mem~17_combout\ & \inst6|mem~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem~17_combout\,
	datad => \inst6|mem~22_combout\,
	combout => \inst6|mem~23_combout\);

-- Location: FF_X67_Y48_N23
\inst6|data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|mem~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[5]~reg0_q\);

-- Location: LCCOMB_X66_Y48_N22
\inst1|Yupa2[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~9_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\inst6|data[5]~reg0_q\) # (!\inst6|data[7]~1_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(13) & ((\inst6|data[5]~reg0_q\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(13),
	datac => \inst6|data[7]~1_combout\,
	datad => \inst6|data[5]~reg0_q\,
	combout => \inst1|Yupa2[5]~9_combout\);

-- Location: LCCOMB_X66_Y48_N24
\inst1|Yupa2[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa2[5]~10_combout\ = ((\inst1|Yupa[5]~11_combout\ & (\inst1|Yupa2[5]~8_combout\ & \inst1|Yupa2[5]~9_combout\))) # (!\inst1|Yupa2[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[5]~11_combout\,
	datab => \inst1|Yupa2[5]~8_combout\,
	datac => \inst1|Yupa2[5]~9_combout\,
	datad => \inst1|Yupa2[7]~3_combout\,
	combout => \inst1|Yupa2[5]~10_combout\);

-- Location: FF_X66_Y48_N7
\ACCA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[5]~2_combout\,
	asdata => \inst1|Yupa2[5]~10_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(5));

-- Location: LCCOMB_X65_Y48_N10
\inst1|Yupa[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~10_combout\ = (\ACCB|TRI_STATE~0_combout\) # ((\inst14|inst13|nDUPA~q\) # (\inst1|Yupa[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \inst14|inst13|nDUPA~q\,
	datad => \inst1|Yupa[7]~3_combout\,
	combout => \inst1|Yupa[5]~10_combout\);

-- Location: LCCOMB_X64_Y48_N26
\inst1|Yupa[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~12_combout\ = (\ACCB|data_out\(5) & ((\AUX|data_out\(5)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(5) & (!\ACCB|TRI_STATE~0_combout\ & ((\AUX|data_out\(5)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(5),
	datab => \AUX|data_out\(5),
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[5]~12_combout\);

-- Location: LCCOMB_X64_Y48_N12
\inst1|Yupa[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~13_combout\ = (\inst1|Yupa[5]~12_combout\ & (\inst1|Yupa[5]~11_combout\ & ((\inst6|data[5]~reg0_q\) # (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~0_combout\,
	datab => \inst6|data[5]~reg0_q\,
	datac => \inst1|Yupa[5]~12_combout\,
	datad => \inst1|Yupa[5]~11_combout\,
	combout => \inst1|Yupa[5]~13_combout\);

-- Location: LCCOMB_X64_Y48_N22
\inst1|Yupa[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[5]~14_combout\ = (\ACCA|TRI_STATE~0_combout\ & (\ACCA|data_out\(5) & ((\inst1|Yupa[5]~13_combout\)))) # (!\ACCA|TRI_STATE~0_combout\ & (((\inst1|Yupa[5]~13_combout\) # (!\inst1|Yupa[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \ACCA|TRI_STATE~0_combout\,
	datac => \inst1|Yupa[5]~10_combout\,
	datad => \inst1|Yupa[5]~13_combout\,
	combout => \inst1|Yupa[5]~14_combout\);

-- Location: FF_X64_Y48_N1
\inst8|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[5]~14_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(9));

-- Location: IOIBUF_X58_Y54_N29
\IRQn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRQn,
	o => \IRQn~input_o\);

-- Location: LCCOMB_X63_Y50_N22
\inst3|IRQ_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|IRQ_flag~0_combout\ = (\inst3|IRQ_flag~q\) # (!\IRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|IRQ_flag~q\,
	datad => \IRQn~input_o\,
	combout => \inst3|IRQ_flag~0_combout\);

-- Location: FF_X63_Y50_N23
\inst3|IRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|IRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|IRQ_flag~q\);

-- Location: IOIBUF_X62_Y54_N29
\XIRQn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XIRQn,
	o => \XIRQn~input_o\);

-- Location: LCCOMB_X63_Y50_N24
\inst3|XIRQ_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|XIRQ_flag~0_combout\ = (\inst3|XIRQ_flag~q\) # (!\XIRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|XIRQ_flag~q\,
	datad => \XIRQn~input_o\,
	combout => \inst3|XIRQ_flag~0_combout\);

-- Location: FF_X63_Y50_N25
\inst3|XIRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|XIRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|XIRQ_flag~q\);

-- Location: LCCOMB_X63_Y50_N6
\inst14|inst5|$00000|auto_generated|result_node[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~7_combout\ = (!\inst3|IRQ_flag~q\ & \inst3|XIRQ_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|IRQ_flag~q\,
	datad => \inst3|XIRQ_flag~q\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~7_combout\);

-- Location: LCCOMB_X64_Y48_N0
\inst14|inst5|$00000|auto_generated|result_node[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~8_combout\ = (\inst14|inst13|instruccion\(1) & ((\inst14|inst13|instruccion\(0) & ((\inst14|inst5|$00000|auto_generated|result_node[9]~7_combout\))) # (!\inst14|inst13|instruccion\(0) & 
-- (\inst8|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datab => \inst14|inst13|instruccion\(1),
	datac => \inst8|valor_interno\(9),
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~7_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~8_combout\);

-- Location: LCCOMB_X60_Y49_N28
\inst14|inst9|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal12~0_combout\ = (\inst14|inst3|SELECTOR~5_combout\ & (((!\inst14|inst5|$00000|auto_generated|result_node[9]~8_combout\)))) # (!\inst14|inst3|SELECTOR~5_combout\ & (!\inst14|inst4|valor_interno\(2) & (!\inst14|inst4|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(2),
	datab => \inst14|inst4|valor_interno\(9),
	datac => \inst14|inst3|SELECTOR~5_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	combout => \inst14|inst9|Equal12~0_combout\);

-- Location: LCCOMB_X60_Y49_N30
\inst14|inst9|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal12~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\ & (\inst14|inst9|Equal12~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & 
-- \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\,
	datab => \inst14|inst9|Equal12~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\,
	combout => \inst14|inst9|Equal12~1_combout\);

-- Location: LCCOMB_X63_Y48_N2
\inst14|inst9|data[26]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~48_combout\ = (!\inst14|inst9|Equal10~0_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\) # ((!\inst14|inst9|Equal15~0_combout\) # (!\inst14|inst9|Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datab => \inst14|inst9|Equal12~1_combout\,
	datac => \inst14|inst9|Equal15~0_combout\,
	datad => \inst14|inst9|Equal10~0_combout\,
	combout => \inst14|inst9|data[26]~48_combout\);

-- Location: LCCOMB_X63_Y48_N18
\inst14|inst9|data[26]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~6_combout\ = (\inst14|inst9|data[26]~48_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst9|Equal15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal15~2_combout\,
	datad => \inst14|inst9|data[26]~48_combout\,
	combout => \inst14|inst9|data[26]~6_combout\);

-- Location: LCCOMB_X62_Y48_N26
\inst14|inst9|data[90]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~25_combout\ = (\inst14|inst9|data[32]~20_combout\ & (\inst14|inst9|data[90]~21_combout\ & \inst14|inst9|data[26]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data[32]~20_combout\,
	datac => \inst14|inst9|data[90]~21_combout\,
	datad => \inst14|inst9|data[26]~6_combout\,
	combout => \inst14|inst9|data[90]~25_combout\);

-- Location: LCCOMB_X62_Y48_N2
\inst14|inst9|data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~26_combout\ = ((!\inst14|inst9|Equal2~4_combout\ & (\inst14|inst9|data[26]~12_combout\ & \inst14|inst9|data[90]~25_combout\))) # (!\inst14|inst9|data~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~4_combout\,
	datab => \inst14|inst9|data[26]~12_combout\,
	datac => \inst14|inst9|data[90]~25_combout\,
	datad => \inst14|inst9|data~9_combout\,
	combout => \inst14|inst9|data~26_combout\);

-- Location: FF_X62_Y48_N3
\inst14|inst13|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(0));

-- Location: LCCOMB_X62_Y50_N22
\inst14|inst5|$00000|auto_generated|result_node[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\ = (!\inst14|inst13|instruccion\(1) & (\inst14|inst13|liga\(0) & \inst14|inst13|instruccion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|instruccion\(1),
	datac => \inst14|inst13|liga\(0),
	datad => \inst14|inst13|instruccion\(0),
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\);

-- Location: LCCOMB_X62_Y50_N16
\inst14|inst9|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~3_combout\ = (\inst14|inst3|SELECTOR~5_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\)))) # (!\inst14|inst3|SELECTOR~5_combout\ & (!\inst14|inst4|valor_interno\(1) & (\inst14|inst4|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(1),
	datab => \inst14|inst4|valor_interno\(0),
	datac => \inst14|inst3|SELECTOR~5_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\,
	combout => \inst14|inst9|Equal2~3_combout\);

-- Location: LCCOMB_X62_Y49_N26
\inst14|inst9|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal5~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & (\inst14|inst9|Equal2~3_combout\ & \inst14|inst9|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datac => \inst14|inst9|Equal2~3_combout\,
	datad => \inst14|inst9|Equal4~2_combout\,
	combout => \inst14|inst9|Equal5~0_combout\);

-- Location: LCCOMB_X61_Y49_N10
\inst14|inst9|data[71]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~33_combout\ = (!\inst14|inst9|Equal5~0_combout\ & (\inst14|inst9|Equal13~0_combout\ & \inst14|inst9|data[14]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal5~0_combout\,
	datac => \inst14|inst9|Equal13~0_combout\,
	datad => \inst14|inst9|data[14]~50_combout\,
	combout => \inst14|inst9|data[71]~33_combout\);

-- Location: FF_X61_Y49_N11
\inst14|inst13|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[71]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nDUPA~q\);

-- Location: LCCOMB_X66_Y50_N0
\inst1|Banderas[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Banderas[4]~feeder_combout\ = \inst1|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|Banderas[4]~feeder_combout\);

-- Location: FF_X66_Y50_N1
\inst1|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Banderas[4]~feeder_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(4));

-- Location: LCCOMB_X64_Y49_N16
\inst1|Yupa[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[4]~15_combout\ = (\inst1|Banderas\(4)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|nDUPA~q\,
	datad => \inst1|Banderas\(4),
	combout => \inst1|Yupa[4]~15_combout\);

-- Location: LCCOMB_X64_Y49_N14
\inst1|Yupa[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[4]~16_combout\ = (\ACCA|data_out\(4) & ((\AUX|data_out\(4)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(4) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(4)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \AUX|data_out\(4),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[4]~16_combout\);

-- Location: LCCOMB_X64_Y49_N4
\inst1|Yupa[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[4]~17_combout\ = (\ACCB|TRI_STATE~0_combout\ & (\ACCB|data_out\(4) & ((\inst6|data[4]~reg0_q\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|TRI_STATE~0_combout\ & (((\inst6|data[4]~reg0_q\) # (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \ACCB|data_out\(4),
	datac => \inst6|data[4]~reg0_q\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[4]~17_combout\);

-- Location: LCCOMB_X64_Y49_N26
\inst1|Yupa[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[4]~18_combout\ = ((\inst1|Yupa[4]~15_combout\ & (\inst1|Yupa[4]~16_combout\ & \inst1|Yupa[4]~17_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[4]~15_combout\,
	datab => \inst1|Yupa[4]~16_combout\,
	datac => \inst1|Yupa[4]~17_combout\,
	datad => \inst1|Yupa[7]~4_combout\,
	combout => \inst1|Yupa[4]~18_combout\);

-- Location: FF_X64_Y49_N17
\inst8|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[4]~18_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(8));

-- Location: LCCOMB_X64_Y49_N10
\inst14|inst5|$00000|auto_generated|result_node[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (((\inst8|valor_interno\(8))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (\inst14|inst4|valor_interno\(8) & (!\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst14|inst4|valor_interno\(8),
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst8|valor_interno\(8),
	combout => \inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\);

-- Location: LCCOMB_X60_Y49_N20
\inst14|inst4|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[9]~27_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ & (\inst14|inst4|valor_interno[8]~26\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ & 
-- (!\inst14|inst4|valor_interno[8]~26\ & VCC))
-- \inst14|inst4|valor_interno[9]~28\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ & !\inst14|inst4|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[8]~26\,
	combout => \inst14|inst4|valor_interno[9]~27_combout\,
	cout => \inst14|inst4|valor_interno[9]~28\);

-- Location: FF_X60_Y49_N21
\inst14|inst4|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[9]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(9));

-- Location: LCCOMB_X64_Y48_N6
\inst14|inst5|$00000|auto_generated|result_node[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[9]~8_combout\)))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & ((\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[9]~8_combout\))) # (!\inst14|inst3|SELECTOR~4_combout\ & (\inst14|inst4|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst14|inst4|valor_interno\(9),
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~8_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\);

-- Location: LCCOMB_X60_Y49_N22
\inst14|inst4|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[10]~29_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & (!\inst14|inst4|valor_interno[9]~28\)) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & 
-- ((\inst14|inst4|valor_interno[9]~28\) # (GND)))
-- \inst14|inst4|valor_interno[10]~30\ = CARRY((!\inst14|inst4|valor_interno[9]~28\) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[9]~28\,
	combout => \inst14|inst4|valor_interno[10]~29_combout\,
	cout => \inst14|inst4|valor_interno[10]~30\);

-- Location: FF_X60_Y49_N23
\inst14|inst4|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[10]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(10));

-- Location: LCCOMB_X64_Y48_N8
\inst8|valor_interno[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[10]~feeder_combout\ = \inst1|Yupa[6]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Yupa[6]~9_combout\,
	combout => \inst8|valor_interno[10]~feeder_combout\);

-- Location: FF_X64_Y48_N9
\inst8|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(10));

-- Location: LCCOMB_X64_Y48_N2
\inst14|inst5|$00000|auto_generated|result_node[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (((\inst8|valor_interno\(10))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (\inst14|inst4|valor_interno\(10) & (!\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst14|inst4|valor_interno\(10),
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst8|valor_interno\(10),
	combout => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\);

-- Location: LCCOMB_X60_Y49_N24
\inst14|inst4|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[11]~31_combout\ = \inst14|inst4|valor_interno[10]~30\ $ (!\inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\,
	cin => \inst14|inst4|valor_interno[10]~30\,
	combout => \inst14|inst4|valor_interno[11]~31_combout\);

-- Location: FF_X60_Y49_N25
\inst14|inst4|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[11]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(11));

-- Location: LCCOMB_X63_Y49_N16
\inst8|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[11]~feeder_combout\ = \inst1|Yupa[7]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Yupa[7]~5_combout\,
	combout => \inst8|valor_interno[11]~feeder_combout\);

-- Location: FF_X63_Y49_N17
\inst8|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(11));

-- Location: LCCOMB_X63_Y49_N8
\inst14|inst5|$00000|auto_generated|result_node[11]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (((\inst8|valor_interno\(11))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (\inst14|inst4|valor_interno\(11) & (!\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst14|inst4|valor_interno\(11),
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst8|valor_interno\(11),
	combout => \inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\);

-- Location: LCCOMB_X63_Y49_N20
\inst14|inst9|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~15_combout\ & ((\inst14|inst3|SELECTOR~5_combout\) # (!\inst14|inst4|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|SELECTOR~5_combout\,
	datab => \inst14|inst4|valor_interno\(3),
	datac => \inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~15_combout\,
	combout => \inst14|inst9|Equal4~0_combout\);

-- Location: LCCOMB_X63_Y49_N30
\inst14|inst9|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal15~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\ & 
-- \inst14|inst9|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~5_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\,
	datad => \inst14|inst9|Equal4~0_combout\,
	combout => \inst14|inst9|Equal15~0_combout\);

-- Location: LCCOMB_X60_Y48_N16
\inst14|inst9|Equal12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal12~3_combout\ = (\inst14|inst9|Equal15~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal15~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal12~1_combout\,
	combout => \inst14|inst9|Equal12~3_combout\);

-- Location: LCCOMB_X61_Y48_N6
\inst14|inst9|data[73]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~38_combout\ = (\inst14|inst9|Equal12~3_combout\ & (!\inst14|inst9|Equal6~0_combout\ & (\inst14|inst9|data[26]~49_combout\ & \inst14|inst9|data[72]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal12~3_combout\,
	datab => \inst14|inst9|Equal6~0_combout\,
	datac => \inst14|inst9|data[26]~49_combout\,
	datad => \inst14|inst9|data[72]~30_combout\,
	combout => \inst14|inst9|data[73]~38_combout\);

-- Location: FF_X61_Y48_N7
\inst14|inst13|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[73]~38_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(1));

-- Location: LCCOMB_X63_Y49_N14
\ACCB|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[0]~7_combout\ = (\ACCB|data_out\(0)) # (((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|C[0]~7_combout\);

-- Location: LCCOMB_X62_Y49_N10
\ACCB|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~7_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[0]~7_combout\)) # (!\inst14|inst13|EB\(0) & ((\inst1|Yupa2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[0]~7_combout\,
	datab => \inst14|inst13|EB\(0),
	datad => \inst1|Yupa2[0]~25_combout\,
	combout => \ACCB|data_out[0]~7_combout\);

-- Location: FF_X62_Y49_N11
\ACCB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[0]~7_combout\,
	asdata => \inst1|Yupa[0]~34_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(0));

-- Location: LCCOMB_X65_Y49_N22
\inst1|Yupa[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~33_combout\ = (\ACCB|data_out\(0) & (((\inst6|data[0]~reg0_q\) # (!\inst6|data[7]~0_combout\)))) # (!\ACCB|data_out\(0) & (!\ACCB|TRI_STATE~0_combout\ & ((\inst6|data[0]~reg0_q\) # (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \ACCB|TRI_STATE~0_combout\,
	datac => \inst6|data[0]~reg0_q\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[0]~33_combout\);

-- Location: LCCOMB_X64_Y50_N28
\AUX|data_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~15_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(1))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \AUX|data_out\(1),
	datad => \inst1|Yupa[0]~34_combout\,
	combout => \AUX|data_out~15_combout\);

-- Location: FF_X64_Y50_N29
\AUX|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(0));

-- Location: LCCOMB_X64_Y48_N18
\inst1|Yupa[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~32_combout\ = (\AUX|data_out\(0) & ((\ACCA|data_out\(0)) # ((!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(0) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(0)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(0),
	datab => \ACCA|data_out\(0),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[0]~32_combout\);

-- Location: LCCOMB_X65_Y49_N0
\inst1|Yupa[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[0]~34_combout\ = ((\inst1|Yupa[0]~33_combout\ & (\inst1|Yupa[0]~32_combout\ & \inst1|Yupa[0]~31_combout\))) # (!\inst1|Yupa[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[0]~33_combout\,
	datab => \inst1|Yupa[0]~32_combout\,
	datac => \inst1|Yupa[0]~31_combout\,
	datad => \inst1|Yupa[7]~4_combout\,
	combout => \inst1|Yupa[0]~34_combout\);

-- Location: LCCOMB_X65_Y49_N24
\inst8|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[4]~feeder_combout\ = \inst1|Yupa[0]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Yupa[0]~34_combout\,
	combout => \inst8|valor_interno[4]~feeder_combout\);

-- Location: FF_X65_Y49_N25
\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

-- Location: LCCOMB_X60_Y49_N10
\inst14|inst4|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[4]~17_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\ & (!\inst14|inst4|valor_interno[3]~16\)) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\ & 
-- ((\inst14|inst4|valor_interno[3]~16\) # (GND)))
-- \inst14|inst4|valor_interno[4]~18\ = CARRY((!\inst14|inst4|valor_interno[3]~16\) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[3]~16\,
	combout => \inst14|inst4|valor_interno[4]~17_combout\,
	cout => \inst14|inst4|valor_interno[4]~18\);

-- Location: FF_X60_Y49_N11
\inst14|inst4|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[4]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(4));

-- Location: LCCOMB_X65_Y49_N26
\inst14|inst5|$00000|auto_generated|result_node[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (\inst8|valor_interno\(4))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (((\inst14|inst4|valor_interno\(4) & !\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst8|valor_interno\(4),
	datac => \inst14|inst4|valor_interno\(4),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\);

-- Location: LCCOMB_X60_Y49_N12
\inst14|inst4|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[5]~19_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\ & (\inst14|inst4|valor_interno[4]~18\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\ & 
-- (!\inst14|inst4|valor_interno[4]~18\ & VCC))
-- \inst14|inst4|valor_interno[5]~20\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\ & !\inst14|inst4|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[4]~18\,
	combout => \inst14|inst4|valor_interno[5]~19_combout\,
	cout => \inst14|inst4|valor_interno[5]~20\);

-- Location: FF_X60_Y49_N13
\inst14|inst4|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[5]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(5));

-- Location: FF_X64_Y49_N21
\inst8|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[1]~30_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(5));

-- Location: LCCOMB_X62_Y49_N6
\inst14|inst5|$00000|auto_generated|result_node[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (((\inst8|valor_interno\(5))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (\inst14|inst4|valor_interno\(5) & (!\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(5),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst8|valor_interno\(5),
	combout => \inst14|inst5|$00000|auto_generated|result_node[5]~13_combout\);

-- Location: LCCOMB_X60_Y49_N14
\inst14|inst4|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[6]~21_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\ & (!\inst14|inst4|valor_interno[5]~20\)) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\ & 
-- ((\inst14|inst4|valor_interno[5]~20\) # (GND)))
-- \inst14|inst4|valor_interno[6]~22\ = CARRY((!\inst14|inst4|valor_interno[5]~20\) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[5]~20\,
	combout => \inst14|inst4|valor_interno[6]~21_combout\,
	cout => \inst14|inst4|valor_interno[6]~22\);

-- Location: FF_X60_Y49_N15
\inst14|inst4|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[6]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(6));

-- Location: FF_X65_Y49_N5
\inst8|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst1|Yupa[2]~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(6));

-- Location: LCCOMB_X65_Y49_N2
\inst14|inst5|$00000|auto_generated|result_node[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (((\inst8|valor_interno\(6))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (\inst14|inst4|valor_interno\(6) & ((!\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst14|inst4|valor_interno\(6),
	datac => \inst8|valor_interno\(6),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[6]~12_combout\);

-- Location: FF_X60_Y49_N17
\inst14|inst4|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[7]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(7));

-- Location: LCCOMB_X64_Y49_N12
\inst8|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[7]~feeder_combout\ = \inst1|Yupa[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Yupa[3]~22_combout\,
	combout => \inst8|valor_interno[7]~feeder_combout\);

-- Location: FF_X64_Y49_N13
\inst8|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(7));

-- Location: LCCOMB_X64_Y49_N18
\inst14|inst5|$00000|auto_generated|result_node[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (((\inst8|valor_interno\(7))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (\inst14|inst4|valor_interno\(7) & (!\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst14|inst4|valor_interno\(7),
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst8|valor_interno\(7),
	combout => \inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\);

-- Location: LCCOMB_X61_Y49_N8
\inst14|inst9|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\ & 
-- \inst14|inst9|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\,
	datad => \inst14|inst9|Equal12~0_combout\,
	combout => \inst14|inst9|Equal2~0_combout\);

-- Location: LCCOMB_X61_Y49_N0
\inst14|inst9|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal2~0_combout\ & \inst14|inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal2~0_combout\,
	datad => \inst14|inst9|Equal0~0_combout\,
	combout => \inst14|inst9|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y48_N28
\inst14|inst9|data[81]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[81]~27_combout\ = (\inst14|inst9|data~26_combout\) # ((!\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ & \inst14|inst9|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst9|data~26_combout\,
	combout => \inst14|inst9|data[81]~27_combout\);

-- Location: FF_X62_Y48_N29
\inst14|inst13|liga[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[81]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(3));

-- Location: LCCOMB_X62_Y50_N24
\inst14|inst5|$00000|auto_generated|result_node[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[3]~15_combout\ = (!\inst14|inst13|prueba\(0) & (!\inst14|inst13|instruccion\(1) & (\inst14|inst13|instruccion\(0) & \inst14|inst13|liga\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(0),
	datab => \inst14|inst13|instruccion\(1),
	datac => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst13|liga\(3),
	combout => \inst14|inst5|$00000|auto_generated|result_node[3]~15_combout\);

-- Location: LCCOMB_X61_Y49_N20
\inst14|inst5|$00000|auto_generated|result_node[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[3]~15_combout\) # ((\inst14|inst4|valor_interno\(3) & (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & 
-- !\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(3),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[3]~15_combout\,
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\);

-- Location: LCCOMB_X61_Y49_N4
\inst14|inst9|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~4_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ & (\inst14|inst9|Equal2~0_combout\ & (\inst14|inst9|Equal2~3_combout\ & \inst14|inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datab => \inst14|inst9|Equal2~0_combout\,
	datac => \inst14|inst9|Equal2~3_combout\,
	datad => \inst14|inst9|Equal0~0_combout\,
	combout => \inst14|inst9|Equal2~4_combout\);

-- Location: LCCOMB_X61_Y49_N30
\inst14|inst9|data[91]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~15_combout\ = (!\inst14|inst9|Equal2~4_combout\ & !\inst14|inst9|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|Equal2~4_combout\,
	datad => \inst14|inst9|Equal0~1_combout\,
	combout => \inst14|inst9|data[91]~15_combout\);

-- Location: LCCOMB_X62_Y50_N6
\inst14|inst9|data[90]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~16_combout\ = (!\inst14|inst9|Equal19~1_combout\ & (!\inst14|inst9|Equal10~0_combout\ & ((!\inst14|inst9|Equal12~2_combout\) # (!\inst14|inst9|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~3_combout\,
	datab => \inst14|inst9|Equal19~1_combout\,
	datac => \inst14|inst9|Equal12~2_combout\,
	datad => \inst14|inst9|Equal10~0_combout\,
	combout => \inst14|inst9|data[90]~16_combout\);

-- Location: LCCOMB_X62_Y50_N4
\inst14|inst9|data[91]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~17_combout\ = (\inst14|inst9|data[91]~15_combout\ & ((\inst14|inst9|Equal3~0_combout\) # (\inst14|inst9|Equal6~0_combout\ $ (!\inst14|inst9|data[90]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal6~0_combout\,
	datab => \inst14|inst9|data[91]~15_combout\,
	datac => \inst14|inst9|Equal3~0_combout\,
	datad => \inst14|inst9|data[90]~16_combout\,
	combout => \inst14|inst9|data[91]~17_combout\);

-- Location: FF_X62_Y50_N5
\inst14|inst13|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[91]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(1));

-- Location: LCCOMB_X63_Y49_N10
\inst14|inst5|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ = (!\inst14|inst13|instruccion\(0) & \inst14|inst13|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X62_Y50_N10
\inst14|inst5|$00000|auto_generated|result_node[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ = (\inst14|inst3|SELECTOR~4_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\)))) # (!\inst14|inst3|SELECTOR~4_combout\ & 
-- ((\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\ & ((\inst14|inst4|valor_interno\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|SELECTOR~4_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\,
	datad => \inst14|inst4|valor_interno\(0),
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\);

-- Location: LCCOMB_X62_Y49_N12
\inst14|inst9|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal6~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & 
-- \inst14|inst9|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datad => \inst14|inst9|Equal4~2_combout\,
	combout => \inst14|inst9|Equal6~0_combout\);

-- Location: LCCOMB_X62_Y50_N14
\inst14|inst9|data[91]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~28_combout\ = (\inst14|inst9|data[91]~15_combout\ & (!\inst14|inst9|Equal3~0_combout\ & (\inst14|inst9|Equal6~0_combout\ $ (!\inst14|inst9|data[90]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal6~0_combout\,
	datab => \inst14|inst9|data[91]~15_combout\,
	datac => \inst14|inst9|Equal3~0_combout\,
	datad => \inst14|inst9|data[90]~16_combout\,
	combout => \inst14|inst9|data[91]~28_combout\);

-- Location: FF_X62_Y50_N15
\inst14|inst13|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[91]~28_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(0));

-- Location: LCCOMB_X63_Y50_N4
\inst14|inst3|SELECTOR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~2_combout\ = (\AUX|data_out\(15)) # ((\inst14|inst13|RA\(0)) # (\inst14|inst13|BD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(15),
	datac => \inst14|inst13|RA\(0),
	datad => \inst14|inst13|BD~q\,
	combout => \inst14|inst3|SELECTOR~2_combout\);

-- Location: LCCOMB_X63_Y50_N18
\inst14|inst3|SELECTOR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~3_combout\ = (\inst14|inst13|instruccion\(0) & (((\inst3|XIRQ_flag~q\) # (\inst3|IRQ_flag~q\)) # (!\inst14|inst13|prueba\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(0),
	datab => \inst3|XIRQ_flag~q\,
	datac => \inst3|IRQ_flag~q\,
	datad => \inst14|inst13|instruccion\(0),
	combout => \inst14|inst3|SELECTOR~3_combout\);

-- Location: LCCOMB_X63_Y50_N20
\inst14|inst3|SELECTOR~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~4_combout\ = (\inst14|inst3|SELECTOR~3_combout\ & ((\inst14|inst13|prueba\(0) & (!\inst14|inst13|liga\(3))) # (!\inst14|inst13|prueba\(0) & ((\inst14|inst13|liga\(3)) # (!\inst14|inst3|SELECTOR~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(0),
	datab => \inst14|inst13|liga\(3),
	datac => \inst14|inst3|SELECTOR~2_combout\,
	datad => \inst14|inst3|SELECTOR~3_combout\,
	combout => \inst14|inst3|SELECTOR~4_combout\);

-- Location: LCCOMB_X62_Y50_N30
\inst14|inst5|$00000|auto_generated|result_node[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ = (!\inst14|inst3|SELECTOR~4_combout\ & (\inst14|inst4|valor_interno\(1) & ((\inst14|inst13|instruccion\(0)) # (!\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|SELECTOR~4_combout\,
	datab => \inst14|inst13|instruccion\(1),
	datac => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst4|valor_interno\(1),
	combout => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\);

-- Location: LCCOMB_X61_Y48_N16
\inst14|inst9|data[32]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~8_combout\ = (!\inst14|inst9|Equal11~0_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst9|Equal12~2_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal12~2_combout\,
	datad => \inst14|inst9|Equal11~0_combout\,
	combout => \inst14|inst9|data[32]~8_combout\);

-- Location: LCCOMB_X62_Y48_N12
\inst14|inst9|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal7~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\ & 
-- \inst14|inst9|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~6_combout\,
	datad => \inst14|inst9|Equal4~2_combout\,
	combout => \inst14|inst9|Equal7~0_combout\);

-- Location: LCCOMB_X62_Y48_N10
\inst14|inst9|data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~9_combout\ = (\inst14|inst9|data[32]~8_combout\ & !\inst14|inst9|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|data[32]~8_combout\,
	datad => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|data~9_combout\);

-- Location: LCCOMB_X61_Y49_N14
\inst14|inst9|data[90]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~23_combout\ = (\inst14|inst9|Equal6~0_combout\) # ((!\inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\ & \inst14|inst9|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~16_combout\,
	datac => \inst14|inst9|Equal6~0_combout\,
	datad => \inst14|inst9|Equal0~1_combout\,
	combout => \inst14|inst9|data[90]~23_combout\);

-- Location: LCCOMB_X62_Y48_N22
\inst14|inst9|data[90]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~24_combout\ = ((\inst14|inst9|data[90]~23_combout\) # ((\inst14|inst9|data[90]~22_combout\) # (!\inst14|inst9|data[90]~16_combout\))) # (!\inst14|inst9|data~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~9_combout\,
	datab => \inst14|inst9|data[90]~23_combout\,
	datac => \inst14|inst9|data[90]~16_combout\,
	datad => \inst14|inst9|data[90]~22_combout\,
	combout => \inst14|inst9|data[90]~24_combout\);

-- Location: FF_X62_Y48_N23
\inst14|inst13|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[90]~24_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(0));

-- Location: LCCOMB_X63_Y49_N12
\inst14|inst5|$00000|auto_generated|result_node[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\ = (\inst14|inst4|valor_interno\(2) & (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst13|instruccion\(0)) # (!\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datab => \inst14|inst13|instruccion\(1),
	datac => \inst14|inst4|valor_interno\(2),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\);

-- Location: LCCOMB_X63_Y49_N4
\inst14|inst9|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~19_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[8]~10_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~11_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	combout => \inst14|inst9|Equal2~1_combout\);

-- Location: LCCOMB_X62_Y48_N18
\inst14|inst9|data[26]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~49_combout\ = (((\inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\) # (!\inst14|inst9|Equal4~1_combout\)) # (!\inst14|inst9|Equal2~3_combout\)) # (!\inst14|inst9|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~1_combout\,
	datab => \inst14|inst9|Equal2~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[4]~14_combout\,
	datad => \inst14|inst9|Equal4~1_combout\,
	combout => \inst14|inst9|data[26]~49_combout\);

-- Location: LCCOMB_X61_Y48_N0
\inst14|inst9|data[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~32_combout\ = (\inst14|inst9|data[26]~49_combout\ & ((\inst14|inst9|data[72]~31_combout\ & ((\inst14|inst9|Equal13~0_combout\))) # (!\inst14|inst9|data[72]~31_combout\ & (\inst14|inst9|data[72]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~49_combout\,
	datab => \inst14|inst9|data[72]~30_combout\,
	datac => \inst14|inst9|Equal13~0_combout\,
	datad => \inst14|inst9|data[72]~31_combout\,
	combout => \inst14|inst9|data[6]~32_combout\);

-- Location: FF_X61_Y48_N1
\inst14|inst13|CZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[6]~32_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CZ~q\);

-- Location: LCCOMB_X61_Y49_N2
\inst14|inst9|data[14]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~29_combout\ = (\inst14|inst9|data[14]~50_combout\ & (!\inst14|inst9|Equal5~0_combout\ & (!\inst14|inst9|Equal6~0_combout\ & \inst14|inst9|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[14]~50_combout\,
	datab => \inst14|inst9|Equal5~0_combout\,
	datac => \inst14|inst9|Equal6~0_combout\,
	datad => \inst14|inst9|Equal10~0_combout\,
	combout => \inst14|inst9|data[14]~29_combout\);

-- Location: FF_X61_Y49_N3
\inst14|inst13|B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[14]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B4~q\);

-- Location: LCCOMB_X66_Y50_N4
\inst1|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|Add0~10_combout\) # (\inst1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~10_combout\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X66_Y50_N28
\inst1|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~1_combout\ = (\inst1|Add0~4_combout\) # ((\inst1|Add0~2_combout\) # ((\inst1|Add0~8_combout\) # (\inst1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \inst1|Add0~2_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|WideOr0~1_combout\);

-- Location: LCCOMB_X66_Y50_N30
\inst1|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~combout\ = (!\inst1|Add0~16_combout\ & (!\inst1|Add0~14_combout\ & (!\inst1|WideOr0~0_combout\ & !\inst1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datab => \inst1|Add0~14_combout\,
	datac => \inst1|WideOr0~0_combout\,
	datad => \inst1|WideOr0~1_combout\,
	combout => \inst1|WideOr0~combout\);

-- Location: FF_X66_Y50_N31
\inst1|Banderas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|WideOr0~combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(0));

-- Location: FF_X61_Y49_N15
\inst14|inst13|B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B3~q\);

-- Location: LCCOMB_X66_Y49_N2
\inst5|inst10|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~0_combout\ = (\inst14|inst13|B3~q\ & (((!\ACCA|data_out\(6) & !\ACCA|data_out\(5))))) # (!\inst14|inst13|B3~q\ & (\inst1|Banderas\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(0),
	datab => \ACCA|data_out\(6),
	datac => \inst14|inst13|B3~q\,
	datad => \ACCA|data_out\(5),
	combout => \inst5|inst10|output~0_combout\);

-- Location: LCCOMB_X66_Y49_N24
\inst5|inst10|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~1_combout\ = (!\ACCA|data_out\(0) & (!\ACCA|data_out\(1) & (!\ACCA|data_out\(3) & !\ACCA|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \ACCA|data_out\(1),
	datac => \ACCA|data_out\(3),
	datad => \ACCA|data_out\(4),
	combout => \inst5|inst10|output~1_combout\);

-- Location: LCCOMB_X66_Y49_N26
\inst5|inst10|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~2_combout\ = ((!\ACCA|data_out\(7) & (\inst5|inst10|output~1_combout\ & !\ACCA|data_out\(2)))) # (!\inst14|inst13|B3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \inst5|inst10|output~1_combout\,
	datac => \inst14|inst13|B3~q\,
	datad => \ACCA|data_out\(2),
	combout => \inst5|inst10|output~2_combout\);

-- Location: LCCOMB_X66_Y49_N4
\inst5|inst10|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~4_combout\ = (!\ACCB|data_out\(5) & (!\ACCB|data_out\(4) & (!\ACCB|data_out\(3) & !\ACCB|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(5),
	datab => \ACCB|data_out\(4),
	datac => \ACCB|data_out\(3),
	datad => \ACCB|data_out\(2),
	combout => \inst5|inst10|output~4_combout\);

-- Location: LCCOMB_X61_Y49_N18
\inst5|inst10|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~3_combout\ = (\inst14|inst13|B4~q\ & (!\ACCB|data_out\(6) & (!\inst14|inst13|B3~q\ & !\ACCB|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \ACCB|data_out\(6),
	datac => \inst14|inst13|B3~q\,
	datad => \ACCB|data_out\(7),
	combout => \inst5|inst10|output~3_combout\);

-- Location: LCCOMB_X66_Y49_N18
\inst5|inst10|output~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~5_combout\ = (!\ACCB|data_out\(0) & (!\ACCB|data_out\(1) & (\inst5|inst10|output~4_combout\ & \inst5|inst10|output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \ACCB|data_out\(1),
	datac => \inst5|inst10|output~4_combout\,
	datad => \inst5|inst10|output~3_combout\,
	combout => \inst5|inst10|output~5_combout\);

-- Location: LCCOMB_X66_Y49_N12
\inst5|inst10|output~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~6_combout\ = (\inst5|inst10|output~5_combout\) # ((!\inst14|inst13|B4~q\ & (\inst5|inst10|output~0_combout\ & \inst5|inst10|output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \inst5|inst10|output~0_combout\,
	datac => \inst5|inst10|output~2_combout\,
	datad => \inst5|inst10|output~5_combout\,
	combout => \inst5|inst10|output~6_combout\);

-- Location: FF_X66_Y49_N13
\inst5|inst2|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CZ~q\,
	d => \inst5|inst10|output~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|valor_interno~q\);

-- Location: LCCOMB_X65_Y50_N18
\inst1|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Q[6]~feeder_combout\ = \inst1|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~14_combout\,
	combout => \inst1|Q[6]~feeder_combout\);

-- Location: FF_X65_Y50_N19
\inst1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[6]~feeder_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(6));

-- Location: FF_X66_Y50_N19
\inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(5));

-- Location: FF_X66_Y50_N11
\inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~10_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(4));

-- Location: FF_X66_Y50_N23
\inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~8_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(3));

-- Location: FF_X66_Y50_N15
\inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~6_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(2));

-- Location: FF_X66_Y50_N17
\inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~4_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(1));

-- Location: LCCOMB_X65_Y47_N12
\PC|data_out[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[15]~0_combout\ = (\inst14|inst13|PC\(2) & ((\inst1|Yupa2[7]~4_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(15),
	datad => \inst1|Yupa2[7]~4_combout\,
	combout => \PC|data_out[15]~0_combout\);

-- Location: LCCOMB_X65_Y47_N6
\PC|data_out[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[14]~1_combout\ = (\inst14|inst13|PC\(2) & (\inst1|Yupa2[6]~7_combout\)) # (!\inst14|inst13|PC\(2) & ((\PC|data_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa2[6]~7_combout\,
	datac => \PC|data_out\(14),
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[14]~1_combout\);

-- Location: LCCOMB_X65_Y47_N8
\PC|data_out[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[13]~2_combout\ = (\inst14|inst13|PC\(2) & ((\inst1|Yupa2[5]~10_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(13),
	datad => \inst1|Yupa2[5]~10_combout\,
	combout => \PC|data_out[13]~2_combout\);

-- Location: LCCOMB_X65_Y47_N14
\PC|data_out[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[12]~3_combout\ = (\inst14|inst13|PC\(2) & ((\inst1|Yupa2[4]~13_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(12),
	datad => \inst1|Yupa2[4]~13_combout\,
	combout => \PC|data_out[12]~3_combout\);

-- Location: LCCOMB_X65_Y47_N24
\PC|data_out[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[11]~4_combout\ = (\inst14|inst13|PC\(2) & ((\inst1|Yupa2[3]~16_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(11),
	datad => \inst1|Yupa2[3]~16_combout\,
	combout => \PC|data_out[11]~4_combout\);

-- Location: LCCOMB_X65_Y47_N18
\PC|data_out[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[10]~5_combout\ = (\inst14|inst13|PC\(2) & ((\inst1|Yupa2[2]~19_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(10),
	datad => \inst1|Yupa2[2]~19_combout\,
	combout => \PC|data_out[10]~5_combout\);

-- Location: LCCOMB_X65_Y47_N16
\PC|data_out[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[9]~6_combout\ = (\inst14|inst13|PC\(2) & ((\inst1|Yupa2[1]~22_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(9),
	datad => \inst1|Yupa2[1]~22_combout\,
	combout => \PC|data_out[9]~6_combout\);

-- Location: LCCOMB_X65_Y47_N2
\PC|data_out[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~7_combout\ = (\inst14|inst13|PC\(2) & ((\inst1|Yupa2[0]~25_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(8),
	datad => \inst1|Yupa2[0]~25_combout\,
	combout => \PC|data_out[8]~7_combout\);

-- Location: LCCOMB_X66_Y47_N16
\PC|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~32_combout\ = (\PC|data_out\(8) & (\PC|Add0~31\ $ (GND))) # (!\PC|data_out\(8) & (!\PC|Add0~31\ & VCC))
-- \PC|Add0~33\ = CARRY((\PC|data_out\(8) & !\PC|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(8),
	datad => VCC,
	cin => \PC|Add0~31\,
	combout => \PC|Add0~32_combout\,
	cout => \PC|Add0~33\);

-- Location: LCCOMB_X65_Y47_N22
\PC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Equal0~0_combout\ = (\inst14|inst13|PC\(0) & !\inst14|inst13|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(2),
	combout => \PC|Equal0~0_combout\);

-- Location: FF_X65_Y47_N3
\PC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[8]~7_combout\,
	asdata => \PC|Add0~32_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(8));

-- Location: LCCOMB_X66_Y47_N18
\PC|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~34_combout\ = (\PC|data_out\(9) & (!\PC|Add0~33\)) # (!\PC|data_out\(9) & ((\PC|Add0~33\) # (GND)))
-- \PC|Add0~35\ = CARRY((!\PC|Add0~33\) # (!\PC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datad => VCC,
	cin => \PC|Add0~33\,
	combout => \PC|Add0~34_combout\,
	cout => \PC|Add0~35\);

-- Location: FF_X65_Y47_N17
\PC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[9]~6_combout\,
	asdata => \PC|Add0~34_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(9));

-- Location: LCCOMB_X66_Y47_N20
\PC|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~36_combout\ = (\PC|data_out\(10) & (\PC|Add0~35\ $ (GND))) # (!\PC|data_out\(10) & (!\PC|Add0~35\ & VCC))
-- \PC|Add0~37\ = CARRY((\PC|data_out\(10) & !\PC|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(10),
	datad => VCC,
	cin => \PC|Add0~35\,
	combout => \PC|Add0~36_combout\,
	cout => \PC|Add0~37\);

-- Location: FF_X65_Y47_N19
\PC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[10]~5_combout\,
	asdata => \PC|Add0~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(10));

-- Location: LCCOMB_X66_Y47_N22
\PC|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~38_combout\ = (\PC|data_out\(11) & (!\PC|Add0~37\)) # (!\PC|data_out\(11) & ((\PC|Add0~37\) # (GND)))
-- \PC|Add0~39\ = CARRY((!\PC|Add0~37\) # (!\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(11),
	datad => VCC,
	cin => \PC|Add0~37\,
	combout => \PC|Add0~38_combout\,
	cout => \PC|Add0~39\);

-- Location: FF_X65_Y47_N25
\PC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[11]~4_combout\,
	asdata => \PC|Add0~38_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(11));

-- Location: LCCOMB_X66_Y47_N24
\PC|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~40_combout\ = (\PC|data_out\(12) & (\PC|Add0~39\ $ (GND))) # (!\PC|data_out\(12) & (!\PC|Add0~39\ & VCC))
-- \PC|Add0~41\ = CARRY((\PC|data_out\(12) & !\PC|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datad => VCC,
	cin => \PC|Add0~39\,
	combout => \PC|Add0~40_combout\,
	cout => \PC|Add0~41\);

-- Location: FF_X65_Y47_N15
\PC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[12]~3_combout\,
	asdata => \PC|Add0~40_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(12));

-- Location: LCCOMB_X66_Y47_N26
\PC|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~42_combout\ = (\PC|data_out\(13) & (!\PC|Add0~41\)) # (!\PC|data_out\(13) & ((\PC|Add0~41\) # (GND)))
-- \PC|Add0~43\ = CARRY((!\PC|Add0~41\) # (!\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datad => VCC,
	cin => \PC|Add0~41\,
	combout => \PC|Add0~42_combout\,
	cout => \PC|Add0~43\);

-- Location: FF_X65_Y47_N9
\PC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[13]~2_combout\,
	asdata => \PC|Add0~42_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(13));

-- Location: LCCOMB_X66_Y47_N28
\PC|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~44_combout\ = (\PC|data_out\(14) & (\PC|Add0~43\ $ (GND))) # (!\PC|data_out\(14) & (!\PC|Add0~43\ & VCC))
-- \PC|Add0~45\ = CARRY((\PC|data_out\(14) & !\PC|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(14),
	datad => VCC,
	cin => \PC|Add0~43\,
	combout => \PC|Add0~44_combout\,
	cout => \PC|Add0~45\);

-- Location: FF_X65_Y47_N7
\PC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[14]~1_combout\,
	asdata => \PC|Add0~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(14));

-- Location: LCCOMB_X66_Y47_N30
\PC|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~46_combout\ = \PC|Add0~45\ $ (\PC|data_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(15),
	cin => \PC|Add0~45\,
	combout => \PC|Add0~46_combout\);

-- Location: FF_X65_Y47_N13
\PC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[15]~0_combout\,
	asdata => \PC|Add0~46_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(15));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Z <= \Z~output_o\;

ww_csnn <= \csnn~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AP_D(15) <= \AP_D[15]~output_o\;

ww_AP_D(14) <= \AP_D[14]~output_o\;

ww_AP_D(13) <= \AP_D[13]~output_o\;

ww_AP_D(12) <= \AP_D[12]~output_o\;

ww_AP_D(11) <= \AP_D[11]~output_o\;

ww_AP_D(10) <= \AP_D[10]~output_o\;

ww_AP_D(9) <= \AP_D[9]~output_o\;

ww_AP_D(8) <= \AP_D[8]~output_o\;

ww_AP_D(7) <= \AP_D[7]~output_o\;

ww_AP_D(6) <= \AP_D[6]~output_o\;

ww_AP_D(5) <= \AP_D[5]~output_o\;

ww_AP_D(4) <= \AP_D[4]~output_o\;

ww_AP_D(3) <= \AP_D[3]~output_o\;

ww_AP_D(2) <= \AP_D[2]~output_o\;

ww_AP_D(1) <= \AP_D[1]~output_o\;

ww_AP_D(0) <= \AP_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_Debug_Q(7) <= \Debug_Q[7]~output_o\;

ww_Debug_Q(6) <= \Debug_Q[6]~output_o\;

ww_Debug_Q(5) <= \Debug_Q[5]~output_o\;

ww_Debug_Q(4) <= \Debug_Q[4]~output_o\;

ww_Debug_Q(3) <= \Debug_Q[3]~output_o\;

ww_Debug_Q(2) <= \Debug_Q[2]~output_o\;

ww_Debug_Q(1) <= \Debug_Q[1]~output_o\;

ww_Debug_Q(0) <= \Debug_Q[0]~output_o\;

ww_Debug_Yupa(7) <= \Debug_Yupa[7]~output_o\;

ww_Debug_Yupa(6) <= \Debug_Yupa[6]~output_o\;

ww_Debug_Yupa(5) <= \Debug_Yupa[5]~output_o\;

ww_Debug_Yupa(4) <= \Debug_Yupa[4]~output_o\;

ww_Debug_Yupa(3) <= \Debug_Yupa[3]~output_o\;

ww_Debug_Yupa(2) <= \Debug_Yupa[2]~output_o\;

ww_Debug_Yupa(1) <= \Debug_Yupa[1]~output_o\;

ww_Debug_Yupa(0) <= \Debug_Yupa[0]~output_o\;

ww_Edo_Pres(11) <= \Edo_Pres[11]~output_o\;

ww_Edo_Pres(10) <= \Edo_Pres[10]~output_o\;

ww_Edo_Pres(9) <= \Edo_Pres[9]~output_o\;

ww_Edo_Pres(8) <= \Edo_Pres[8]~output_o\;

ww_Edo_Pres(7) <= \Edo_Pres[7]~output_o\;

ww_Edo_Pres(6) <= \Edo_Pres[6]~output_o\;

ww_Edo_Pres(5) <= \Edo_Pres[5]~output_o\;

ww_Edo_Pres(4) <= \Edo_Pres[4]~output_o\;

ww_Edo_Pres(3) <= \Edo_Pres[3]~output_o\;

ww_Edo_Pres(2) <= \Edo_Pres[2]~output_o\;

ww_Edo_Pres(1) <= \Edo_Pres[1]~output_o\;

ww_Edo_Pres(0) <= \Edo_Pres[0]~output_o\;

ww_IX(15) <= \IX[15]~output_o\;

ww_IX(14) <= \IX[14]~output_o\;

ww_IX(13) <= \IX[13]~output_o\;

ww_IX(12) <= \IX[12]~output_o\;

ww_IX(11) <= \IX[11]~output_o\;

ww_IX(10) <= \IX[10]~output_o\;

ww_IX(9) <= \IX[9]~output_o\;

ww_IX(8) <= \IX[8]~output_o\;

ww_IX(7) <= \IX[7]~output_o\;

ww_IX(6) <= \IX[6]~output_o\;

ww_IX(5) <= \IX[5]~output_o\;

ww_IX(4) <= \IX[4]~output_o\;

ww_IX(3) <= \IX[3]~output_o\;

ww_IX(2) <= \IX[2]~output_o\;

ww_IX(1) <= \IX[1]~output_o\;

ww_IX(0) <= \IX[0]~output_o\;

ww_PC_D(15) <= \PC_D[15]~output_o\;

ww_PC_D(14) <= \PC_D[14]~output_o\;

ww_PC_D(13) <= \PC_D[13]~output_o\;

ww_PC_D(12) <= \PC_D[12]~output_o\;

ww_PC_D(11) <= \PC_D[11]~output_o\;

ww_PC_D(10) <= \PC_D[10]~output_o\;

ww_PC_D(9) <= \PC_D[9]~output_o\;

ww_PC_D(8) <= \PC_D[8]~output_o\;

ww_PC_D(7) <= \PC_D[7]~output_o\;

ww_PC_D(6) <= \PC_D[6]~output_o\;

ww_PC_D(5) <= \PC_D[5]~output_o\;

ww_PC_D(4) <= \PC_D[4]~output_o\;

ww_PC_D(3) <= \PC_D[3]~output_o\;

ww_PC_D(2) <= \PC_D[2]~output_o\;

ww_PC_D(1) <= \PC_D[1]~output_o\;

ww_PC_D(0) <= \PC_D[0]~output_o\;

ww_X_D(15) <= \X_D[15]~output_o\;

ww_X_D(14) <= \X_D[14]~output_o\;

ww_X_D(13) <= \X_D[13]~output_o\;

ww_X_D(12) <= \X_D[12]~output_o\;

ww_X_D(11) <= \X_D[11]~output_o\;

ww_X_D(10) <= \X_D[10]~output_o\;

ww_X_D(9) <= \X_D[9]~output_o\;

ww_X_D(8) <= \X_D[8]~output_o\;

ww_X_D(7) <= \X_D[7]~output_o\;

ww_X_D(6) <= \X_D[6]~output_o\;

ww_X_D(5) <= \X_D[5]~output_o\;

ww_X_D(4) <= \X_D[4]~output_o\;

ww_X_D(3) <= \X_D[3]~output_o\;

ww_X_D(2) <= \X_D[2]~output_o\;

ww_X_D(1) <= \X_D[1]~output_o\;

ww_X_D(0) <= \X_D[0]~output_o\;
END structure;


