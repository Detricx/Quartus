-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "11/14/2026 13:54:47"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	W : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	OP : IN std_logic_vector(2 DOWNTO 0);
	CBi : IN std_logic;
	R : OUT std_logic_vector(3 DOWNTO 0);
	CBo : OUT std_logic;
	OV : OUT std_logic;
	Z : OUT std_logic;
	GE : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- R[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CBo	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OV	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GE	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[0]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CBi	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_W : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CBi : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CBo : std_logic;
SIGNAL ww_OV : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_GE : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \CBo~output_o\ : std_logic;
SIGNAL \OV~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \GE~output_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \W[0]~input_o\ : std_logic;
SIGNAL \U4|R[0]~2_combout\ : std_logic;
SIGNAL \W[1]~input_o\ : std_logic;
SIGNAL \U4|R[0]~1_combout\ : std_logic;
SIGNAL \CBi~input_o\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \U4|R~0_combout\ : std_logic;
SIGNAL \U4|R[0]~3_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA0|Cout~0_combout\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \U1|U0|A0|FA1|R~combout\ : std_logic;
SIGNAL \W[2]~input_o\ : std_logic;
SIGNAL \U4|R[1]~4_combout\ : std_logic;
SIGNAL \U4|R[1]~5_combout\ : std_logic;
SIGNAL \U4|R[1]~6_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA1|Cout~0_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \U1|U0|A0|FA2|R~combout\ : std_logic;
SIGNAL \W[3]~input_o\ : std_logic;
SIGNAL \U4|R[2]~7_combout\ : std_logic;
SIGNAL \U4|R[2]~8_combout\ : std_logic;
SIGNAL \U4|R[2]~9_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \U4|R[3]~10_combout\ : std_logic;
SIGNAL \U4|R[3]~12_combout\ : std_logic;
SIGNAL \U4|R[3]~11_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA2|Cout~0_combout\ : std_logic;
SIGNAL \U4|R[3]~13_combout\ : std_logic;
SIGNAL \U5|CBo~0_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA3|Cout~0_combout\ : std_logic;
SIGNAL \U5|CBo~combout\ : std_logic;
SIGNAL \U5|OVo~0_combout\ : std_logic;
SIGNAL \U5|Z~0_combout\ : std_logic;
SIGNAL \U5|GE~combout\ : std_logic;
SIGNAL \U0|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|Bx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|ALT_INV_GE~combout\ : std_logic;
SIGNAL \U5|ALT_INV_Z~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_W <= W;
ww_Y <= Y;
ww_OP <= OP;
ww_CBi <= CBi;
R <= ww_R;
CBo <= ww_CBo;
OV <= ww_OV;
Z <= ww_Z;
GE <= ww_GE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\U5|ALT_INV_GE~combout\ <= NOT \U5|GE~combout\;
\U5|ALT_INV_Z~0_combout\ <= NOT \U5|Z~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N16
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

-- Location: IOOBUF_X10_Y15_N2
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|R[0]~3_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|R[1]~6_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|R[2]~9_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|R[3]~13_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\CBo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|CBo~combout\,
	devoe => ww_devoe,
	o => \CBo~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\OV~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|OVo~0_combout\,
	devoe => ww_devoe,
	o => \OV~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Z~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\GE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_GE~combout\,
	devoe => ww_devoe,
	o => \GE~output_o\);

-- Location: IOIBUF_X10_Y16_N1
\OP[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: IOIBUF_X10_Y15_N15
\OP[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: IOIBUF_X10_Y15_N8
\Y[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\W[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(0),
	o => \W[0]~input_o\);

-- Location: LCCOMB_X11_Y16_N6
\U4|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[0]~2_combout\ = (!\OP[1]~input_o\ & ((\Y[0]~input_o\ & ((!\W[0]~input_o\) # (!\OP[0]~input_o\))) # (!\Y[0]~input_o\ & ((\W[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \Y[0]~input_o\,
	datad => \W[0]~input_o\,
	combout => \U4|R[0]~2_combout\);

-- Location: IOIBUF_X10_Y16_N8
\W[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(1),
	o => \W[1]~input_o\);

-- Location: LCCOMB_X11_Y16_N28
\U4|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[0]~1_combout\ = (\OP[0]~input_o\ & (\OP[1]~input_o\ & \W[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[1]~input_o\,
	datad => \W[1]~input_o\,
	combout => \U4|R[0]~1_combout\);

-- Location: LCCOMB_X11_Y16_N16
\U0|B[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|B\(0) = (\Y[0]~input_o\ & !\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \U0|B\(0));

-- Location: IOIBUF_X11_Y0_N15
\CBi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CBi,
	o => \CBi~input_o\);

-- Location: IOIBUF_X10_Y19_N8
\OP[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: LCCOMB_X11_Y16_N10
\U4|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R~0_combout\ = (\OP[2]~input_o\ & (\U0|B\(0) $ (\W[0]~input_o\ $ (!\CBi~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|B\(0),
	datab => \W[0]~input_o\,
	datac => \CBi~input_o\,
	datad => \OP[2]~input_o\,
	combout => \U4|R~0_combout\);

-- Location: LCCOMB_X11_Y16_N24
\U4|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[0]~3_combout\ = (\U4|R~0_combout\) # ((!\OP[2]~input_o\ & ((\U4|R[0]~2_combout\) # (\U4|R[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|R[0]~2_combout\,
	datab => \U4|R[0]~1_combout\,
	datac => \U4|R~0_combout\,
	datad => \OP[2]~input_o\,
	combout => \U4|R[0]~3_combout\);

-- Location: LCCOMB_X11_Y16_N2
\U1|U0|A0|FA0|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA0|Cout~0_combout\ = (\CBi~input_o\ & ((\U0|B\(0) & ((\W[0]~input_o\))) # (!\U0|B\(0) & (\OP[0]~input_o\)))) # (!\CBi~input_o\ & ((\U0|B\(0) & (!\OP[0]~input_o\)) # (!\U0|B\(0) & ((\W[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \W[0]~input_o\,
	datac => \CBi~input_o\,
	datad => \U0|B\(0),
	combout => \U1|U0|A0|FA0|Cout~0_combout\);

-- Location: IOIBUF_X10_Y15_N22
\Y[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X11_Y16_N12
\U0|B[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|B\(1) = (!\OP[1]~input_o\ & \Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[1]~input_o\,
	datac => \Y[1]~input_o\,
	combout => \U0|B\(1));

-- Location: LCCOMB_X11_Y16_N30
\U1|U0|A0|FA1|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA1|R~combout\ = \W[1]~input_o\ $ (\U1|U0|A0|FA0|Cout~0_combout\ $ (\OP[0]~input_o\ $ (\U0|B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \U1|U0|A0|FA0|Cout~0_combout\,
	datac => \OP[0]~input_o\,
	datad => \U0|B\(1),
	combout => \U1|U0|A0|FA1|R~combout\);

-- Location: IOIBUF_X10_Y19_N1
\W[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(2),
	o => \W[2]~input_o\);

-- Location: LCCOMB_X11_Y16_N8
\U4|R[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[1]~4_combout\ = (\OP[1]~input_o\ & ((\OP[0]~input_o\ & (\W[2]~input_o\)) # (!\OP[0]~input_o\ & ((\W[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \W[2]~input_o\,
	datad => \W[0]~input_o\,
	combout => \U4|R[1]~4_combout\);

-- Location: LCCOMB_X11_Y16_N18
\U4|R[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[1]~5_combout\ = (!\OP[1]~input_o\ & ((\Y[1]~input_o\ & ((!\W[1]~input_o\) # (!\OP[0]~input_o\))) # (!\Y[1]~input_o\ & ((\W[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \Y[1]~input_o\,
	datad => \W[1]~input_o\,
	combout => \U4|R[1]~5_combout\);

-- Location: LCCOMB_X11_Y16_N4
\U4|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[1]~6_combout\ = (\OP[2]~input_o\ & (\U1|U0|A0|FA1|R~combout\)) # (!\OP[2]~input_o\ & (((\U4|R[1]~4_combout\) # (\U4|R[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|A0|FA1|R~combout\,
	datab => \OP[2]~input_o\,
	datac => \U4|R[1]~4_combout\,
	datad => \U4|R[1]~5_combout\,
	combout => \U4|R[1]~6_combout\);

-- Location: LCCOMB_X11_Y16_N14
\U1|U0|A0|FA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA1|Cout~0_combout\ = (\W[1]~input_o\ & ((\U1|U0|A0|FA0|Cout~0_combout\) # (\OP[0]~input_o\ $ (\U0|B\(1))))) # (!\W[1]~input_o\ & (\U1|U0|A0|FA0|Cout~0_combout\ & (\OP[0]~input_o\ $ (\U0|B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \U1|U0|A0|FA0|Cout~0_combout\,
	datac => \OP[0]~input_o\,
	datad => \U0|B\(1),
	combout => \U1|U0|A0|FA1|Cout~0_combout\);

-- Location: IOIBUF_X10_Y21_N22
\Y[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X11_Y17_N8
\U0|B[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|B\(2) = (\Y[2]~input_o\ & !\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \U0|B\(2));

-- Location: LCCOMB_X11_Y17_N26
\U1|U0|A0|FA2|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA2|R~combout\ = \U1|U0|A0|FA1|Cout~0_combout\ $ (\W[2]~input_o\ $ (\U0|B\(2) $ (\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|A0|FA1|Cout~0_combout\,
	datab => \W[2]~input_o\,
	datac => \U0|B\(2),
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA2|R~combout\);

-- Location: IOIBUF_X10_Y18_N22
\W[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(3),
	o => \W[3]~input_o\);

-- Location: LCCOMB_X11_Y16_N0
\U4|R[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[2]~7_combout\ = (\OP[1]~input_o\ & ((\OP[0]~input_o\ & (\W[3]~input_o\)) # (!\OP[0]~input_o\ & ((\W[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \W[3]~input_o\,
	datad => \W[1]~input_o\,
	combout => \U4|R[2]~7_combout\);

-- Location: LCCOMB_X11_Y17_N12
\U4|R[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[2]~8_combout\ = (!\OP[1]~input_o\ & ((\Y[2]~input_o\ & ((!\W[2]~input_o\) # (!\OP[0]~input_o\))) # (!\Y[2]~input_o\ & ((\W[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \W[2]~input_o\,
	combout => \U4|R[2]~8_combout\);

-- Location: LCCOMB_X11_Y17_N14
\U4|R[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[2]~9_combout\ = (\OP[2]~input_o\ & (\U1|U0|A0|FA2|R~combout\)) # (!\OP[2]~input_o\ & (((\U4|R[2]~7_combout\) # (\U4|R[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|A0|FA2|R~combout\,
	datab => \U4|R[2]~7_combout\,
	datac => \OP[2]~input_o\,
	datad => \U4|R[2]~8_combout\,
	combout => \U4|R[2]~9_combout\);

-- Location: IOIBUF_X10_Y18_N8
\Y[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X11_Y17_N2
\U4|R[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[3]~10_combout\ = (\OP[1]~input_o\ & ((\W[2]~input_o\))) # (!\OP[1]~input_o\ & (\Y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[3]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \W[2]~input_o\,
	combout => \U4|R[3]~10_combout\);

-- Location: LCCOMB_X11_Y17_N22
\U4|R[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[3]~12_combout\ = (\OP[0]~input_o\) # ((\W[3]~input_o\ & (\OP[1]~input_o\ $ (\U4|R[3]~10_combout\))) # (!\W[3]~input_o\ & (\OP[1]~input_o\ & \U4|R[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \U4|R[3]~10_combout\,
	combout => \U4|R[3]~12_combout\);

-- Location: LCCOMB_X11_Y17_N4
\U4|R[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[3]~11_combout\ = (\OP[0]~input_o\ & (\W[3]~input_o\ $ (((!\OP[1]~input_o\ & \U4|R[3]~10_combout\))))) # (!\OP[0]~input_o\ & ((\U4|R[3]~10_combout\) # ((\W[3]~input_o\ & !\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \U4|R[3]~10_combout\,
	combout => \U4|R[3]~11_combout\);

-- Location: LCCOMB_X11_Y17_N0
\U1|U0|A0|FA2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA2|Cout~0_combout\ = (\U1|U0|A0|FA1|Cout~0_combout\ & ((\W[2]~input_o\) # (\U0|B\(2) $ (\OP[0]~input_o\)))) # (!\U1|U0|A0|FA1|Cout~0_combout\ & (\W[2]~input_o\ & (\U0|B\(2) $ (\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|A0|FA1|Cout~0_combout\,
	datab => \W[2]~input_o\,
	datac => \U0|B\(2),
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA2|Cout~0_combout\);

-- Location: LCCOMB_X11_Y17_N16
\U4|R[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[3]~13_combout\ = \U4|R[3]~11_combout\ $ (((\OP[2]~input_o\ & (\U4|R[3]~12_combout\ $ (\U1|U0|A0|FA2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|R[3]~12_combout\,
	datab => \OP[2]~input_o\,
	datac => \U4|R[3]~11_combout\,
	datad => \U1|U0|A0|FA2|Cout~0_combout\,
	combout => \U4|R[3]~13_combout\);

-- Location: LCCOMB_X11_Y16_N26
\U5|CBo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CBo~0_combout\ = (!\OP[0]~input_o\ & (\OP[1]~input_o\ & (\W[3]~input_o\ & !\OP[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \W[3]~input_o\,
	datad => \OP[2]~input_o\,
	combout => \U5|CBo~0_combout\);

-- Location: LCCOMB_X11_Y17_N10
\U0|B[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|B\(3) = (!\OP[1]~input_o\ & \Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[1]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \U0|B\(3));

-- Location: LCCOMB_X11_Y17_N20
\U1|U0|A0|FA3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA3|Cout~0_combout\ = (\W[3]~input_o\ & ((\U1|U0|A0|FA2|Cout~0_combout\) # (\OP[0]~input_o\ $ (\U0|B\(3))))) # (!\W[3]~input_o\ & (\U1|U0|A0|FA2|Cout~0_combout\ & (\OP[0]~input_o\ $ (\U0|B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \U1|U0|A0|FA2|Cout~0_combout\,
	datac => \OP[0]~input_o\,
	datad => \U0|B\(3),
	combout => \U1|U0|A0|FA3|Cout~0_combout\);

-- Location: LCCOMB_X11_Y16_N20
\U5|CBo\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CBo~combout\ = (\U5|CBo~0_combout\) # ((\OP[2]~input_o\ & (\OP[0]~input_o\ $ (\U1|U0|A0|FA3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \U5|CBo~0_combout\,
	datad => \U1|U0|A0|FA3|Cout~0_combout\,
	combout => \U5|CBo~combout\);

-- Location: LCCOMB_X11_Y17_N30
\U1|U0|Bx[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|Bx\(3) = \OP[0]~input_o\ $ (((!\OP[1]~input_o\ & \Y[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \U1|U0|Bx\(3));

-- Location: LCCOMB_X11_Y17_N24
\U5|OVo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|OVo~0_combout\ = (\OP[2]~input_o\ & ((\W[3]~input_o\ & (\U1|U0|Bx\(3) & !\U1|U0|A0|FA2|Cout~0_combout\)) # (!\W[3]~input_o\ & (!\U1|U0|Bx\(3) & \U1|U0|A0|FA2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \U1|U0|Bx\(3),
	datad => \U1|U0|A0|FA2|Cout~0_combout\,
	combout => \U5|OVo~0_combout\);

-- Location: LCCOMB_X11_Y17_N18
\U5|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Z~0_combout\ = (\U4|R[2]~9_combout\) # ((\U4|R[0]~3_combout\) # ((\U4|R[1]~6_combout\) # (\U4|R[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|R[2]~9_combout\,
	datab => \U4|R[0]~3_combout\,
	datac => \U4|R[1]~6_combout\,
	datad => \U4|R[3]~13_combout\,
	combout => \U5|Z~0_combout\);

-- Location: LCCOMB_X11_Y17_N28
\U5|GE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|GE~combout\ = (\OP[1]~input_o\) # (((!\U1|U0|A0|FA3|Cout~0_combout\) # (!\OP[2]~input_o\)) # (!\OP[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \OP[0]~input_o\,
	datac => \OP[2]~input_o\,
	datad => \U1|U0|A0|FA3|Cout~0_combout\,
	combout => \U5|GE~combout\);

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_CBo <= \CBo~output_o\;

ww_OV <= \OV~output_o\;

ww_Z <= \Z~output_o\;

ww_GE <= \GE~output_o\;
END structure;


