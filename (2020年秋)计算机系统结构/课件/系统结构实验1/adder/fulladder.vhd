--实验5 
--1位的加法器

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fulladder IS
	PORT (
		a, b    : IN std_logic;
		CarryIn : IN std_logic;
		CarryOut: OUT std_logic;
		Sum     : OUT std_logic
	);
END fulladder;

ARCHITECTURE fulladder_behav OF fulladder IS
BEGIN
	CarryOut <= (a AND CarryIn) OR (b AND CarryIn) OR (a AND b);
	Sum <= a XOR b XOR CarryIn;
END fulladder_behav;