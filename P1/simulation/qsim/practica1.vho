-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/15/2024 21:32:44"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	practica1 IS
    PORT (
	A : OUT std_logic;
	RESET : IN std_logic;
	CLK : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic
	);
END practica1;

-- Design Ports Information
-- A	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst0|Add0~1\ : std_logic;
SIGNAL \inst0|Add0~2_combout\ : std_logic;
SIGNAL \inst0|Add0~3\ : std_logic;
SIGNAL \inst0|Add0~4_combout\ : std_logic;
SIGNAL \inst0|Add0~5\ : std_logic;
SIGNAL \inst0|Add0~6_combout\ : std_logic;
SIGNAL \inst0|Add0~7\ : std_logic;
SIGNAL \inst0|Add0~8_combout\ : std_logic;
SIGNAL \inst0|Add0~9\ : std_logic;
SIGNAL \inst0|Add0~10_combout\ : std_logic;
SIGNAL \inst0|Add0~11\ : std_logic;
SIGNAL \inst0|Add0~12_combout\ : std_logic;
SIGNAL \inst0|Add0~13\ : std_logic;
SIGNAL \inst0|Add0~14_combout\ : std_logic;
SIGNAL \inst0|cuenta~1_combout\ : std_logic;
SIGNAL \inst0|Add0~15\ : std_logic;
SIGNAL \inst0|Add0~16_combout\ : std_logic;
SIGNAL \inst0|Add0~17\ : std_logic;
SIGNAL \inst0|Add0~18_combout\ : std_logic;
SIGNAL \inst0|Add0~19\ : std_logic;
SIGNAL \inst0|Add0~20_combout\ : std_logic;
SIGNAL \inst0|Add0~21\ : std_logic;
SIGNAL \inst0|Add0~22_combout\ : std_logic;
SIGNAL \inst0|Add0~23\ : std_logic;
SIGNAL \inst0|Add0~24_combout\ : std_logic;
SIGNAL \inst0|cuenta~2_combout\ : std_logic;
SIGNAL \inst0|Add0~25\ : std_logic;
SIGNAL \inst0|Add0~26_combout\ : std_logic;
SIGNAL \inst0|cuenta~3_combout\ : std_logic;
SIGNAL \inst0|Add0~27\ : std_logic;
SIGNAL \inst0|Add0~28_combout\ : std_logic;
SIGNAL \inst0|cuenta~4_combout\ : std_logic;
SIGNAL \inst0|Add0~29\ : std_logic;
SIGNAL \inst0|Add0~30_combout\ : std_logic;
SIGNAL \inst0|cuenta~5_combout\ : std_logic;
SIGNAL \inst0|Equal0~3_combout\ : std_logic;
SIGNAL \inst0|Equal0~1_combout\ : std_logic;
SIGNAL \inst0|Equal0~0_combout\ : std_logic;
SIGNAL \inst0|Equal0~2_combout\ : std_logic;
SIGNAL \inst0|Equal0~4_combout\ : std_logic;
SIGNAL \inst0|Add0~31\ : std_logic;
SIGNAL \inst0|Add0~32_combout\ : std_logic;
SIGNAL \inst0|Add0~33\ : std_logic;
SIGNAL \inst0|Add0~34_combout\ : std_logic;
SIGNAL \inst0|cuenta~6_combout\ : std_logic;
SIGNAL \inst0|Add0~35\ : std_logic;
SIGNAL \inst0|Add0~36_combout\ : std_logic;
SIGNAL \inst0|Add0~37\ : std_logic;
SIGNAL \inst0|Add0~38_combout\ : std_logic;
SIGNAL \inst0|cuenta~7_combout\ : std_logic;
SIGNAL \inst0|Add0~39\ : std_logic;
SIGNAL \inst0|Add0~40_combout\ : std_logic;
SIGNAL \inst0|cuenta~8_combout\ : std_logic;
SIGNAL \inst0|Add0~41\ : std_logic;
SIGNAL \inst0|Add0~42_combout\ : std_logic;
SIGNAL \inst0|cuenta~9_combout\ : std_logic;
SIGNAL \inst0|Add0~43\ : std_logic;
SIGNAL \inst0|Add0~44_combout\ : std_logic;
SIGNAL \inst0|cuenta~10_combout\ : std_logic;
SIGNAL \inst0|Add0~45\ : std_logic;
SIGNAL \inst0|Add0~46_combout\ : std_logic;
SIGNAL \inst0|cuenta~11_combout\ : std_logic;
SIGNAL \inst0|Equal0~6_combout\ : std_logic;
SIGNAL \inst0|Add0~47\ : std_logic;
SIGNAL \inst0|Add0~48_combout\ : std_logic;
SIGNAL \inst0|Add0~49\ : std_logic;
SIGNAL \inst0|Add0~50_combout\ : std_logic;
SIGNAL \inst0|cuenta~12_combout\ : std_logic;
SIGNAL \inst0|Add0~51\ : std_logic;
SIGNAL \inst0|Add0~52_combout\ : std_logic;
SIGNAL \inst0|Add0~53\ : std_logic;
SIGNAL \inst0|Add0~54_combout\ : std_logic;
SIGNAL \inst0|Equal0~7_combout\ : std_logic;
SIGNAL \inst0|Equal0~5_combout\ : std_logic;
SIGNAL \inst0|Equal0~8_combout\ : std_logic;
SIGNAL \inst0|Add0~0_combout\ : std_logic;
SIGNAL \inst0|cuenta~0_combout\ : std_logic;
SIGNAL \inst|26~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|26~q\ : std_logic;
SIGNAL \inst|5~combout\ : std_logic;
SIGNAL \inst|25~0_combout\ : std_logic;
SIGNAL \inst|25~q\ : std_logic;
SIGNAL \inst|51~combout\ : std_logic;
SIGNAL \inst|24~0_combout\ : std_logic;
SIGNAL \inst|24~q\ : std_logic;
SIGNAL \inst|21~combout\ : std_logic;
SIGNAL \inst|23~0_combout\ : std_logic;
SIGNAL \inst|23~q\ : std_logic;
SIGNAL \inst0|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
ww_RESET <= RESET;
ww_CLK <= CLK;
B <= ww_B;
C <= ww_C;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|26~q\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|25~q\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|24~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|23~q\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G18
\CLK~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X44_Y28_N4
\inst0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~0_combout\ = \inst0|cuenta\(0) $ (VCC)
-- \inst0|Add0~1\ = CARRY(\inst0|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(0),
	datad => VCC,
	combout => \inst0|Add0~0_combout\,
	cout => \inst0|Add0~1\);

-- Location: LCCOMB_X44_Y28_N6
\inst0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~2_combout\ = (\inst0|cuenta\(1) & (!\inst0|Add0~1\)) # (!\inst0|cuenta\(1) & ((\inst0|Add0~1\) # (GND)))
-- \inst0|Add0~3\ = CARRY((!\inst0|Add0~1\) # (!\inst0|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(1),
	datad => VCC,
	cin => \inst0|Add0~1\,
	combout => \inst0|Add0~2_combout\,
	cout => \inst0|Add0~3\);

-- Location: FF_X44_Y28_N3
\inst0|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst0|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(1));

-- Location: LCCOMB_X44_Y28_N8
\inst0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~4_combout\ = (\inst0|cuenta\(2) & (\inst0|Add0~3\ $ (GND))) # (!\inst0|cuenta\(2) & (!\inst0|Add0~3\ & VCC))
-- \inst0|Add0~5\ = CARRY((\inst0|cuenta\(2) & !\inst0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(2),
	datad => VCC,
	cin => \inst0|Add0~3\,
	combout => \inst0|Add0~4_combout\,
	cout => \inst0|Add0~5\);

-- Location: FF_X44_Y28_N9
\inst0|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(2));

-- Location: LCCOMB_X44_Y28_N10
\inst0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~6_combout\ = (\inst0|cuenta\(3) & (!\inst0|Add0~5\)) # (!\inst0|cuenta\(3) & ((\inst0|Add0~5\) # (GND)))
-- \inst0|Add0~7\ = CARRY((!\inst0|Add0~5\) # (!\inst0|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(3),
	datad => VCC,
	cin => \inst0|Add0~5\,
	combout => \inst0|Add0~6_combout\,
	cout => \inst0|Add0~7\);

-- Location: FF_X44_Y28_N11
\inst0|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(3));

-- Location: LCCOMB_X44_Y28_N12
\inst0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~8_combout\ = (\inst0|cuenta\(4) & (\inst0|Add0~7\ $ (GND))) # (!\inst0|cuenta\(4) & (!\inst0|Add0~7\ & VCC))
-- \inst0|Add0~9\ = CARRY((\inst0|cuenta\(4) & !\inst0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(4),
	datad => VCC,
	cin => \inst0|Add0~7\,
	combout => \inst0|Add0~8_combout\,
	cout => \inst0|Add0~9\);

-- Location: FF_X44_Y28_N13
\inst0|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(4));

-- Location: LCCOMB_X44_Y28_N14
\inst0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~10_combout\ = (\inst0|cuenta\(5) & (!\inst0|Add0~9\)) # (!\inst0|cuenta\(5) & ((\inst0|Add0~9\) # (GND)))
-- \inst0|Add0~11\ = CARRY((!\inst0|Add0~9\) # (!\inst0|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(5),
	datad => VCC,
	cin => \inst0|Add0~9\,
	combout => \inst0|Add0~10_combout\,
	cout => \inst0|Add0~11\);

-- Location: FF_X44_Y28_N15
\inst0|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(5));

-- Location: LCCOMB_X44_Y28_N16
\inst0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~12_combout\ = (\inst0|cuenta\(6) & (\inst0|Add0~11\ $ (GND))) # (!\inst0|cuenta\(6) & (!\inst0|Add0~11\ & VCC))
-- \inst0|Add0~13\ = CARRY((\inst0|cuenta\(6) & !\inst0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(6),
	datad => VCC,
	cin => \inst0|Add0~11\,
	combout => \inst0|Add0~12_combout\,
	cout => \inst0|Add0~13\);

-- Location: FF_X44_Y28_N17
\inst0|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(6));

-- Location: LCCOMB_X44_Y28_N18
\inst0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~14_combout\ = (\inst0|cuenta\(7) & (!\inst0|Add0~13\)) # (!\inst0|cuenta\(7) & ((\inst0|Add0~13\) # (GND)))
-- \inst0|Add0~15\ = CARRY((!\inst0|Add0~13\) # (!\inst0|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(7),
	datad => VCC,
	cin => \inst0|Add0~13\,
	combout => \inst0|Add0~14_combout\,
	cout => \inst0|Add0~15\);

-- Location: LCCOMB_X43_Y28_N22
\inst0|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~1_combout\ = (\inst0|Add0~14_combout\ & !\inst0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Add0~14_combout\,
	datad => \inst0|Equal0~8_combout\,
	combout => \inst0|cuenta~1_combout\);

-- Location: FF_X43_Y28_N23
\inst0|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(7));

-- Location: LCCOMB_X44_Y28_N20
\inst0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~16_combout\ = (\inst0|cuenta\(8) & (\inst0|Add0~15\ $ (GND))) # (!\inst0|cuenta\(8) & (!\inst0|Add0~15\ & VCC))
-- \inst0|Add0~17\ = CARRY((\inst0|cuenta\(8) & !\inst0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(8),
	datad => VCC,
	cin => \inst0|Add0~15\,
	combout => \inst0|Add0~16_combout\,
	cout => \inst0|Add0~17\);

-- Location: FF_X44_Y28_N21
\inst0|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(8));

-- Location: LCCOMB_X44_Y28_N22
\inst0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~18_combout\ = (\inst0|cuenta\(9) & (!\inst0|Add0~17\)) # (!\inst0|cuenta\(9) & ((\inst0|Add0~17\) # (GND)))
-- \inst0|Add0~19\ = CARRY((!\inst0|Add0~17\) # (!\inst0|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(9),
	datad => VCC,
	cin => \inst0|Add0~17\,
	combout => \inst0|Add0~18_combout\,
	cout => \inst0|Add0~19\);

-- Location: FF_X44_Y28_N23
\inst0|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(9));

-- Location: LCCOMB_X44_Y28_N24
\inst0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~20_combout\ = (\inst0|cuenta\(10) & (\inst0|Add0~19\ $ (GND))) # (!\inst0|cuenta\(10) & (!\inst0|Add0~19\ & VCC))
-- \inst0|Add0~21\ = CARRY((\inst0|cuenta\(10) & !\inst0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(10),
	datad => VCC,
	cin => \inst0|Add0~19\,
	combout => \inst0|Add0~20_combout\,
	cout => \inst0|Add0~21\);

-- Location: FF_X44_Y28_N25
\inst0|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(10));

-- Location: LCCOMB_X44_Y28_N26
\inst0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~22_combout\ = (\inst0|cuenta\(11) & (!\inst0|Add0~21\)) # (!\inst0|cuenta\(11) & ((\inst0|Add0~21\) # (GND)))
-- \inst0|Add0~23\ = CARRY((!\inst0|Add0~21\) # (!\inst0|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(11),
	datad => VCC,
	cin => \inst0|Add0~21\,
	combout => \inst0|Add0~22_combout\,
	cout => \inst0|Add0~23\);

-- Location: FF_X44_Y28_N27
\inst0|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(11));

-- Location: LCCOMB_X44_Y28_N28
\inst0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~24_combout\ = (\inst0|cuenta\(12) & (\inst0|Add0~23\ $ (GND))) # (!\inst0|cuenta\(12) & (!\inst0|Add0~23\ & VCC))
-- \inst0|Add0~25\ = CARRY((\inst0|cuenta\(12) & !\inst0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(12),
	datad => VCC,
	cin => \inst0|Add0~23\,
	combout => \inst0|Add0~24_combout\,
	cout => \inst0|Add0~25\);

-- Location: LCCOMB_X43_Y27_N0
\inst0|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~2_combout\ = (!\inst0|Equal0~8_combout\ & \inst0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Equal0~8_combout\,
	datad => \inst0|Add0~24_combout\,
	combout => \inst0|cuenta~2_combout\);

-- Location: FF_X43_Y27_N1
\inst0|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(12));

-- Location: LCCOMB_X44_Y28_N30
\inst0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~26_combout\ = (\inst0|cuenta\(13) & (!\inst0|Add0~25\)) # (!\inst0|cuenta\(13) & ((\inst0|Add0~25\) # (GND)))
-- \inst0|Add0~27\ = CARRY((!\inst0|Add0~25\) # (!\inst0|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(13),
	datad => VCC,
	cin => \inst0|Add0~25\,
	combout => \inst0|Add0~26_combout\,
	cout => \inst0|Add0~27\);

-- Location: LCCOMB_X43_Y27_N2
\inst0|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~3_combout\ = (\inst0|Add0~26_combout\ & !\inst0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Add0~26_combout\,
	datad => \inst0|Equal0~8_combout\,
	combout => \inst0|cuenta~3_combout\);

-- Location: FF_X43_Y27_N3
\inst0|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(13));

-- Location: LCCOMB_X44_Y27_N0
\inst0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~28_combout\ = (\inst0|cuenta\(14) & (\inst0|Add0~27\ $ (GND))) # (!\inst0|cuenta\(14) & (!\inst0|Add0~27\ & VCC))
-- \inst0|Add0~29\ = CARRY((\inst0|cuenta\(14) & !\inst0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(14),
	datad => VCC,
	cin => \inst0|Add0~27\,
	combout => \inst0|Add0~28_combout\,
	cout => \inst0|Add0~29\);

-- Location: LCCOMB_X43_Y27_N8
\inst0|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~4_combout\ = (\inst0|Add0~28_combout\ & !\inst0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Add0~28_combout\,
	datad => \inst0|Equal0~8_combout\,
	combout => \inst0|cuenta~4_combout\);

-- Location: FF_X43_Y27_N9
\inst0|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(14));

-- Location: LCCOMB_X44_Y27_N2
\inst0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~30_combout\ = (\inst0|cuenta\(15) & (!\inst0|Add0~29\)) # (!\inst0|cuenta\(15) & ((\inst0|Add0~29\) # (GND)))
-- \inst0|Add0~31\ = CARRY((!\inst0|Add0~29\) # (!\inst0|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(15),
	datad => VCC,
	cin => \inst0|Add0~29\,
	combout => \inst0|Add0~30_combout\,
	cout => \inst0|Add0~31\);

-- Location: LCCOMB_X43_Y27_N18
\inst0|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~5_combout\ = (!\inst0|Equal0~8_combout\ & \inst0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Equal0~8_combout\,
	datad => \inst0|Add0~30_combout\,
	combout => \inst0|cuenta~5_combout\);

-- Location: FF_X43_Y27_N19
\inst0|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(15));

-- Location: LCCOMB_X43_Y27_N12
\inst0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~3_combout\ = (\inst0|cuenta\(13) & (\inst0|cuenta\(12) & (\inst0|cuenta\(14) & \inst0|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(13),
	datab => \inst0|cuenta\(12),
	datac => \inst0|cuenta\(14),
	datad => \inst0|cuenta\(15),
	combout => \inst0|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y28_N24
\inst0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~1_combout\ = (\inst0|cuenta\(7) & (!\inst0|cuenta\(5) & (!\inst0|cuenta\(4) & !\inst0|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(7),
	datab => \inst0|cuenta\(5),
	datac => \inst0|cuenta\(4),
	datad => \inst0|cuenta\(6),
	combout => \inst0|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y28_N20
\inst0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~0_combout\ = (!\inst0|cuenta\(8) & (!\inst0|cuenta\(10) & (!\inst0|cuenta\(11) & !\inst0|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(8),
	datab => \inst0|cuenta\(10),
	datac => \inst0|cuenta\(11),
	datad => \inst0|cuenta\(9),
	combout => \inst0|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y28_N2
\inst0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~2_combout\ = (!\inst0|cuenta\(3) & (!\inst0|cuenta\(0) & (!\inst0|cuenta\(1) & !\inst0|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(3),
	datab => \inst0|cuenta\(0),
	datac => \inst0|cuenta\(1),
	datad => \inst0|cuenta\(2),
	combout => \inst0|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y27_N10
\inst0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~4_combout\ = (\inst0|Equal0~3_combout\ & (\inst0|Equal0~1_combout\ & (\inst0|Equal0~0_combout\ & \inst0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Equal0~3_combout\,
	datab => \inst0|Equal0~1_combout\,
	datac => \inst0|Equal0~0_combout\,
	datad => \inst0|Equal0~2_combout\,
	combout => \inst0|Equal0~4_combout\);

-- Location: LCCOMB_X44_Y27_N4
\inst0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~32_combout\ = (\inst0|cuenta\(16) & (\inst0|Add0~31\ $ (GND))) # (!\inst0|cuenta\(16) & (!\inst0|Add0~31\ & VCC))
-- \inst0|Add0~33\ = CARRY((\inst0|cuenta\(16) & !\inst0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(16),
	datad => VCC,
	cin => \inst0|Add0~31\,
	combout => \inst0|Add0~32_combout\,
	cout => \inst0|Add0~33\);

-- Location: FF_X44_Y27_N5
\inst0|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(16));

-- Location: LCCOMB_X44_Y27_N6
\inst0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~34_combout\ = (\inst0|cuenta\(17) & (!\inst0|Add0~33\)) # (!\inst0|cuenta\(17) & ((\inst0|Add0~33\) # (GND)))
-- \inst0|Add0~35\ = CARRY((!\inst0|Add0~33\) # (!\inst0|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(17),
	datad => VCC,
	cin => \inst0|Add0~33\,
	combout => \inst0|Add0~34_combout\,
	cout => \inst0|Add0~35\);

-- Location: LCCOMB_X43_Y27_N28
\inst0|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~6_combout\ = (!\inst0|Equal0~8_combout\ & \inst0|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Equal0~8_combout\,
	datad => \inst0|Add0~34_combout\,
	combout => \inst0|cuenta~6_combout\);

-- Location: FF_X43_Y27_N29
\inst0|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(17));

-- Location: LCCOMB_X44_Y27_N8
\inst0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~36_combout\ = (\inst0|cuenta\(18) & (\inst0|Add0~35\ $ (GND))) # (!\inst0|cuenta\(18) & (!\inst0|Add0~35\ & VCC))
-- \inst0|Add0~37\ = CARRY((\inst0|cuenta\(18) & !\inst0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(18),
	datad => VCC,
	cin => \inst0|Add0~35\,
	combout => \inst0|Add0~36_combout\,
	cout => \inst0|Add0~37\);

-- Location: FF_X44_Y27_N9
\inst0|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(18));

-- Location: LCCOMB_X44_Y27_N10
\inst0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~38_combout\ = (\inst0|cuenta\(19) & (!\inst0|Add0~37\)) # (!\inst0|cuenta\(19) & ((\inst0|Add0~37\) # (GND)))
-- \inst0|Add0~39\ = CARRY((!\inst0|Add0~37\) # (!\inst0|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(19),
	datad => VCC,
	cin => \inst0|Add0~37\,
	combout => \inst0|Add0~38_combout\,
	cout => \inst0|Add0~39\);

-- Location: LCCOMB_X43_Y27_N26
\inst0|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~7_combout\ = (\inst0|Add0~38_combout\ & !\inst0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Add0~38_combout\,
	datad => \inst0|Equal0~8_combout\,
	combout => \inst0|cuenta~7_combout\);

-- Location: FF_X43_Y27_N27
\inst0|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(19));

-- Location: LCCOMB_X44_Y27_N12
\inst0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~40_combout\ = (\inst0|cuenta\(20) & (\inst0|Add0~39\ $ (GND))) # (!\inst0|cuenta\(20) & (!\inst0|Add0~39\ & VCC))
-- \inst0|Add0~41\ = CARRY((\inst0|cuenta\(20) & !\inst0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(20),
	datad => VCC,
	cin => \inst0|Add0~39\,
	combout => \inst0|Add0~40_combout\,
	cout => \inst0|Add0~41\);

-- Location: LCCOMB_X43_Y27_N14
\inst0|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~8_combout\ = (\inst0|Add0~40_combout\ & !\inst0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Add0~40_combout\,
	datad => \inst0|Equal0~8_combout\,
	combout => \inst0|cuenta~8_combout\);

-- Location: FF_X43_Y27_N15
\inst0|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(20));

-- Location: LCCOMB_X44_Y27_N14
\inst0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~42_combout\ = (\inst0|cuenta\(21) & (!\inst0|Add0~41\)) # (!\inst0|cuenta\(21) & ((\inst0|Add0~41\) # (GND)))
-- \inst0|Add0~43\ = CARRY((!\inst0|Add0~41\) # (!\inst0|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(21),
	datad => VCC,
	cin => \inst0|Add0~41\,
	combout => \inst0|Add0~42_combout\,
	cout => \inst0|Add0~43\);

-- Location: LCCOMB_X43_Y27_N16
\inst0|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~9_combout\ = (\inst0|Add0~42_combout\ & !\inst0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Add0~42_combout\,
	datad => \inst0|Equal0~8_combout\,
	combout => \inst0|cuenta~9_combout\);

-- Location: FF_X43_Y27_N17
\inst0|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(21));

-- Location: LCCOMB_X44_Y27_N16
\inst0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~44_combout\ = (\inst0|cuenta\(22) & (\inst0|Add0~43\ $ (GND))) # (!\inst0|cuenta\(22) & (!\inst0|Add0~43\ & VCC))
-- \inst0|Add0~45\ = CARRY((\inst0|cuenta\(22) & !\inst0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(22),
	datad => VCC,
	cin => \inst0|Add0~43\,
	combout => \inst0|Add0~44_combout\,
	cout => \inst0|Add0~45\);

-- Location: LCCOMB_X43_Y27_N6
\inst0|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~10_combout\ = (!\inst0|Equal0~8_combout\ & \inst0|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Equal0~8_combout\,
	datad => \inst0|Add0~44_combout\,
	combout => \inst0|cuenta~10_combout\);

-- Location: FF_X43_Y27_N7
\inst0|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(22));

-- Location: LCCOMB_X44_Y27_N18
\inst0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~46_combout\ = (\inst0|cuenta\(23) & (!\inst0|Add0~45\)) # (!\inst0|cuenta\(23) & ((\inst0|Add0~45\) # (GND)))
-- \inst0|Add0~47\ = CARRY((!\inst0|Add0~45\) # (!\inst0|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(23),
	datad => VCC,
	cin => \inst0|Add0~45\,
	combout => \inst0|Add0~46_combout\,
	cout => \inst0|Add0~47\);

-- Location: LCCOMB_X44_Y27_N28
\inst0|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~11_combout\ = (!\inst0|Equal0~8_combout\ & \inst0|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Equal0~8_combout\,
	datad => \inst0|Add0~46_combout\,
	combout => \inst0|cuenta~11_combout\);

-- Location: FF_X44_Y27_N29
\inst0|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(23));

-- Location: LCCOMB_X43_Y27_N4
\inst0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~6_combout\ = (\inst0|cuenta\(22) & (\inst0|cuenta\(21) & (\inst0|cuenta\(20) & \inst0|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(22),
	datab => \inst0|cuenta\(21),
	datac => \inst0|cuenta\(20),
	datad => \inst0|cuenta\(23),
	combout => \inst0|Equal0~6_combout\);

-- Location: LCCOMB_X44_Y27_N20
\inst0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~48_combout\ = (\inst0|cuenta\(24) & (\inst0|Add0~47\ $ (GND))) # (!\inst0|cuenta\(24) & (!\inst0|Add0~47\ & VCC))
-- \inst0|Add0~49\ = CARRY((\inst0|cuenta\(24) & !\inst0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(24),
	datad => VCC,
	cin => \inst0|Add0~47\,
	combout => \inst0|Add0~48_combout\,
	cout => \inst0|Add0~49\);

-- Location: FF_X44_Y27_N21
\inst0|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(24));

-- Location: LCCOMB_X44_Y27_N22
\inst0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~50_combout\ = (\inst0|cuenta\(25) & (!\inst0|Add0~49\)) # (!\inst0|cuenta\(25) & ((\inst0|Add0~49\) # (GND)))
-- \inst0|Add0~51\ = CARRY((!\inst0|Add0~49\) # (!\inst0|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(25),
	datad => VCC,
	cin => \inst0|Add0~49\,
	combout => \inst0|Add0~50_combout\,
	cout => \inst0|Add0~51\);

-- Location: LCCOMB_X44_Y27_N30
\inst0|cuenta~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~12_combout\ = (!\inst0|Equal0~8_combout\ & \inst0|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Equal0~8_combout\,
	datac => \inst0|Add0~50_combout\,
	combout => \inst0|cuenta~12_combout\);

-- Location: FF_X44_Y27_N31
\inst0|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(25));

-- Location: LCCOMB_X44_Y27_N24
\inst0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~52_combout\ = (\inst0|cuenta\(26) & (\inst0|Add0~51\ $ (GND))) # (!\inst0|cuenta\(26) & (!\inst0|Add0~51\ & VCC))
-- \inst0|Add0~53\ = CARRY((\inst0|cuenta\(26) & !\inst0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cuenta\(26),
	datad => VCC,
	cin => \inst0|Add0~51\,
	combout => \inst0|Add0~52_combout\,
	cout => \inst0|Add0~53\);

-- Location: FF_X44_Y27_N25
\inst0|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(26));

-- Location: LCCOMB_X44_Y27_N26
\inst0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Add0~54_combout\ = \inst0|Add0~53\ $ (\inst0|cuenta\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst0|cuenta\(27),
	cin => \inst0|Add0~53\,
	combout => \inst0|Add0~54_combout\);

-- Location: FF_X44_Y27_N27
\inst0|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(27));

-- Location: LCCOMB_X43_Y27_N22
\inst0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~7_combout\ = (\inst0|cuenta\(25) & (!\inst0|cuenta\(27) & (!\inst0|cuenta\(24) & !\inst0|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(25),
	datab => \inst0|cuenta\(27),
	datac => \inst0|cuenta\(24),
	datad => \inst0|cuenta\(26),
	combout => \inst0|Equal0~7_combout\);

-- Location: LCCOMB_X43_Y27_N24
\inst0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~5_combout\ = (\inst0|cuenta\(19) & (!\inst0|cuenta\(16) & (!\inst0|cuenta\(18) & \inst0|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(19),
	datab => \inst0|cuenta\(16),
	datac => \inst0|cuenta\(18),
	datad => \inst0|cuenta\(17),
	combout => \inst0|Equal0~5_combout\);

-- Location: LCCOMB_X43_Y27_N20
\inst0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Equal0~8_combout\ = (\inst0|Equal0~4_combout\ & (\inst0|Equal0~6_combout\ & (\inst0|Equal0~7_combout\ & \inst0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Equal0~4_combout\,
	datab => \inst0|Equal0~6_combout\,
	datac => \inst0|Equal0~7_combout\,
	datad => \inst0|Equal0~5_combout\,
	combout => \inst0|Equal0~8_combout\);

-- Location: LCCOMB_X44_Y28_N0
\inst0|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cuenta~0_combout\ = (!\inst0|Equal0~8_combout\ & \inst0|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Equal0~8_combout\,
	datac => \inst0|Add0~0_combout\,
	combout => \inst0|cuenta~0_combout\);

-- Location: FF_X44_Y28_N1
\inst0|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst0|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cuenta\(0));

-- Location: LCCOMB_X45_Y29_N30
\inst|26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|26~0_combout\ = !\inst|26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|26~q\,
	combout => \inst|26~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X45_Y29_N31
\inst|26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst0|cuenta\(0),
	d => \inst|26~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|26~q\);

-- Location: LCCOMB_X45_Y29_N20
\inst|5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|5~combout\ = LCELL((\inst0|cuenta\(0)) # (!\inst|26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|cuenta\(0),
	datad => \inst|26~q\,
	combout => \inst|5~combout\);

-- Location: LCCOMB_X45_Y29_N26
\inst|25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|25~0_combout\ = !\inst|25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|25~q\,
	combout => \inst|25~0_combout\);

-- Location: FF_X45_Y29_N27
\inst|25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|5~combout\,
	d => \inst|25~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|25~q\);

-- Location: LCCOMB_X45_Y29_N18
\inst|51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|51~combout\ = LCELL((\inst0|cuenta\(0)) # ((!\inst|26~q\) # (!\inst|25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cuenta\(0),
	datac => \inst|25~q\,
	datad => \inst|26~q\,
	combout => \inst|51~combout\);

-- Location: LCCOMB_X46_Y29_N2
\inst|24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|24~0_combout\ = !\inst|24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|24~q\,
	combout => \inst|24~0_combout\);

-- Location: FF_X46_Y29_N3
\inst|24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|51~combout\,
	d => \inst|24~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|24~q\);

-- Location: LCCOMB_X45_Y29_N24
\inst|21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|21~combout\ = LCELL(((\inst0|cuenta\(0)) # ((!\inst|24~q\) # (!\inst|26~q\))) # (!\inst|25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|25~q\,
	datab => \inst0|cuenta\(0),
	datac => \inst|26~q\,
	datad => \inst|24~q\,
	combout => \inst|21~combout\);

-- Location: LCCOMB_X46_Y29_N0
\inst|23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|23~0_combout\ = !\inst|23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|23~q\,
	combout => \inst|23~0_combout\);

-- Location: FF_X46_Y29_N1
\inst|23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|21~combout\,
	d => \inst|23~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|23~q\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;
END structure;


