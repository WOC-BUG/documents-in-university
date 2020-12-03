-- Copyright (C) 1991-2005 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic       
-- functions, and any output files any of the foregoing           
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
-- PROGRAM "Quartus II"
-- VERSION "Version 5.0 Build 148 04/26/2005 SJ Full Version"

-- DATE "03/10/2008 16:43:01"

-- 
-- Device: Altera EP1C6Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for PRIMETIME only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY 	regfile IS
    PORT (
	DR : IN std_logic_vector(1 DOWNTO 0);
	SR : IN std_logic_vector(1 DOWNTO 0);
	d_input : IN std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	DRWr : IN std_logic;
	DR_data : OUT std_logic_vector(15 DOWNTO 0);
	SR_data : OUT std_logic_vector(15 DOWNTO 0)
	);
END regfile;

ARCHITECTURE structure OF regfile IS
SIGNAL GNDs : std_logic_vector(255 DOWNTO 0);
SIGNAL VCCs : std_logic_vector(255 DOWNTO 0);
SIGNAL gnd : std_logic;
SIGNAL vcc : std_logic;
SIGNAL lcell_ff_enable_asynch_arcs_out : std_logic;
SIGNAL ww_DR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_DRWr : std_logic;
SIGNAL ww_DR_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SR_data : std_logic_vector(15 DOWNTO 0);
SIGNAL clk_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL d_input_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL reset_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DRWr_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg02_aprocess0_a0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aprocess0_a0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a0_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a0_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aprocess0_a0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aprocess0_a0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a0_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a0_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aprocess0_a0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aprocess0_a0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a0_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a0_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aprocess0_a0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aprocess0_a0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a0_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a0_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg00_aQ_a1_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a1_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a1_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a1_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a1_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a1_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a1_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a1_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a2_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg02_aQ_a2_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a2_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a2_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a2_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a2_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a2_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a2_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a2_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a3_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg01_aQ_a3_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a3_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a3_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a3_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a3_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a3_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a3_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a3_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a4_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg02_aQ_a4_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a4_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a4_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a4_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a4_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a4_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a4_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a4_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a5_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg01_aQ_a5_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a5_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a5_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a5_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a5_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a5_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a5_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a5_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a6_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg02_aQ_a6_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a6_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a6_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a6_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a6_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a6_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a6_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a6_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a7_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg01_aQ_a7_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a7_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a7_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a7_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a7_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a7_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a7_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a7_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a8_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg02_aQ_a8_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a8_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a8_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a8_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a8_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a8_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a8_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a8_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a9_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg01_aQ_a9_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a9_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a9_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a9_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a9_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a9_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a9_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a9_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a10_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg02_aQ_a10_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a10_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a10_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a10_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a10_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a10_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a10_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a10_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a11_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg01_aQ_a11_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a11_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a11_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a11_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a11_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a11_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a11_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a11_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a12_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg02_aQ_a12_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a12_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a12_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a12_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a12_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a12_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a12_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a12_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a13_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg01_aQ_a13_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a13_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a13_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a13_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a13_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a13_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a13_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a13_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a14_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg02_aQ_a14_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a14_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a14_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a14_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg01_aQ_a14_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a14_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a14_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a14_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL d_input_a15_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Areg01_aQ_a15_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg01_aQ_a15_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg00_aQ_a15_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg00_aQ_a15_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg02_aQ_a15_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg02_aQ_a15_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Areg03_aQ_a15_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Areg03_aQ_a15_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL DR_data_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a2_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a3_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a4_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a5_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a6_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a7_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a8_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a9_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a10_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a11_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a12_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a13_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a14_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL DR_data_a15_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a2_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a3_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a4_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a5_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a6_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a7_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a8_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a9_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a10_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a11_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a12_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a13_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a14_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL SR_data_a15_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL clk_acombout : std_logic;
SIGNAL DR_a0_a_acombout : std_logic;
SIGNAL SR_a0_a_acombout : std_logic;
SIGNAL d_input_a0_a_acombout : std_logic;
SIGNAL DR_a1_a_acombout : std_logic;
SIGNAL SR_a1_a_acombout : std_logic;
SIGNAL reset_acombout : std_logic;
SIGNAL DRWr_acombout : std_logic;
SIGNAL Areg02_aprocess0_a0 : std_logic;
SIGNAL Areg02_aQ_a0_a : std_logic;
SIGNAL Areg00_aprocess0_a0 : std_logic;
SIGNAL Areg00_aQ_a0_a : std_logic;
SIGNAL mux1_aout_put_a0_a_a212 : std_logic;
SIGNAL Areg01_aprocess0_a0 : std_logic;
SIGNAL Areg01_aQ_a0_a : std_logic;
SIGNAL mux2_aout_put_a0_a_a212 : std_logic;
SIGNAL Areg03_aprocess0_a0 : std_logic;
SIGNAL Areg03_aQ_a0_a : std_logic;
SIGNAL mux1_aout_put_a0_a_a213 : std_logic;
SIGNAL d_input_a1_a_acombout : std_logic;
SIGNAL Areg00_aQ_a1_a : std_logic;
SIGNAL Areg01_aQ_a1_a : std_logic;
SIGNAL mux2_aout_put_a1_a_a214 : std_logic;
SIGNAL mux1_aout_put_a1_a_a214 : std_logic;
SIGNAL Areg02_aQ_a1_a : std_logic;
SIGNAL Areg03_aQ_a1_a : std_logic;
SIGNAL mux1_aout_put_a1_a_a215 : std_logic;
SIGNAL d_input_a2_a_acombout : std_logic;
SIGNAL Areg02_aQ_a2_a : std_logic;
SIGNAL Areg00_aQ_a2_a : std_logic;
SIGNAL mux1_aout_put_a2_a_a216 : std_logic;
SIGNAL Areg01_aQ_a2_a : std_logic;
SIGNAL mux2_aout_put_a2_a_a216 : std_logic;
SIGNAL Areg03_aQ_a2_a : std_logic;
SIGNAL mux1_aout_put_a2_a_a217 : std_logic;
SIGNAL d_input_a3_a_acombout : std_logic;
SIGNAL Areg01_aQ_a3_a : std_logic;
SIGNAL Areg00_aQ_a3_a : std_logic;
SIGNAL mux1_aout_put_a3_a_a218 : std_logic;
SIGNAL Areg02_aQ_a3_a : std_logic;
SIGNAL mux2_aout_put_a3_a_a218 : std_logic;
SIGNAL Areg03_aQ_a3_a : std_logic;
SIGNAL mux1_aout_put_a3_a_a219 : std_logic;
SIGNAL d_input_a4_a_acombout : std_logic;
SIGNAL Areg02_aQ_a4_a : std_logic;
SIGNAL Areg00_aQ_a4_a : std_logic;
SIGNAL mux1_aout_put_a4_a_a220 : std_logic;
SIGNAL Areg01_aQ_a4_a : std_logic;
SIGNAL mux2_aout_put_a4_a_a220 : std_logic;
SIGNAL Areg03_aQ_a4_a : std_logic;
SIGNAL mux1_aout_put_a4_a_a221 : std_logic;
SIGNAL d_input_a5_a_acombout : std_logic;
SIGNAL Areg01_aQ_a5_a : std_logic;
SIGNAL Areg00_aQ_a5_a : std_logic;
SIGNAL mux1_aout_put_a5_a_a222 : std_logic;
SIGNAL Areg02_aQ_a5_a : std_logic;
SIGNAL mux2_aout_put_a5_a_a222 : std_logic;
SIGNAL Areg03_aQ_a5_a : std_logic;
SIGNAL mux1_aout_put_a5_a_a223 : std_logic;
SIGNAL d_input_a6_a_acombout : std_logic;
SIGNAL Areg02_aQ_a6_a : std_logic;
SIGNAL Areg00_aQ_a6_a : std_logic;
SIGNAL mux1_aout_put_a6_a_a224 : std_logic;
SIGNAL Areg01_aQ_a6_a : std_logic;
SIGNAL mux2_aout_put_a6_a_a224 : std_logic;
SIGNAL Areg03_aQ_a6_a : std_logic;
SIGNAL mux1_aout_put_a6_a_a225 : std_logic;
SIGNAL d_input_a7_a_acombout : std_logic;
SIGNAL Areg01_aQ_a7_a : std_logic;
SIGNAL Areg00_aQ_a7_a : std_logic;
SIGNAL mux1_aout_put_a7_a_a226 : std_logic;
SIGNAL mux2_aout_put_a7_a_a226 : std_logic;
SIGNAL Areg02_aQ_a7_a : std_logic;
SIGNAL Areg03_aQ_a7_a : std_logic;
SIGNAL mux1_aout_put_a7_a_a227 : std_logic;
SIGNAL d_input_a8_a_acombout : std_logic;
SIGNAL Areg02_aQ_a8_a : std_logic;
SIGNAL Areg00_aQ_a8_a : std_logic;
SIGNAL mux1_aout_put_a8_a_a228 : std_logic;
SIGNAL Areg01_aQ_a8_a : std_logic;
SIGNAL mux2_aout_put_a8_a_a228 : std_logic;
SIGNAL Areg03_aQ_a8_a : std_logic;
SIGNAL mux1_aout_put_a8_a_a229 : std_logic;
SIGNAL d_input_a9_a_acombout : std_logic;
SIGNAL Areg01_aQ_a9_a : std_logic;
SIGNAL Areg00_aQ_a9_a : std_logic;
SIGNAL mux1_aout_put_a9_a_a230 : std_logic;
SIGNAL Areg02_aQ_a9_a : std_logic;
SIGNAL mux2_aout_put_a9_a_a230 : std_logic;
SIGNAL Areg03_aQ_a9_a : std_logic;
SIGNAL mux1_aout_put_a9_a_a231 : std_logic;
SIGNAL d_input_a10_a_acombout : std_logic;
SIGNAL Areg02_aQ_a10_a : std_logic;
SIGNAL Areg00_aQ_a10_a : std_logic;
SIGNAL mux1_aout_put_a10_a_a232 : std_logic;
SIGNAL Areg01_aQ_a10_a : std_logic;
SIGNAL mux2_aout_put_a10_a_a232 : std_logic;
SIGNAL Areg03_aQ_a10_a : std_logic;
SIGNAL mux1_aout_put_a10_a_a233 : std_logic;
SIGNAL d_input_a11_a_acombout : std_logic;
SIGNAL Areg01_aQ_a11_a : std_logic;
SIGNAL Areg00_aQ_a11_a : std_logic;
SIGNAL mux1_aout_put_a11_a_a234 : std_logic;
SIGNAL mux2_aout_put_a11_a_a234 : std_logic;
SIGNAL Areg02_aQ_a11_a : std_logic;
SIGNAL Areg03_aQ_a11_a : std_logic;
SIGNAL mux1_aout_put_a11_a_a235 : std_logic;
SIGNAL d_input_a12_a_acombout : std_logic;
SIGNAL Areg02_aQ_a12_a : std_logic;
SIGNAL Areg00_aQ_a12_a : std_logic;
SIGNAL mux1_aout_put_a12_a_a236 : std_logic;
SIGNAL Areg01_aQ_a12_a : std_logic;
SIGNAL mux2_aout_put_a12_a_a236 : std_logic;
SIGNAL Areg03_aQ_a12_a : std_logic;
SIGNAL mux1_aout_put_a12_a_a237 : std_logic;
SIGNAL d_input_a13_a_acombout : std_logic;
SIGNAL Areg01_aQ_a13_a : std_logic;
SIGNAL Areg00_aQ_a13_a : std_logic;
SIGNAL mux1_aout_put_a13_a_a238 : std_logic;
SIGNAL Areg02_aQ_a13_a : std_logic;
SIGNAL mux2_aout_put_a13_a_a238 : std_logic;
SIGNAL Areg03_aQ_a13_a : std_logic;
SIGNAL mux1_aout_put_a13_a_a239 : std_logic;
SIGNAL d_input_a14_a_acombout : std_logic;
SIGNAL Areg02_aQ_a14_a : std_logic;
SIGNAL Areg00_aQ_a14_a : std_logic;
SIGNAL mux1_aout_put_a14_a_a240 : std_logic;
SIGNAL Areg01_aQ_a14_a : std_logic;
SIGNAL mux2_aout_put_a14_a_a240 : std_logic;
SIGNAL Areg03_aQ_a14_a : std_logic;
SIGNAL mux1_aout_put_a14_a_a241 : std_logic;
SIGNAL d_input_a15_a_acombout : std_logic;
SIGNAL Areg01_aQ_a15_a : std_logic;
SIGNAL Areg00_aQ_a15_a : std_logic;
SIGNAL mux1_aout_put_a15_a_a242 : std_logic;
SIGNAL Areg02_aQ_a15_a : std_logic;
SIGNAL mux2_aout_put_a15_a_a242 : std_logic;
SIGNAL Areg03_aQ_a15_a : std_logic;
SIGNAL mux1_aout_put_a15_a_a243 : std_logic;
SIGNAL mux2_aout_put_a0_a_a213 : std_logic;
SIGNAL mux2_aout_put_a1_a_a215 : std_logic;
SIGNAL mux2_aout_put_a2_a_a217 : std_logic;
SIGNAL mux2_aout_put_a3_a_a219 : std_logic;
SIGNAL mux2_aout_put_a4_a_a221 : std_logic;
SIGNAL mux2_aout_put_a5_a_a223 : std_logic;
SIGNAL mux2_aout_put_a6_a_a225 : std_logic;
SIGNAL mux2_aout_put_a7_a_a227 : std_logic;
SIGNAL mux2_aout_put_a8_a_a229 : std_logic;
SIGNAL mux2_aout_put_a9_a_a231 : std_logic;
SIGNAL mux2_aout_put_a10_a_a233 : std_logic;
SIGNAL mux2_aout_put_a11_a_a235 : std_logic;
SIGNAL mux2_aout_put_a12_a_a237 : std_logic;
SIGNAL mux2_aout_put_a13_a_a239 : std_logic;
SIGNAL mux2_aout_put_a14_a_a241 : std_logic;
SIGNAL mux2_aout_put_a15_a_a243 : std_logic;
SIGNAL ALT_INV_reset_acombout : std_logic;
COMPONENT cyclone_lcell
PORT (
	clk : IN STD_LOGIC;
	dataa : IN STD_LOGIC;
	datab : IN STD_LOGIC;
	datac : IN STD_LOGIC;
	datad : IN STD_LOGIC;
	aclr : IN STD_LOGIC;
	aload : IN STD_LOGIC;
	sclr : IN STD_LOGIC;
	sload : IN STD_LOGIC;
	ena : IN STD_LOGIC;
	cin : IN STD_LOGIC;
	cin0 : IN STD_LOGIC;
	cin1 : IN STD_LOGIC;
	inverta : IN STD_LOGIC;
	regcascin : IN STD_LOGIC;
	combout : OUT STD_LOGIC;
	regout : OUT STD_LOGIC;
	cout : OUT STD_LOGIC;
	cout0 : OUT STD_LOGIC;
	cout1 : OUT STD_LOGIC;
	MODESEL : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
	PATHSEL : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
	ENABLE_ASYNCH_ARCS : IN STD_LOGIC);
END COMPONENT;

COMPONENT cyclone_io
PORT (
	datain : IN STD_LOGIC;
	oe : IN STD_LOGIC;
	outclk : IN STD_LOGIC;
	outclkena : IN STD_LOGIC;
	inclk : IN STD_LOGIC;
	inclkena : IN STD_LOGIC;
	areset : IN STD_LOGIC;
	sreset : IN STD_LOGIC;
	combout : OUT STD_LOGIC;
	regout : OUT STD_LOGIC;
	padio : INOUT STD_LOGIC;
	MODESEL : IN STD_LOGIC_VECTOR(26 DOWNTO 0));
END COMPONENT;


COMPONENT INV
    PORT (
	IN1 : IN std_logic;
	Y :  OUT std_logic);
END COMPONENT;

COMPONENT AND1
    PORT (
	IN1 : IN std_logic;
	Y :  OUT std_logic);
END COMPONENT;
BEGIN

ww_DR <= DR;
ww_SR <= SR;
ww_d_input <= d_input;
ww_clk <= clk;
ww_reset <= reset;
ww_DRWr <= DRWr;
DR_data <= ww_DR_data;
SR_data <= ww_SR_data;

gnd <= '0';
vcc <= '1';
GNDs <= (OTHERS => '0');
VCCs <= (OTHERS => '1');

clk_aI_modesel <= "000000000000000000000000001";
DR_a0_a_aI_modesel <= "000000000000000000000000001";
SR_a0_a_aI_modesel <= "000000000000000000000000001";
d_input_a0_a_aI_modesel <= "000000000000000000000000001";
DR_a1_a_aI_modesel <= "000000000000000000000000001";
SR_a1_a_aI_modesel <= "000000000000000000000000001";
reset_aI_modesel <= "000000000000000000000000001";
DRWr_aI_modesel <= "000000000000000000000000001";
Areg02_aprocess0_a0_I_modesel <= "1001001010101";
Areg02_aprocess0_a0_I_pathsel <= "00000001110";
Areg02_aQ_a0_a_aI_modesel <= "0010100011001";
Areg02_aQ_a0_a_aI_pathsel <= "00000101011";
Areg00_aprocess0_a0_I_modesel <= "1001001010101";
Areg00_aprocess0_a0_I_pathsel <= "00000001110";
Areg00_aQ_a0_a_aI_modesel <= "0010100011001";
Areg00_aQ_a0_a_aI_pathsel <= "00000101011";
Areg01_aprocess0_a0_I_modesel <= "1001001010101";
Areg01_aprocess0_a0_I_pathsel <= "00000000111";
Areg01_aQ_a0_a_aI_modesel <= "0010100011001";
Areg01_aQ_a0_a_aI_pathsel <= "00000101011";
Areg03_aprocess0_a0_I_modesel <= "1001001010101";
Areg03_aprocess0_a0_I_pathsel <= "00000000111";
Areg03_aQ_a0_a_aI_modesel <= "0010100011001";
Areg03_aQ_a0_a_aI_pathsel <= "00000101011";
d_input_a1_a_aI_modesel <= "000000000000000000000000001";
Areg00_aQ_a1_a_aI_modesel <= "0010100011001";
Areg00_aQ_a1_a_aI_pathsel <= "00000101011";
Areg01_aQ_a1_a_aI_modesel <= "0010100011001";
Areg01_aQ_a1_a_aI_pathsel <= "00000101011";
Areg02_aQ_a1_a_aI_modesel <= "0010100011001";
Areg02_aQ_a1_a_aI_pathsel <= "00000101011";
Areg03_aQ_a1_a_aI_modesel <= "0010100011001";
Areg03_aQ_a1_a_aI_pathsel <= "00000101011";
d_input_a2_a_aI_modesel <= "000000000000000000000000001";
Areg02_aQ_a2_a_aI_modesel <= "0010100011001";
Areg02_aQ_a2_a_aI_pathsel <= "00000101011";
Areg00_aQ_a2_a_aI_modesel <= "0010100011001";
Areg00_aQ_a2_a_aI_pathsel <= "00000101011";
Areg01_aQ_a2_a_aI_modesel <= "0010100011001";
Areg01_aQ_a2_a_aI_pathsel <= "00000101011";
Areg03_aQ_a2_a_aI_modesel <= "0010100011001";
Areg03_aQ_a2_a_aI_pathsel <= "00000101011";
d_input_a3_a_aI_modesel <= "000000000000000000000000001";
Areg01_aQ_a3_a_aI_modesel <= "0010100011001";
Areg01_aQ_a3_a_aI_pathsel <= "00000101011";
Areg00_aQ_a3_a_aI_modesel <= "0010100011001";
Areg00_aQ_a3_a_aI_pathsel <= "00000101011";
Areg02_aQ_a3_a_aI_modesel <= "0010100011001";
Areg02_aQ_a3_a_aI_pathsel <= "00000101011";
Areg03_aQ_a3_a_aI_modesel <= "0010100011001";
Areg03_aQ_a3_a_aI_pathsel <= "00000101011";
d_input_a4_a_aI_modesel <= "000000000000000000000000001";
Areg02_aQ_a4_a_aI_modesel <= "0010100011001";
Areg02_aQ_a4_a_aI_pathsel <= "00000101011";
Areg00_aQ_a4_a_aI_modesel <= "0010100011001";
Areg00_aQ_a4_a_aI_pathsel <= "00000101011";
Areg01_aQ_a4_a_aI_modesel <= "0010100011001";
Areg01_aQ_a4_a_aI_pathsel <= "00000101011";
Areg03_aQ_a4_a_aI_modesel <= "0010100011001";
Areg03_aQ_a4_a_aI_pathsel <= "00000101011";
d_input_a5_a_aI_modesel <= "000000000000000000000000001";
Areg01_aQ_a5_a_aI_modesel <= "0010100011001";
Areg01_aQ_a5_a_aI_pathsel <= "00000101011";
Areg00_aQ_a5_a_aI_modesel <= "0010100011001";
Areg00_aQ_a5_a_aI_pathsel <= "00000101011";
Areg02_aQ_a5_a_aI_modesel <= "0010100011001";
Areg02_aQ_a5_a_aI_pathsel <= "00000101011";
Areg03_aQ_a5_a_aI_modesel <= "0010100011001";
Areg03_aQ_a5_a_aI_pathsel <= "00000101011";
d_input_a6_a_aI_modesel <= "000000000000000000000000001";
Areg02_aQ_a6_a_aI_modesel <= "0010100011001";
Areg02_aQ_a6_a_aI_pathsel <= "00000101011";
Areg00_aQ_a6_a_aI_modesel <= "0010100011001";
Areg00_aQ_a6_a_aI_pathsel <= "00000101011";
Areg01_aQ_a6_a_aI_modesel <= "0010100011001";
Areg01_aQ_a6_a_aI_pathsel <= "00000101011";
Areg03_aQ_a6_a_aI_modesel <= "0010100011001";
Areg03_aQ_a6_a_aI_pathsel <= "00000101011";
d_input_a7_a_aI_modesel <= "000000000000000000000000001";
Areg01_aQ_a7_a_aI_modesel <= "0010100011001";
Areg01_aQ_a7_a_aI_pathsel <= "00000101011";
Areg00_aQ_a7_a_aI_modesel <= "0010100011001";
Areg00_aQ_a7_a_aI_pathsel <= "00000101011";
Areg02_aQ_a7_a_aI_modesel <= "0010100011001";
Areg02_aQ_a7_a_aI_pathsel <= "00000101011";
Areg03_aQ_a7_a_aI_modesel <= "0010100011001";
Areg03_aQ_a7_a_aI_pathsel <= "00000101011";
d_input_a8_a_aI_modesel <= "000000000000000000000000001";
Areg02_aQ_a8_a_aI_modesel <= "0010100011001";
Areg02_aQ_a8_a_aI_pathsel <= "00000101011";
Areg00_aQ_a8_a_aI_modesel <= "0010100011001";
Areg00_aQ_a8_a_aI_pathsel <= "00000101011";
Areg01_aQ_a8_a_aI_modesel <= "0010100011001";
Areg01_aQ_a8_a_aI_pathsel <= "00000101011";
Areg03_aQ_a8_a_aI_modesel <= "0010100011001";
Areg03_aQ_a8_a_aI_pathsel <= "00000101011";
d_input_a9_a_aI_modesel <= "000000000000000000000000001";
Areg01_aQ_a9_a_aI_modesel <= "0010100011001";
Areg01_aQ_a9_a_aI_pathsel <= "00000101011";
Areg00_aQ_a9_a_aI_modesel <= "0010100011001";
Areg00_aQ_a9_a_aI_pathsel <= "00000101011";
Areg02_aQ_a9_a_aI_modesel <= "0010100011001";
Areg02_aQ_a9_a_aI_pathsel <= "00000101011";
Areg03_aQ_a9_a_aI_modesel <= "0010100011001";
Areg03_aQ_a9_a_aI_pathsel <= "00000101011";
d_input_a10_a_aI_modesel <= "000000000000000000000000001";
Areg02_aQ_a10_a_aI_modesel <= "0010100011001";
Areg02_aQ_a10_a_aI_pathsel <= "00000101011";
Areg00_aQ_a10_a_aI_modesel <= "0010100011001";
Areg00_aQ_a10_a_aI_pathsel <= "00000101011";
Areg01_aQ_a10_a_aI_modesel <= "0010100011001";
Areg01_aQ_a10_a_aI_pathsel <= "00000101011";
Areg03_aQ_a10_a_aI_modesel <= "0010100011001";
Areg03_aQ_a10_a_aI_pathsel <= "00000101011";
d_input_a11_a_aI_modesel <= "000000000000000000000000001";
Areg01_aQ_a11_a_aI_modesel <= "0010100011001";
Areg01_aQ_a11_a_aI_pathsel <= "00000101011";
Areg00_aQ_a11_a_aI_modesel <= "0010100011001";
Areg00_aQ_a11_a_aI_pathsel <= "00000101011";
Areg02_aQ_a11_a_aI_modesel <= "0010100011001";
Areg02_aQ_a11_a_aI_pathsel <= "00000101011";
Areg03_aQ_a11_a_aI_modesel <= "0010100011001";
Areg03_aQ_a11_a_aI_pathsel <= "00000101011";
d_input_a12_a_aI_modesel <= "000000000000000000000000001";
Areg02_aQ_a12_a_aI_modesel <= "0010100011001";
Areg02_aQ_a12_a_aI_pathsel <= "00000101011";
Areg00_aQ_a12_a_aI_modesel <= "0010100011001";
Areg00_aQ_a12_a_aI_pathsel <= "00000101011";
Areg01_aQ_a12_a_aI_modesel <= "0010100011001";
Areg01_aQ_a12_a_aI_pathsel <= "00000101011";
Areg03_aQ_a12_a_aI_modesel <= "0010100011001";
Areg03_aQ_a12_a_aI_pathsel <= "00000101011";
d_input_a13_a_aI_modesel <= "000000000000000000000000001";
Areg01_aQ_a13_a_aI_modesel <= "0010100011001";
Areg01_aQ_a13_a_aI_pathsel <= "00000101011";
Areg00_aQ_a13_a_aI_modesel <= "0010100011001";
Areg00_aQ_a13_a_aI_pathsel <= "00000101011";
Areg02_aQ_a13_a_aI_modesel <= "0010100011001";
Areg02_aQ_a13_a_aI_pathsel <= "00000101011";
Areg03_aQ_a13_a_aI_modesel <= "0010100011001";
Areg03_aQ_a13_a_aI_pathsel <= "00000101011";
d_input_a14_a_aI_modesel <= "000000000000000000000000001";
Areg02_aQ_a14_a_aI_modesel <= "0010100011001";
Areg02_aQ_a14_a_aI_pathsel <= "00000101011";
Areg00_aQ_a14_a_aI_modesel <= "0010100011001";
Areg00_aQ_a14_a_aI_pathsel <= "00000101011";
Areg01_aQ_a14_a_aI_modesel <= "0010100011001";
Areg01_aQ_a14_a_aI_pathsel <= "00000101011";
Areg03_aQ_a14_a_aI_modesel <= "0010100011001";
Areg03_aQ_a14_a_aI_pathsel <= "00000101011";
d_input_a15_a_aI_modesel <= "000000000000000000000000001";
Areg01_aQ_a15_a_aI_modesel <= "0010100011001";
Areg01_aQ_a15_a_aI_pathsel <= "00000101011";
Areg00_aQ_a15_a_aI_modesel <= "0010100011001";
Areg00_aQ_a15_a_aI_pathsel <= "00000101011";
Areg02_aQ_a15_a_aI_modesel <= "0010100011001";
Areg02_aQ_a15_a_aI_pathsel <= "00000101011";
Areg03_aQ_a15_a_aI_modesel <= "0010100011001";
Areg03_aQ_a15_a_aI_pathsel <= "00000101011";
DR_data_a0_a_aI_modesel <= "000000000000000000000000010";
DR_data_a1_a_aI_modesel <= "000000000000000000000000010";
DR_data_a2_a_aI_modesel <= "000000000000000000000000010";
DR_data_a3_a_aI_modesel <= "000000000000000000000000010";
DR_data_a4_a_aI_modesel <= "000000000000000000000000010";
DR_data_a5_a_aI_modesel <= "000000000000000000000000010";
DR_data_a6_a_aI_modesel <= "000000000000000000000000010";
DR_data_a7_a_aI_modesel <= "000000000000000000000000010";
DR_data_a8_a_aI_modesel <= "000000000000000000000000010";
DR_data_a9_a_aI_modesel <= "000000000000000000000000010";
DR_data_a10_a_aI_modesel <= "000000000000000000000000010";
DR_data_a11_a_aI_modesel <= "000000000000000000000000010";
DR_data_a12_a_aI_modesel <= "000000000000000000000000010";
DR_data_a13_a_aI_modesel <= "000000000000000000000000010";
DR_data_a14_a_aI_modesel <= "000000000000000000000000010";
DR_data_a15_a_aI_modesel <= "000000000000000000000000010";
SR_data_a0_a_aI_modesel <= "000000000000000000000000010";
SR_data_a1_a_aI_modesel <= "000000000000000000000000010";
SR_data_a2_a_aI_modesel <= "000000000000000000000000010";
SR_data_a3_a_aI_modesel <= "000000000000000000000000010";
SR_data_a4_a_aI_modesel <= "000000000000000000000000010";
SR_data_a5_a_aI_modesel <= "000000000000000000000000010";
SR_data_a6_a_aI_modesel <= "000000000000000000000000010";
SR_data_a7_a_aI_modesel <= "000000000000000000000000010";
SR_data_a8_a_aI_modesel <= "000000000000000000000000010";
SR_data_a9_a_aI_modesel <= "000000000000000000000000010";
SR_data_a10_a_aI_modesel <= "000000000000000000000000010";
SR_data_a11_a_aI_modesel <= "000000000000000000000000010";
SR_data_a12_a_aI_modesel <= "000000000000000000000000010";
SR_data_a13_a_aI_modesel <= "000000000000000000000000010";
SR_data_a14_a_aI_modesel <= "000000000000000000000000010";
SR_data_a15_a_aI_modesel <= "000000000000000000000000010";

INV_INST_reset_acombout : INV
PORT MAP (
	 IN1 => reset_acombout,
	 Y => ALT_INV_reset_acombout);

lcell_ff_enable_asynch_arcs : AND1
PORT MAP (
	 IN1 => GND,
	 Y => lcell_ff_enable_asynch_arcs_out);

clk_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => clk_aI_modesel,
	combout => clk_acombout,
	padio => ww_clk);

DR_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_a0_a_aI_modesel,
	combout => DR_a0_a_acombout,
	padio => ww_DR(0));

SR_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_a0_a_aI_modesel,
	combout => SR_a0_a_acombout,
	padio => ww_SR(0));

d_input_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a0_a_aI_modesel,
	combout => d_input_a0_a_acombout,
	padio => ww_d_input(0));

DR_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_a1_a_aI_modesel,
	combout => DR_a1_a_acombout,
	padio => ww_DR(1));

SR_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_a1_a_aI_modesel,
	combout => SR_a1_a_acombout,
	padio => ww_SR(1));

reset_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => reset_aI_modesel,
	combout => reset_acombout,
	padio => ww_reset);

DRWr_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DRWr_aI_modesel,
	combout => DRWr_acombout,
	padio => ww_DRWr);

Areg02_aprocess0_a0_I : cyclone_lcell
-- Equation(s):
-- Areg02_aprocess0_a0 = DR_a1_a_acombout & DRWr_acombout & !DR_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "00C0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aprocess0_a0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => DR_a1_a_acombout,
	datac => DRWr_acombout,
	datad => DR_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aprocess0_a0_I_modesel,
	combout => Areg02_aprocess0_a0);

Areg02_aQ_a0_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a0_a_a212 = DR_a0_a_acombout & DR_a1_a_acombout # !DR_a0_a_acombout & (DR_a1_a_acombout & B3_Q[0] # !DR_a1_a_acombout & (Areg00_aQ_a0_a))
-- Areg02_aQ_a0_a = DFFEAS(mux1_aout_put_a0_a_a212, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a0_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "D9C8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a0_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a0_a_acombout,
	datad => Areg00_aQ_a0_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a0_a_aI_modesel,
	combout => mux1_aout_put_a0_a_a212,
	regout => Areg02_aQ_a0_a);

Areg00_aprocess0_a0_I : cyclone_lcell
-- Equation(s):
-- Areg00_aprocess0_a0 = !DR_a1_a_acombout & DRWr_acombout & !DR_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "0030",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aprocess0_a0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => DR_a1_a_acombout,
	datac => DRWr_acombout,
	datad => DR_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aprocess0_a0_I_modesel,
	combout => Areg00_aprocess0_a0);

Areg00_aQ_a0_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a0_a_a212 = SR_a0_a_acombout & SR_a1_a_acombout # !SR_a0_a_acombout & (SR_a1_a_acombout & (Areg02_aQ_a0_a) # !SR_a1_a_acombout & B1_Q[0])
-- Areg00_aQ_a0_a = DFFEAS(mux2_aout_put_a0_a_a212, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a0_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DC98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a0_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => SR_a1_a_acombout,
	datac => d_input_a0_a_acombout,
	datad => Areg02_aQ_a0_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a0_a_aI_modesel,
	combout => mux2_aout_put_a0_a_a212,
	regout => Areg00_aQ_a0_a);

Areg01_aprocess0_a0_I : cyclone_lcell
-- Equation(s):
-- Areg01_aprocess0_a0 = !DR_a1_a_acombout & DRWr_acombout & DR_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "4040",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aprocess0_a0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => DR_a1_a_acombout,
	datab => DRWr_acombout,
	datac => DR_a0_a_acombout,
	datad => VCC,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aprocess0_a0_I_modesel,
	combout => Areg01_aprocess0_a0);

Areg01_aQ_a0_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a0_a_a213 = DR_a0_a_acombout & (mux1_aout_put_a0_a_a212 & Areg03_aQ_a0_a # !mux1_aout_put_a0_a_a212 & (B2_Q[0])) # !DR_a0_a_acombout & (mux1_aout_put_a0_a_a212)
-- Areg01_aQ_a0_a = DFFEAS(mux1_aout_put_a0_a_a213, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a0_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DDA0",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a0_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg03_aQ_a0_a,
	datac => d_input_a0_a_acombout,
	datad => mux1_aout_put_a0_a_a212,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a0_a_aI_modesel,
	combout => mux1_aout_put_a0_a_a213,
	regout => Areg01_aQ_a0_a);

Areg03_aprocess0_a0_I : cyclone_lcell
-- Equation(s):
-- Areg03_aprocess0_a0 = DR_a1_a_acombout & DRWr_acombout & DR_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "8080",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aprocess0_a0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => DR_a1_a_acombout,
	datab => DRWr_acombout,
	datac => DR_a0_a_acombout,
	datad => VCC,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aprocess0_a0_I_modesel,
	combout => Areg03_aprocess0_a0);

Areg03_aQ_a0_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a0_a_a213 = SR_a0_a_acombout & (mux2_aout_put_a0_a_a212 & (B4_Q[0]) # !mux2_aout_put_a0_a_a212 & Areg01_aQ_a0_a) # !SR_a0_a_acombout & (mux2_aout_put_a0_a_a212)
-- Areg03_aQ_a0_a = DFFEAS(mux2_aout_put_a0_a_a213, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a0_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a0_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => Areg01_aQ_a0_a,
	datac => d_input_a0_a_acombout,
	datad => mux2_aout_put_a0_a_a212,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a0_a_aI_modesel,
	combout => mux2_aout_put_a0_a_a213,
	regout => Areg03_aQ_a0_a);

d_input_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a1_a_aI_modesel,
	combout => d_input_a1_a_acombout,
	padio => ww_d_input(1));

Areg00_aQ_a1_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a1_a_a214 = SR_a0_a_acombout & (SR_a1_a_acombout # Areg01_aQ_a1_a) # !SR_a0_a_acombout & !SR_a1_a_acombout & B1_Q[1]
-- Areg00_aQ_a1_a = DFFEAS(mux2_aout_put_a1_a_a214, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a1_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BA98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a1_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => SR_a1_a_acombout,
	datac => d_input_a1_a_acombout,
	datad => Areg01_aQ_a1_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a1_a_aI_modesel,
	combout => mux2_aout_put_a1_a_a214,
	regout => Areg00_aQ_a1_a);

Areg01_aQ_a1_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a1_a_a214 = DR_a0_a_acombout & (B2_Q[1] # DR_a1_a_acombout) # !DR_a0_a_acombout & Areg00_aQ_a1_a & (!DR_a1_a_acombout)
-- Areg01_aQ_a1_a = DFFEAS(mux1_aout_put_a1_a_a214, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a1_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "AAE4",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a1_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg00_aQ_a1_a,
	datac => d_input_a1_a_acombout,
	datad => DR_a1_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a1_a_aI_modesel,
	combout => mux1_aout_put_a1_a_a214,
	regout => Areg01_aQ_a1_a);

Areg02_aQ_a1_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a1_a_a215 = DR_a1_a_acombout & (mux1_aout_put_a1_a_a214 & Areg03_aQ_a1_a # !mux1_aout_put_a1_a_a214 & (B3_Q[1])) # !DR_a1_a_acombout & (mux1_aout_put_a1_a_a214)
-- Areg02_aQ_a1_a = DFFEAS(mux1_aout_put_a1_a_a215, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a1_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BBC0",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a1_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg03_aQ_a1_a,
	datab => DR_a1_a_acombout,
	datac => d_input_a1_a_acombout,
	datad => mux1_aout_put_a1_a_a214,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a1_a_aI_modesel,
	combout => mux1_aout_put_a1_a_a215,
	regout => Areg02_aQ_a1_a);

Areg03_aQ_a1_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a1_a_a215 = mux2_aout_put_a1_a_a214 & (B4_Q[1] # !SR_a1_a_acombout) # !mux2_aout_put_a1_a_a214 & SR_a1_a_acombout & (Areg02_aQ_a1_a)
-- Areg03_aQ_a1_a = DFFEAS(mux2_aout_put_a1_a_a215, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a1_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "E6A2",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a1_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => mux2_aout_put_a1_a_a214,
	datab => SR_a1_a_acombout,
	datac => d_input_a1_a_acombout,
	datad => Areg02_aQ_a1_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a1_a_aI_modesel,
	combout => mux2_aout_put_a1_a_a215,
	regout => Areg03_aQ_a1_a);

d_input_a2_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a2_a_aI_modesel,
	combout => d_input_a2_a_acombout,
	padio => ww_d_input(2));

Areg02_aQ_a2_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a2_a_a216 = DR_a0_a_acombout & DR_a1_a_acombout # !DR_a0_a_acombout & (DR_a1_a_acombout & B3_Q[2] # !DR_a1_a_acombout & (Areg00_aQ_a2_a))
-- Areg02_aQ_a2_a = DFFEAS(mux1_aout_put_a2_a_a216, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a2_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "D9C8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a2_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a2_a_acombout,
	datad => Areg00_aQ_a2_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a2_a_aI_modesel,
	combout => mux1_aout_put_a2_a_a216,
	regout => Areg02_aQ_a2_a);

Areg00_aQ_a2_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a2_a_a216 = SR_a0_a_acombout & SR_a1_a_acombout # !SR_a0_a_acombout & (SR_a1_a_acombout & (Areg02_aQ_a2_a) # !SR_a1_a_acombout & B1_Q[2])
-- Areg00_aQ_a2_a = DFFEAS(mux2_aout_put_a2_a_a216, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a2_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DC98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a2_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => SR_a1_a_acombout,
	datac => d_input_a2_a_acombout,
	datad => Areg02_aQ_a2_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a2_a_aI_modesel,
	combout => mux2_aout_put_a2_a_a216,
	regout => Areg00_aQ_a2_a);

Areg01_aQ_a2_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a2_a_a217 = DR_a0_a_acombout & (mux1_aout_put_a2_a_a216 & (Areg03_aQ_a2_a) # !mux1_aout_put_a2_a_a216 & B2_Q[2]) # !DR_a0_a_acombout & mux1_aout_put_a2_a_a216
-- Areg01_aQ_a2_a = DFFEAS(mux1_aout_put_a2_a_a217, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a2_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EC64",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a2_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => mux1_aout_put_a2_a_a216,
	datac => d_input_a2_a_acombout,
	datad => Areg03_aQ_a2_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a2_a_aI_modesel,
	combout => mux1_aout_put_a2_a_a217,
	regout => Areg01_aQ_a2_a);

Areg03_aQ_a2_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a2_a_a217 = SR_a0_a_acombout & (mux2_aout_put_a2_a_a216 & (B4_Q[2]) # !mux2_aout_put_a2_a_a216 & Areg01_aQ_a2_a) # !SR_a0_a_acombout & (mux2_aout_put_a2_a_a216)
-- Areg03_aQ_a2_a = DFFEAS(mux2_aout_put_a2_a_a217, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a2_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a2_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => Areg01_aQ_a2_a,
	datac => d_input_a2_a_acombout,
	datad => mux2_aout_put_a2_a_a216,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a2_a_aI_modesel,
	combout => mux2_aout_put_a2_a_a217,
	regout => Areg03_aQ_a2_a);

d_input_a3_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a3_a_aI_modesel,
	combout => d_input_a3_a_acombout,
	padio => ww_d_input(3));

Areg01_aQ_a3_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a3_a_a218 = DR_a0_a_acombout & (B2_Q[3] # DR_a1_a_acombout) # !DR_a0_a_acombout & Areg00_aQ_a3_a & (!DR_a1_a_acombout)
-- Areg01_aQ_a3_a = DFFEAS(mux1_aout_put_a3_a_a218, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a3_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "AAE4",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a3_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg00_aQ_a3_a,
	datac => d_input_a3_a_acombout,
	datad => DR_a1_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a3_a_aI_modesel,
	combout => mux1_aout_put_a3_a_a218,
	regout => Areg01_aQ_a3_a);

Areg00_aQ_a3_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a3_a_a218 = SR_a0_a_acombout & (SR_a1_a_acombout # Areg01_aQ_a3_a) # !SR_a0_a_acombout & !SR_a1_a_acombout & B1_Q[3]
-- Areg00_aQ_a3_a = DFFEAS(mux2_aout_put_a3_a_a218, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a3_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BA98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a3_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => SR_a1_a_acombout,
	datac => d_input_a3_a_acombout,
	datad => Areg01_aQ_a3_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a3_a_aI_modesel,
	combout => mux2_aout_put_a3_a_a218,
	regout => Areg00_aQ_a3_a);

Areg02_aQ_a3_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a3_a_a219 = mux1_aout_put_a3_a_a218 & (Areg03_aQ_a3_a # !DR_a1_a_acombout) # !mux1_aout_put_a3_a_a218 & DR_a1_a_acombout & B3_Q[3]
-- Areg02_aQ_a3_a = DFFEAS(mux1_aout_put_a3_a_a219, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a3_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EA62",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a3_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => mux1_aout_put_a3_a_a218,
	datab => DR_a1_a_acombout,
	datac => d_input_a3_a_acombout,
	datad => Areg03_aQ_a3_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a3_a_aI_modesel,
	combout => mux1_aout_put_a3_a_a219,
	regout => Areg02_aQ_a3_a);

Areg03_aQ_a3_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a3_a_a219 = SR_a1_a_acombout & (mux2_aout_put_a3_a_a218 & (B4_Q[3]) # !mux2_aout_put_a3_a_a218 & Areg02_aQ_a3_a) # !SR_a1_a_acombout & (mux2_aout_put_a3_a_a218)
-- Areg03_aQ_a3_a = DFFEAS(mux2_aout_put_a3_a_a219, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a3_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F388",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a3_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg02_aQ_a3_a,
	datab => SR_a1_a_acombout,
	datac => d_input_a3_a_acombout,
	datad => mux2_aout_put_a3_a_a218,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a3_a_aI_modesel,
	combout => mux2_aout_put_a3_a_a219,
	regout => Areg03_aQ_a3_a);

d_input_a4_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a4_a_aI_modesel,
	combout => d_input_a4_a_acombout,
	padio => ww_d_input(4));

Areg02_aQ_a4_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a4_a_a220 = DR_a0_a_acombout & DR_a1_a_acombout # !DR_a0_a_acombout & (DR_a1_a_acombout & B3_Q[4] # !DR_a1_a_acombout & (Areg00_aQ_a4_a))
-- Areg02_aQ_a4_a = DFFEAS(mux1_aout_put_a4_a_a220, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a4_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "D9C8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a4_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a4_a_acombout,
	datad => Areg00_aQ_a4_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a4_a_aI_modesel,
	combout => mux1_aout_put_a4_a_a220,
	regout => Areg02_aQ_a4_a);

Areg00_aQ_a4_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a4_a_a220 = SR_a0_a_acombout & (SR_a1_a_acombout) # !SR_a0_a_acombout & (SR_a1_a_acombout & Areg02_aQ_a4_a # !SR_a1_a_acombout & (B1_Q[4]))
-- Areg00_aQ_a4_a = DFFEAS(mux2_aout_put_a4_a_a220, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a4_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EE50",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a4_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => Areg02_aQ_a4_a,
	datac => d_input_a4_a_acombout,
	datad => SR_a1_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a4_a_aI_modesel,
	combout => mux2_aout_put_a4_a_a220,
	regout => Areg00_aQ_a4_a);

Areg01_aQ_a4_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a4_a_a221 = DR_a0_a_acombout & (mux1_aout_put_a4_a_a220 & (Areg03_aQ_a4_a) # !mux1_aout_put_a4_a_a220 & B2_Q[4]) # !DR_a0_a_acombout & mux1_aout_put_a4_a_a220
-- Areg01_aQ_a4_a = DFFEAS(mux1_aout_put_a4_a_a221, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a4_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EC64",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a4_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => mux1_aout_put_a4_a_a220,
	datac => d_input_a4_a_acombout,
	datad => Areg03_aQ_a4_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a4_a_aI_modesel,
	combout => mux1_aout_put_a4_a_a221,
	regout => Areg01_aQ_a4_a);

Areg03_aQ_a4_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a4_a_a221 = SR_a0_a_acombout & (mux2_aout_put_a4_a_a220 & (B4_Q[4]) # !mux2_aout_put_a4_a_a220 & Areg01_aQ_a4_a) # !SR_a0_a_acombout & (mux2_aout_put_a4_a_a220)
-- Areg03_aQ_a4_a = DFFEAS(mux2_aout_put_a4_a_a221, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a4_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a4_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => Areg01_aQ_a4_a,
	datac => d_input_a4_a_acombout,
	datad => mux2_aout_put_a4_a_a220,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a4_a_aI_modesel,
	combout => mux2_aout_put_a4_a_a221,
	regout => Areg03_aQ_a4_a);

d_input_a5_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a5_a_aI_modesel,
	combout => d_input_a5_a_acombout,
	padio => ww_d_input(5));

Areg01_aQ_a5_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a5_a_a222 = DR_a0_a_acombout & (B2_Q[5] # DR_a1_a_acombout) # !DR_a0_a_acombout & Areg00_aQ_a5_a & (!DR_a1_a_acombout)
-- Areg01_aQ_a5_a = DFFEAS(mux1_aout_put_a5_a_a222, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a5_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "AAE4",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a5_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg00_aQ_a5_a,
	datac => d_input_a5_a_acombout,
	datad => DR_a1_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a5_a_aI_modesel,
	combout => mux1_aout_put_a5_a_a222,
	regout => Areg01_aQ_a5_a);

Areg00_aQ_a5_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a5_a_a222 = SR_a0_a_acombout & (SR_a1_a_acombout # Areg01_aQ_a5_a) # !SR_a0_a_acombout & !SR_a1_a_acombout & B1_Q[5]
-- Areg00_aQ_a5_a = DFFEAS(mux2_aout_put_a5_a_a222, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a5_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BA98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a5_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => SR_a1_a_acombout,
	datac => d_input_a5_a_acombout,
	datad => Areg01_aQ_a5_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a5_a_aI_modesel,
	combout => mux2_aout_put_a5_a_a222,
	regout => Areg00_aQ_a5_a);

Areg02_aQ_a5_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a5_a_a223 = DR_a1_a_acombout & (mux1_aout_put_a5_a_a222 & Areg03_aQ_a5_a # !mux1_aout_put_a5_a_a222 & (B3_Q[5])) # !DR_a1_a_acombout & (mux1_aout_put_a5_a_a222)
-- Areg02_aQ_a5_a = DFFEAS(mux1_aout_put_a5_a_a223, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a5_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BBC0",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a5_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg03_aQ_a5_a,
	datab => DR_a1_a_acombout,
	datac => d_input_a5_a_acombout,
	datad => mux1_aout_put_a5_a_a222,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a5_a_aI_modesel,
	combout => mux1_aout_put_a5_a_a223,
	regout => Areg02_aQ_a5_a);

Areg03_aQ_a5_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a5_a_a223 = SR_a1_a_acombout & (mux2_aout_put_a5_a_a222 & (B4_Q[5]) # !mux2_aout_put_a5_a_a222 & Areg02_aQ_a5_a) # !SR_a1_a_acombout & (mux2_aout_put_a5_a_a222)
-- Areg03_aQ_a5_a = DFFEAS(mux2_aout_put_a5_a_a223, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a5_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a5_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => Areg02_aQ_a5_a,
	datac => d_input_a5_a_acombout,
	datad => mux2_aout_put_a5_a_a222,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a5_a_aI_modesel,
	combout => mux2_aout_put_a5_a_a223,
	regout => Areg03_aQ_a5_a);

d_input_a6_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a6_a_aI_modesel,
	combout => d_input_a6_a_acombout,
	padio => ww_d_input(6));

Areg02_aQ_a6_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a6_a_a224 = DR_a0_a_acombout & DR_a1_a_acombout # !DR_a0_a_acombout & (DR_a1_a_acombout & B3_Q[6] # !DR_a1_a_acombout & (Areg00_aQ_a6_a))
-- Areg02_aQ_a6_a = DFFEAS(mux1_aout_put_a6_a_a224, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a6_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "D9C8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a6_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a6_a_acombout,
	datad => Areg00_aQ_a6_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a6_a_aI_modesel,
	combout => mux1_aout_put_a6_a_a224,
	regout => Areg02_aQ_a6_a);

Areg00_aQ_a6_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a6_a_a224 = SR_a1_a_acombout & (SR_a0_a_acombout # Areg02_aQ_a6_a) # !SR_a1_a_acombout & !SR_a0_a_acombout & B1_Q[6]
-- Areg00_aQ_a6_a = DFFEAS(mux2_aout_put_a6_a_a224, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a6_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BA98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a6_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a6_a_acombout,
	datad => Areg02_aQ_a6_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a6_a_aI_modesel,
	combout => mux2_aout_put_a6_a_a224,
	regout => Areg00_aQ_a6_a);

Areg01_aQ_a6_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a6_a_a225 = mux1_aout_put_a6_a_a224 & (Areg03_aQ_a6_a # !DR_a0_a_acombout) # !mux1_aout_put_a6_a_a224 & (B2_Q[6] & DR_a0_a_acombout)
-- Areg01_aQ_a6_a = DFFEAS(mux1_aout_put_a6_a_a225, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a6_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "B8CC",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a6_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg03_aQ_a6_a,
	datab => mux1_aout_put_a6_a_a224,
	datac => d_input_a6_a_acombout,
	datad => DR_a0_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a6_a_aI_modesel,
	combout => mux1_aout_put_a6_a_a225,
	regout => Areg01_aQ_a6_a);

Areg03_aQ_a6_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a6_a_a225 = SR_a0_a_acombout & (mux2_aout_put_a6_a_a224 & (B4_Q[6]) # !mux2_aout_put_a6_a_a224 & Areg01_aQ_a6_a) # !SR_a0_a_acombout & (mux2_aout_put_a6_a_a224)
-- Areg03_aQ_a6_a = DFFEAS(mux2_aout_put_a6_a_a225, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a6_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a6_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => Areg01_aQ_a6_a,
	datac => d_input_a6_a_acombout,
	datad => mux2_aout_put_a6_a_a224,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a6_a_aI_modesel,
	combout => mux2_aout_put_a6_a_a225,
	regout => Areg03_aQ_a6_a);

d_input_a7_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a7_a_aI_modesel,
	combout => d_input_a7_a_acombout,
	padio => ww_d_input(7));

Areg01_aQ_a7_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a7_a_a226 = DR_a0_a_acombout & (B2_Q[7] # DR_a1_a_acombout) # !DR_a0_a_acombout & Areg00_aQ_a7_a & (!DR_a1_a_acombout)
-- Areg01_aQ_a7_a = DFFEAS(mux1_aout_put_a7_a_a226, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a7_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "AAE4",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a7_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg00_aQ_a7_a,
	datac => d_input_a7_a_acombout,
	datad => DR_a1_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a7_a_aI_modesel,
	combout => mux1_aout_put_a7_a_a226,
	regout => Areg01_aQ_a7_a);

Areg00_aQ_a7_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a7_a_a226 = SR_a1_a_acombout & SR_a0_a_acombout # !SR_a1_a_acombout & (SR_a0_a_acombout & (Areg01_aQ_a7_a) # !SR_a0_a_acombout & B1_Q[7])
-- Areg00_aQ_a7_a = DFFEAS(mux2_aout_put_a7_a_a226, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a7_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DC98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a7_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a7_a_acombout,
	datad => Areg01_aQ_a7_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a7_a_aI_modesel,
	combout => mux2_aout_put_a7_a_a226,
	regout => Areg00_aQ_a7_a);

Areg02_aQ_a7_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a7_a_a227 = DR_a1_a_acombout & (mux1_aout_put_a7_a_a226 & (Areg03_aQ_a7_a) # !mux1_aout_put_a7_a_a226 & B3_Q[7]) # !DR_a1_a_acombout & mux1_aout_put_a7_a_a226
-- Areg02_aQ_a7_a = DFFEAS(mux1_aout_put_a7_a_a227, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a7_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EC64",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a7_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a1_a_acombout,
	datab => mux1_aout_put_a7_a_a226,
	datac => d_input_a7_a_acombout,
	datad => Areg03_aQ_a7_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a7_a_aI_modesel,
	combout => mux1_aout_put_a7_a_a227,
	regout => Areg02_aQ_a7_a);

Areg03_aQ_a7_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a7_a_a227 = SR_a1_a_acombout & (mux2_aout_put_a7_a_a226 & B4_Q[7] # !mux2_aout_put_a7_a_a226 & (Areg02_aQ_a7_a)) # !SR_a1_a_acombout & mux2_aout_put_a7_a_a226
-- Areg03_aQ_a7_a = DFFEAS(mux2_aout_put_a7_a_a227, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a7_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "E6C4",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a7_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => mux2_aout_put_a7_a_a226,
	datac => d_input_a7_a_acombout,
	datad => Areg02_aQ_a7_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a7_a_aI_modesel,
	combout => mux2_aout_put_a7_a_a227,
	regout => Areg03_aQ_a7_a);

d_input_a8_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a8_a_aI_modesel,
	combout => d_input_a8_a_acombout,
	padio => ww_d_input(8));

Areg02_aQ_a8_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a8_a_a228 = DR_a0_a_acombout & DR_a1_a_acombout # !DR_a0_a_acombout & (DR_a1_a_acombout & B3_Q[8] # !DR_a1_a_acombout & (Areg00_aQ_a8_a))
-- Areg02_aQ_a8_a = DFFEAS(mux1_aout_put_a8_a_a228, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a8_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "D9C8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a8_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a8_a_acombout,
	datad => Areg00_aQ_a8_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a8_a_aI_modesel,
	combout => mux1_aout_put_a8_a_a228,
	regout => Areg02_aQ_a8_a);

Areg00_aQ_a8_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a8_a_a228 = SR_a1_a_acombout & (SR_a0_a_acombout # Areg02_aQ_a8_a) # !SR_a1_a_acombout & !SR_a0_a_acombout & B1_Q[8]
-- Areg00_aQ_a8_a = DFFEAS(mux2_aout_put_a8_a_a228, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a8_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BA98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a8_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a8_a_acombout,
	datad => Areg02_aQ_a8_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a8_a_aI_modesel,
	combout => mux2_aout_put_a8_a_a228,
	regout => Areg00_aQ_a8_a);

Areg01_aQ_a8_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a8_a_a229 = mux1_aout_put_a8_a_a228 & (Areg03_aQ_a8_a # !DR_a0_a_acombout) # !mux1_aout_put_a8_a_a228 & (B2_Q[8] & DR_a0_a_acombout)
-- Areg01_aQ_a8_a = DFFEAS(mux1_aout_put_a8_a_a229, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a8_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "D8AA",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a8_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => mux1_aout_put_a8_a_a228,
	datab => Areg03_aQ_a8_a,
	datac => d_input_a8_a_acombout,
	datad => DR_a0_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a8_a_aI_modesel,
	combout => mux1_aout_put_a8_a_a229,
	regout => Areg01_aQ_a8_a);

Areg03_aQ_a8_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a8_a_a229 = SR_a0_a_acombout & (mux2_aout_put_a8_a_a228 & (B4_Q[8]) # !mux2_aout_put_a8_a_a228 & Areg01_aQ_a8_a) # !SR_a0_a_acombout & (mux2_aout_put_a8_a_a228)
-- Areg03_aQ_a8_a = DFFEAS(mux2_aout_put_a8_a_a229, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a8_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a8_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => Areg01_aQ_a8_a,
	datac => d_input_a8_a_acombout,
	datad => mux2_aout_put_a8_a_a228,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a8_a_aI_modesel,
	combout => mux2_aout_put_a8_a_a229,
	regout => Areg03_aQ_a8_a);

d_input_a9_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a9_a_aI_modesel,
	combout => d_input_a9_a_acombout,
	padio => ww_d_input(9));

Areg01_aQ_a9_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a9_a_a230 = DR_a0_a_acombout & (B2_Q[9] # DR_a1_a_acombout) # !DR_a0_a_acombout & Areg00_aQ_a9_a & (!DR_a1_a_acombout)
-- Areg01_aQ_a9_a = DFFEAS(mux1_aout_put_a9_a_a230, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a9_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "AAE4",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a9_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg00_aQ_a9_a,
	datac => d_input_a9_a_acombout,
	datad => DR_a1_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a9_a_aI_modesel,
	combout => mux1_aout_put_a9_a_a230,
	regout => Areg01_aQ_a9_a);

Areg00_aQ_a9_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a9_a_a230 = SR_a1_a_acombout & SR_a0_a_acombout # !SR_a1_a_acombout & (SR_a0_a_acombout & (Areg01_aQ_a9_a) # !SR_a0_a_acombout & B1_Q[9])
-- Areg00_aQ_a9_a = DFFEAS(mux2_aout_put_a9_a_a230, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a9_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DC98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a9_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a9_a_acombout,
	datad => Areg01_aQ_a9_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a9_a_aI_modesel,
	combout => mux2_aout_put_a9_a_a230,
	regout => Areg00_aQ_a9_a);

Areg02_aQ_a9_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a9_a_a231 = DR_a1_a_acombout & (mux1_aout_put_a9_a_a230 & Areg03_aQ_a9_a # !mux1_aout_put_a9_a_a230 & (B3_Q[9])) # !DR_a1_a_acombout & (mux1_aout_put_a9_a_a230)
-- Areg02_aQ_a9_a = DFFEAS(mux1_aout_put_a9_a_a231, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a9_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BBC0",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a9_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg03_aQ_a9_a,
	datab => DR_a1_a_acombout,
	datac => d_input_a9_a_acombout,
	datad => mux1_aout_put_a9_a_a230,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a9_a_aI_modesel,
	combout => mux1_aout_put_a9_a_a231,
	regout => Areg02_aQ_a9_a);

Areg03_aQ_a9_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a9_a_a231 = mux2_aout_put_a9_a_a230 & (B4_Q[9] # !SR_a1_a_acombout) # !mux2_aout_put_a9_a_a230 & Areg02_aQ_a9_a & (SR_a1_a_acombout)
-- Areg03_aQ_a9_a = DFFEAS(mux2_aout_put_a9_a_a231, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a9_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "E2CC",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a9_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg02_aQ_a9_a,
	datab => mux2_aout_put_a9_a_a230,
	datac => d_input_a9_a_acombout,
	datad => SR_a1_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a9_a_aI_modesel,
	combout => mux2_aout_put_a9_a_a231,
	regout => Areg03_aQ_a9_a);

d_input_a10_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a10_a_aI_modesel,
	combout => d_input_a10_a_acombout,
	padio => ww_d_input(10));

Areg02_aQ_a10_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a10_a_a232 = DR_a0_a_acombout & DR_a1_a_acombout # !DR_a0_a_acombout & (DR_a1_a_acombout & B3_Q[10] # !DR_a1_a_acombout & (Areg00_aQ_a10_a))
-- Areg02_aQ_a10_a = DFFEAS(mux1_aout_put_a10_a_a232, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a10_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "D9C8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a10_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a10_a_acombout,
	datad => Areg00_aQ_a10_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a10_a_aI_modesel,
	combout => mux1_aout_put_a10_a_a232,
	regout => Areg02_aQ_a10_a);

Areg00_aQ_a10_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a10_a_a232 = SR_a1_a_acombout & (Areg02_aQ_a10_a # SR_a0_a_acombout) # !SR_a1_a_acombout & (B1_Q[10] & !SR_a0_a_acombout)
-- Areg00_aQ_a10_a = DFFEAS(mux2_aout_put_a10_a_a232, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a10_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "AAD8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a10_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => Areg02_aQ_a10_a,
	datac => d_input_a10_a_acombout,
	datad => SR_a0_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a10_a_aI_modesel,
	combout => mux2_aout_put_a10_a_a232,
	regout => Areg00_aQ_a10_a);

Areg01_aQ_a10_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a10_a_a233 = DR_a0_a_acombout & (mux1_aout_put_a10_a_a232 & (Areg03_aQ_a10_a) # !mux1_aout_put_a10_a_a232 & B2_Q[10]) # !DR_a0_a_acombout & mux1_aout_put_a10_a_a232
-- Areg01_aQ_a10_a = DFFEAS(mux1_aout_put_a10_a_a233, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a10_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EC64",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a10_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => mux1_aout_put_a10_a_a232,
	datac => d_input_a10_a_acombout,
	datad => Areg03_aQ_a10_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a10_a_aI_modesel,
	combout => mux1_aout_put_a10_a_a233,
	regout => Areg01_aQ_a10_a);

Areg03_aQ_a10_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a10_a_a233 = SR_a0_a_acombout & (mux2_aout_put_a10_a_a232 & (B4_Q[10]) # !mux2_aout_put_a10_a_a232 & Areg01_aQ_a10_a) # !SR_a0_a_acombout & (mux2_aout_put_a10_a_a232)
-- Areg03_aQ_a10_a = DFFEAS(mux2_aout_put_a10_a_a233, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a10_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a10_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => Areg01_aQ_a10_a,
	datac => d_input_a10_a_acombout,
	datad => mux2_aout_put_a10_a_a232,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a10_a_aI_modesel,
	combout => mux2_aout_put_a10_a_a233,
	regout => Areg03_aQ_a10_a);

d_input_a11_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a11_a_aI_modesel,
	combout => d_input_a11_a_acombout,
	padio => ww_d_input(11));

Areg01_aQ_a11_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a11_a_a234 = DR_a0_a_acombout & (DR_a1_a_acombout # B2_Q[11]) # !DR_a0_a_acombout & !DR_a1_a_acombout & (Areg00_aQ_a11_a)
-- Areg01_aQ_a11_a = DFFEAS(mux1_aout_put_a11_a_a234, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a11_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "B9A8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a11_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a11_a_acombout,
	datad => Areg00_aQ_a11_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a11_a_aI_modesel,
	combout => mux1_aout_put_a11_a_a234,
	regout => Areg01_aQ_a11_a);

Areg00_aQ_a11_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a11_a_a234 = SR_a1_a_acombout & SR_a0_a_acombout # !SR_a1_a_acombout & (SR_a0_a_acombout & (Areg01_aQ_a11_a) # !SR_a0_a_acombout & B1_Q[11])
-- Areg00_aQ_a11_a = DFFEAS(mux2_aout_put_a11_a_a234, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a11_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DC98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a11_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a11_a_acombout,
	datad => Areg01_aQ_a11_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a11_a_aI_modesel,
	combout => mux2_aout_put_a11_a_a234,
	regout => Areg00_aQ_a11_a);

Areg02_aQ_a11_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a11_a_a235 = mux1_aout_put_a11_a_a234 & (Areg03_aQ_a11_a # !DR_a1_a_acombout) # !mux1_aout_put_a11_a_a234 & DR_a1_a_acombout & B3_Q[11]
-- Areg02_aQ_a11_a = DFFEAS(mux1_aout_put_a11_a_a235, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a11_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EA62",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a11_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => mux1_aout_put_a11_a_a234,
	datab => DR_a1_a_acombout,
	datac => d_input_a11_a_acombout,
	datad => Areg03_aQ_a11_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a11_a_aI_modesel,
	combout => mux1_aout_put_a11_a_a235,
	regout => Areg02_aQ_a11_a);

Areg03_aQ_a11_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a11_a_a235 = SR_a1_a_acombout & (mux2_aout_put_a11_a_a234 & B4_Q[11] # !mux2_aout_put_a11_a_a234 & (Areg02_aQ_a11_a)) # !SR_a1_a_acombout & mux2_aout_put_a11_a_a234
-- Areg03_aQ_a11_a = DFFEAS(mux2_aout_put_a11_a_a235, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a11_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "E6C4",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a11_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => mux2_aout_put_a11_a_a234,
	datac => d_input_a11_a_acombout,
	datad => Areg02_aQ_a11_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a11_a_aI_modesel,
	combout => mux2_aout_put_a11_a_a235,
	regout => Areg03_aQ_a11_a);

d_input_a12_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a12_a_aI_modesel,
	combout => d_input_a12_a_acombout,
	padio => ww_d_input(12));

Areg02_aQ_a12_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a12_a_a236 = DR_a0_a_acombout & DR_a1_a_acombout # !DR_a0_a_acombout & (DR_a1_a_acombout & B3_Q[12] # !DR_a1_a_acombout & (Areg00_aQ_a12_a))
-- Areg02_aQ_a12_a = DFFEAS(mux1_aout_put_a12_a_a236, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a12_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "D9C8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a12_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a12_a_acombout,
	datad => Areg00_aQ_a12_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a12_a_aI_modesel,
	combout => mux1_aout_put_a12_a_a236,
	regout => Areg02_aQ_a12_a);

Areg00_aQ_a12_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a12_a_a236 = SR_a1_a_acombout & (SR_a0_a_acombout # Areg02_aQ_a12_a) # !SR_a1_a_acombout & !SR_a0_a_acombout & B1_Q[12]
-- Areg00_aQ_a12_a = DFFEAS(mux2_aout_put_a12_a_a236, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a12_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BA98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a12_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a12_a_acombout,
	datad => Areg02_aQ_a12_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a12_a_aI_modesel,
	combout => mux2_aout_put_a12_a_a236,
	regout => Areg00_aQ_a12_a);

Areg01_aQ_a12_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a12_a_a237 = DR_a0_a_acombout & (mux1_aout_put_a12_a_a236 & Areg03_aQ_a12_a # !mux1_aout_put_a12_a_a236 & (B2_Q[12])) # !DR_a0_a_acombout & (mux1_aout_put_a12_a_a236)
-- Areg01_aQ_a12_a = DFFEAS(mux1_aout_put_a12_a_a237, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a12_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DDA0",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a12_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg03_aQ_a12_a,
	datac => d_input_a12_a_acombout,
	datad => mux1_aout_put_a12_a_a236,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a12_a_aI_modesel,
	combout => mux1_aout_put_a12_a_a237,
	regout => Areg01_aQ_a12_a);

Areg03_aQ_a12_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a12_a_a237 = mux2_aout_put_a12_a_a236 & (B4_Q[12] # !SR_a0_a_acombout) # !mux2_aout_put_a12_a_a236 & Areg01_aQ_a12_a & (SR_a0_a_acombout)
-- Areg03_aQ_a12_a = DFFEAS(mux2_aout_put_a12_a_a237, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a12_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "E2CC",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a12_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg01_aQ_a12_a,
	datab => mux2_aout_put_a12_a_a236,
	datac => d_input_a12_a_acombout,
	datad => SR_a0_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a12_a_aI_modesel,
	combout => mux2_aout_put_a12_a_a237,
	regout => Areg03_aQ_a12_a);

d_input_a13_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a13_a_aI_modesel,
	combout => d_input_a13_a_acombout,
	padio => ww_d_input(13));

Areg01_aQ_a13_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a13_a_a238 = DR_a1_a_acombout & (DR_a0_a_acombout) # !DR_a1_a_acombout & (DR_a0_a_acombout & (B2_Q[13]) # !DR_a0_a_acombout & Areg00_aQ_a13_a)
-- Areg01_aQ_a13_a = DFFEAS(mux1_aout_put_a13_a_a238, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a13_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "FC22",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a13_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg00_aQ_a13_a,
	datab => DR_a1_a_acombout,
	datac => d_input_a13_a_acombout,
	datad => DR_a0_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a13_a_aI_modesel,
	combout => mux1_aout_put_a13_a_a238,
	regout => Areg01_aQ_a13_a);

Areg00_aQ_a13_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a13_a_a238 = SR_a1_a_acombout & SR_a0_a_acombout # !SR_a1_a_acombout & (SR_a0_a_acombout & (Areg01_aQ_a13_a) # !SR_a0_a_acombout & B1_Q[13])
-- Areg00_aQ_a13_a = DFFEAS(mux2_aout_put_a13_a_a238, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a13_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DC98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a13_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a13_a_acombout,
	datad => Areg01_aQ_a13_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a13_a_aI_modesel,
	combout => mux2_aout_put_a13_a_a238,
	regout => Areg00_aQ_a13_a);

Areg02_aQ_a13_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a13_a_a239 = DR_a1_a_acombout & (mux1_aout_put_a13_a_a238 & (Areg03_aQ_a13_a) # !mux1_aout_put_a13_a_a238 & B3_Q[13]) # !DR_a1_a_acombout & mux1_aout_put_a13_a_a238
-- Areg02_aQ_a13_a = DFFEAS(mux1_aout_put_a13_a_a239, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a13_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EC64",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a13_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a1_a_acombout,
	datab => mux1_aout_put_a13_a_a238,
	datac => d_input_a13_a_acombout,
	datad => Areg03_aQ_a13_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a13_a_aI_modesel,
	combout => mux1_aout_put_a13_a_a239,
	regout => Areg02_aQ_a13_a);

Areg03_aQ_a13_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a13_a_a239 = SR_a1_a_acombout & (mux2_aout_put_a13_a_a238 & (B4_Q[13]) # !mux2_aout_put_a13_a_a238 & Areg02_aQ_a13_a) # !SR_a1_a_acombout & (mux2_aout_put_a13_a_a238)
-- Areg03_aQ_a13_a = DFFEAS(mux2_aout_put_a13_a_a239, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a13_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a13_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => Areg02_aQ_a13_a,
	datac => d_input_a13_a_acombout,
	datad => mux2_aout_put_a13_a_a238,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a13_a_aI_modesel,
	combout => mux2_aout_put_a13_a_a239,
	regout => Areg03_aQ_a13_a);

d_input_a14_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a14_a_aI_modesel,
	combout => d_input_a14_a_acombout,
	padio => ww_d_input(14));

Areg02_aQ_a14_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a14_a_a240 = DR_a0_a_acombout & (DR_a1_a_acombout) # !DR_a0_a_acombout & (DR_a1_a_acombout & (B3_Q[14]) # !DR_a1_a_acombout & Areg00_aQ_a14_a)
-- Areg02_aQ_a14_a = DFFEAS(mux1_aout_put_a14_a_a240, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a14_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "FA44",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a14_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg00_aQ_a14_a,
	datac => d_input_a14_a_acombout,
	datad => DR_a1_a_acombout,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a14_a_aI_modesel,
	combout => mux1_aout_put_a14_a_a240,
	regout => Areg02_aQ_a14_a);

Areg00_aQ_a14_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a14_a_a240 = SR_a1_a_acombout & (SR_a0_a_acombout # Areg02_aQ_a14_a) # !SR_a1_a_acombout & !SR_a0_a_acombout & B1_Q[14]
-- Areg00_aQ_a14_a = DFFEAS(mux2_aout_put_a14_a_a240, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a14_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BA98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a14_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a14_a_acombout,
	datad => Areg02_aQ_a14_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a14_a_aI_modesel,
	combout => mux2_aout_put_a14_a_a240,
	regout => Areg00_aQ_a14_a);

Areg01_aQ_a14_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a14_a_a241 = DR_a0_a_acombout & (mux1_aout_put_a14_a_a240 & Areg03_aQ_a14_a # !mux1_aout_put_a14_a_a240 & (B2_Q[14])) # !DR_a0_a_acombout & (mux1_aout_put_a14_a_a240)
-- Areg01_aQ_a14_a = DFFEAS(mux1_aout_put_a14_a_a241, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a14_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DDA0",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a14_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => Areg03_aQ_a14_a,
	datac => d_input_a14_a_acombout,
	datad => mux1_aout_put_a14_a_a240,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a14_a_aI_modesel,
	combout => mux1_aout_put_a14_a_a241,
	regout => Areg01_aQ_a14_a);

Areg03_aQ_a14_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a14_a_a241 = SR_a0_a_acombout & (mux2_aout_put_a14_a_a240 & (B4_Q[14]) # !mux2_aout_put_a14_a_a240 & Areg01_aQ_a14_a) # !SR_a0_a_acombout & (mux2_aout_put_a14_a_a240)
-- Areg03_aQ_a14_a = DFFEAS(mux2_aout_put_a14_a_a241, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a14_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F588",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a14_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a0_a_acombout,
	datab => Areg01_aQ_a14_a,
	datac => d_input_a14_a_acombout,
	datad => mux2_aout_put_a14_a_a240,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a14_a_aI_modesel,
	combout => mux2_aout_put_a14_a_a241,
	regout => Areg03_aQ_a14_a);

d_input_a15_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => d_input_a15_a_aI_modesel,
	combout => d_input_a15_a_acombout,
	padio => ww_d_input(15));

Areg01_aQ_a15_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a15_a_a242 = DR_a0_a_acombout & (DR_a1_a_acombout # B2_Q[15]) # !DR_a0_a_acombout & !DR_a1_a_acombout & (Areg00_aQ_a15_a)
-- Areg01_aQ_a15_a = DFFEAS(mux1_aout_put_a15_a_a242, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg01_aprocess0_a0, d_input_a15_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "B9A8",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg01_aQ_a15_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => DR_a0_a_acombout,
	datab => DR_a1_a_acombout,
	datac => d_input_a15_a_acombout,
	datad => Areg00_aQ_a15_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg01_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg01_aQ_a15_a_aI_modesel,
	combout => mux1_aout_put_a15_a_a242,
	regout => Areg01_aQ_a15_a);

Areg00_aQ_a15_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a15_a_a242 = SR_a1_a_acombout & SR_a0_a_acombout # !SR_a1_a_acombout & (SR_a0_a_acombout & (Areg01_aQ_a15_a) # !SR_a0_a_acombout & B1_Q[15])
-- Areg00_aQ_a15_a = DFFEAS(mux2_aout_put_a15_a_a242, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg00_aprocess0_a0, d_input_a15_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DC98",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg00_aQ_a15_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => SR_a1_a_acombout,
	datab => SR_a0_a_acombout,
	datac => d_input_a15_a_acombout,
	datad => Areg01_aQ_a15_a,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg00_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg00_aQ_a15_a_aI_modesel,
	combout => mux2_aout_put_a15_a_a242,
	regout => Areg00_aQ_a15_a);

Areg02_aQ_a15_a_aI : cyclone_lcell
-- Equation(s):
-- mux1_aout_put_a15_a_a243 = DR_a1_a_acombout & (mux1_aout_put_a15_a_a242 & Areg03_aQ_a15_a # !mux1_aout_put_a15_a_a242 & (B3_Q[15])) # !DR_a1_a_acombout & (mux1_aout_put_a15_a_a242)
-- Areg02_aQ_a15_a = DFFEAS(mux1_aout_put_a15_a_a243, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg02_aprocess0_a0, d_input_a15_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BBC0",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg02_aQ_a15_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg03_aQ_a15_a,
	datab => DR_a1_a_acombout,
	datac => d_input_a15_a_acombout,
	datad => mux1_aout_put_a15_a_a242,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg02_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg02_aQ_a15_a_aI_modesel,
	combout => mux1_aout_put_a15_a_a243,
	regout => Areg02_aQ_a15_a);

Areg03_aQ_a15_a_aI : cyclone_lcell
-- Equation(s):
-- mux2_aout_put_a15_a_a243 = SR_a1_a_acombout & (mux2_aout_put_a15_a_a242 & (B4_Q[15]) # !mux2_aout_put_a15_a_a242 & Areg02_aQ_a15_a) # !SR_a1_a_acombout & (mux2_aout_put_a15_a_a242)
-- Areg03_aQ_a15_a = DFFEAS(mux2_aout_put_a15_a_a243, GLOBAL(clk_acombout), GLOBAL(reset_acombout), , Areg03_aprocess0_a0, d_input_a15_a_acombout, , , VCC)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F388",
--	output_mode => "reg_and_comb")
-- pragma translate_on
PORT MAP (
	pathsel => Areg03_aQ_a15_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clk_acombout,
	dataa => Areg02_aQ_a15_a,
	datab => SR_a1_a_acombout,
	datac => d_input_a15_a_acombout,
	datad => mux2_aout_put_a15_a_a242,
	aclr => ALT_INV_reset_acombout,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => Areg03_aprocess0_a0,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Areg03_aQ_a15_a_aI_modesel,
	combout => mux2_aout_put_a15_a_a243,
	regout => Areg03_aQ_a15_a);

DR_data_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a0_a_a213,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a0_a_aI_modesel,
	padio => ww_DR_data(0));

DR_data_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a1_a_a215,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a1_a_aI_modesel,
	padio => ww_DR_data(1));

DR_data_a2_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a2_a_a217,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a2_a_aI_modesel,
	padio => ww_DR_data(2));

DR_data_a3_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a3_a_a219,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a3_a_aI_modesel,
	padio => ww_DR_data(3));

DR_data_a4_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a4_a_a221,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a4_a_aI_modesel,
	padio => ww_DR_data(4));

DR_data_a5_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a5_a_a223,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a5_a_aI_modesel,
	padio => ww_DR_data(5));

DR_data_a6_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a6_a_a225,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a6_a_aI_modesel,
	padio => ww_DR_data(6));

DR_data_a7_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a7_a_a227,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a7_a_aI_modesel,
	padio => ww_DR_data(7));

DR_data_a8_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a8_a_a229,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a8_a_aI_modesel,
	padio => ww_DR_data(8));

DR_data_a9_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a9_a_a231,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a9_a_aI_modesel,
	padio => ww_DR_data(9));

DR_data_a10_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a10_a_a233,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a10_a_aI_modesel,
	padio => ww_DR_data(10));

DR_data_a11_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a11_a_a235,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a11_a_aI_modesel,
	padio => ww_DR_data(11));

DR_data_a12_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a12_a_a237,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a12_a_aI_modesel,
	padio => ww_DR_data(12));

DR_data_a13_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a13_a_a239,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a13_a_aI_modesel,
	padio => ww_DR_data(13));

DR_data_a14_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a14_a_a241,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a14_a_aI_modesel,
	padio => ww_DR_data(14));

DR_data_a15_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux1_aout_put_a15_a_a243,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => DR_data_a15_a_aI_modesel,
	padio => ww_DR_data(15));

SR_data_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a0_a_a213,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a0_a_aI_modesel,
	padio => ww_SR_data(0));

SR_data_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a1_a_a215,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a1_a_aI_modesel,
	padio => ww_SR_data(1));

SR_data_a2_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a2_a_a217,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a2_a_aI_modesel,
	padio => ww_SR_data(2));

SR_data_a3_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a3_a_a219,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a3_a_aI_modesel,
	padio => ww_SR_data(3));

SR_data_a4_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a4_a_a221,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a4_a_aI_modesel,
	padio => ww_SR_data(4));

SR_data_a5_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a5_a_a223,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a5_a_aI_modesel,
	padio => ww_SR_data(5));

SR_data_a6_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a6_a_a225,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a6_a_aI_modesel,
	padio => ww_SR_data(6));

SR_data_a7_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a7_a_a227,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a7_a_aI_modesel,
	padio => ww_SR_data(7));

SR_data_a8_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a8_a_a229,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a8_a_aI_modesel,
	padio => ww_SR_data(8));

SR_data_a9_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a9_a_a231,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a9_a_aI_modesel,
	padio => ww_SR_data(9));

SR_data_a10_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a10_a_a233,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a10_a_aI_modesel,
	padio => ww_SR_data(10));

SR_data_a11_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a11_a_a235,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a11_a_aI_modesel,
	padio => ww_SR_data(11));

SR_data_a12_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a12_a_a237,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a12_a_aI_modesel,
	padio => ww_SR_data(12));

SR_data_a13_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a13_a_a239,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a13_a_aI_modesel,
	padio => ww_SR_data(13));

SR_data_a14_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a14_a_a241,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a14_a_aI_modesel,
	padio => ww_SR_data(14));

SR_data_a15_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => mux2_aout_put_a15_a_a243,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => SR_data_a15_a_aI_modesel,
	padio => ww_SR_data(15));
END structure;


