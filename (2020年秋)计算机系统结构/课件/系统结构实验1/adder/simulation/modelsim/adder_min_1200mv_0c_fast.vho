-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/01/2018 11:03:55"

-- 
-- Device: Altera EP4CE30F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adder IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	cin : IN std_logic;
	cout : BUFFER std_logic;
	sum : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END adder;

-- Design Ports Information
-- cout	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_sum : std_logic_vector(7 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \f0|CarryOut~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \f1|CarryOut~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \f2|CarryOut~0_combout\ : std_logic;
SIGNAL \f3|CarryOut~0_combout\ : std_logic;
SIGNAL \f4|CarryOut~0_combout\ : std_logic;
SIGNAL \f5|CarryOut~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \f6|CarryOut~0_combout\ : std_logic;
SIGNAL \f7|CarryOut~0_combout\ : std_logic;
SIGNAL \f0|Sum~0_combout\ : std_logic;
SIGNAL \f1|Sum~combout\ : std_logic;
SIGNAL \f2|Sum~combout\ : std_logic;
SIGNAL \f3|Sum~combout\ : std_logic;
SIGNAL \f4|Sum~combout\ : std_logic;
SIGNAL \f5|Sum~combout\ : std_logic;
SIGNAL \f6|Sum~combout\ : std_logic;
SIGNAL \f7|Sum~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
cout <= ww_cout;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X25_Y43_N23
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f7|CarryOut~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|Sum~0_combout\,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Sum~combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X32_Y43_N23
\sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Sum~combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X32_Y43_N30
\sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Sum~combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Sum~combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X25_Y43_N2
\sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|Sum~combout\,
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|Sum~combout\,
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

-- Location: IOOBUF_X25_Y43_N16
\sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f7|Sum~combout\,
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

-- Location: IOIBUF_X52_Y43_N29
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X38_Y43_N22
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X38_Y43_N1
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X41_Y43_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X54_Y43_N1
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X45_Y43_N15
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X56_Y43_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X45_Y43_N8
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X56_Y43_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X50_Y43_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X67_Y39_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X67_Y28_N1
\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X49_Y42_N0
\f0|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f0|CarryOut~0_combout\ = (\b[0]~input_o\ & ((\a[0]~input_o\) # (\cin~input_o\))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & \cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \cin~input_o\,
	combout => \f0|CarryOut~0_combout\);

-- Location: IOIBUF_X59_Y43_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X50_Y43_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X49_Y42_N10
\f1|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|CarryOut~0_combout\ = (\f0|CarryOut~0_combout\ & ((\a[1]~input_o\) # (\b[1]~input_o\))) # (!\f0|CarryOut~0_combout\ & (\a[1]~input_o\ & \b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f0|CarryOut~0_combout\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \f1|CarryOut~0_combout\);

-- Location: IOIBUF_X50_Y43_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X59_Y43_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X49_Y42_N12
\f2|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|CarryOut~0_combout\ = (\f1|CarryOut~0_combout\ & ((\b[2]~input_o\) # (\a[2]~input_o\))) # (!\f1|CarryOut~0_combout\ & (\b[2]~input_o\ & \a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|CarryOut~0_combout\,
	datab => \b[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \f2|CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y42_N6
\f3|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|CarryOut~0_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\) # (\f2|CarryOut~0_combout\))) # (!\b[3]~input_o\ & (\a[3]~input_o\ & \f2|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \f2|CarryOut~0_combout\,
	combout => \f3|CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y42_N24
\f4|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|CarryOut~0_combout\ = (\b[4]~input_o\ & ((\a[4]~input_o\) # (\f3|CarryOut~0_combout\))) # (!\b[4]~input_o\ & (\a[4]~input_o\ & \f3|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \f3|CarryOut~0_combout\,
	combout => \f4|CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y42_N2
\f5|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|CarryOut~0_combout\ = (\b[5]~input_o\ & ((\a[5]~input_o\) # (\f4|CarryOut~0_combout\))) # (!\b[5]~input_o\ & (\a[5]~input_o\ & \f4|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[5]~input_o\,
	datac => \a[5]~input_o\,
	datad => \f4|CarryOut~0_combout\,
	combout => \f5|CarryOut~0_combout\);

-- Location: IOIBUF_X54_Y43_N8
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X49_Y42_N28
\f6|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|CarryOut~0_combout\ = (\b[6]~input_o\ & ((\f5|CarryOut~0_combout\) # (\a[6]~input_o\))) # (!\b[6]~input_o\ & (\f5|CarryOut~0_combout\ & \a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \f5|CarryOut~0_combout\,
	datad => \a[6]~input_o\,
	combout => \f6|CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y42_N30
\f7|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f7|CarryOut~0_combout\ = (\a[7]~input_o\ & ((\b[7]~input_o\) # (\f6|CarryOut~0_combout\))) # (!\a[7]~input_o\ & (\b[7]~input_o\ & \f6|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datac => \b[7]~input_o\,
	datad => \f6|CarryOut~0_combout\,
	combout => \f7|CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y42_N16
\f0|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f0|Sum~0_combout\ = \b[0]~input_o\ $ (\a[0]~input_o\ $ (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \cin~input_o\,
	combout => \f0|Sum~0_combout\);

-- Location: LCCOMB_X49_Y42_N18
\f1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Sum~combout\ = \f0|CarryOut~0_combout\ $ (\a[1]~input_o\ $ (\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f0|CarryOut~0_combout\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \f1|Sum~combout\);

-- Location: LCCOMB_X49_Y42_N20
\f2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Sum~combout\ = \f1|CarryOut~0_combout\ $ (\b[2]~input_o\ $ (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|CarryOut~0_combout\,
	datab => \b[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \f2|Sum~combout\);

-- Location: LCCOMB_X49_Y42_N14
\f3|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \f3|Sum~combout\ = \b[3]~input_o\ $ (\a[3]~input_o\ $ (\f2|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \f2|CarryOut~0_combout\,
	combout => \f3|Sum~combout\);

-- Location: LCCOMB_X49_Y42_N8
\f4|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \f4|Sum~combout\ = \b[4]~input_o\ $ (\a[4]~input_o\ $ (\f3|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \f3|CarryOut~0_combout\,
	combout => \f4|Sum~combout\);

-- Location: LCCOMB_X49_Y42_N26
\f5|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \f5|Sum~combout\ = \b[5]~input_o\ $ (\a[5]~input_o\ $ (\f4|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[5]~input_o\,
	datac => \a[5]~input_o\,
	datad => \f4|CarryOut~0_combout\,
	combout => \f5|Sum~combout\);

-- Location: LCCOMB_X49_Y42_N4
\f6|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \f6|Sum~combout\ = \b[6]~input_o\ $ (\f5|CarryOut~0_combout\ $ (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \f5|CarryOut~0_combout\,
	datad => \a[6]~input_o\,
	combout => \f6|Sum~combout\);

-- Location: LCCOMB_X49_Y42_N22
\f7|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \f7|Sum~combout\ = \a[7]~input_o\ $ (\b[7]~input_o\ $ (\f6|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datac => \b[7]~input_o\,
	datad => \f6|CarryOut~0_combout\,
	combout => \f7|Sum~combout\);

ww_cout <= \cout~output_o\;

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(7) <= \sum[7]~output_o\;
END structure;


