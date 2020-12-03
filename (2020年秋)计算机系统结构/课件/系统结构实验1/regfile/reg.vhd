library ieee;
use ieee.std_logic_1164.all;

entity reg is
	port
	(
		clr: 		in	std_logic;
		D:		 	in	std_logic_vector(15 downto 0);
		clock:		in	std_logic;
		write:		in	std_logic;
	    sel:		in	std_logic;
		Q:		 	out	std_logic_vector(15 downto 0)
	);
	
end reg;

architecture behav of reg is
begin
	process(clr,clock)
	begin
		if clr = '0' then
			Q <= x"0000"; 	
		elsif (clock'event and clock = '1') then
			if sel = '1' and write = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end behav;

