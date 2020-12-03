--实验6.9——实验CPU：通用寄存器组
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity regfile is
Port (  DR: 		in std_logic_vector(1 downto 0); 
		SR: 		in std_logic_vector(1 downto 0);   
		reset:  	in std_logic;
		DRWr:   	in std_logic;                           
		clk: 		in std_logic;	
		d_input: 	in  std_logic_vector(15 downto 0);
		DR_data:	out std_logic_vector(15 downto 0);        
		SR_data:  	out std_logic_vector(15 downto 0)   
	  );
end regfile;


architecture struct of regfile is
-- components
-- 16 bit Register for register file
component reg
port	(
		clr: 	in	std_logic;
		D: 		in	std_logic_vector(15 downto 0);
		clock: 	in	std_logic;
		write:  in	std_logic;
	    sel: 	in	std_logic;
		Q: 		out std_logic_vector(15 downto 0)
		);
end component;

-- 2 to 4 Decoder
component  decoder_2_to_4 
    port(
		sel: 	in  std_logic_vector(1 downto 0);
		sel00: 	out std_logic;
		sel01: 	out std_logic;
		sel02: 	out std_logic;
		sel03: 	out std_logic
		);
end component;

-- 4 to 1 line multiplexer
component mux_4_to_1
port (
	input0,
	input1,
	input2,
	input3:  in std_logic_vector(15 downto 0);
	sel:	 in std_logic_vector(1 downto 0);
	out_put: out std_logic_vector(15 downto 0));
end component;


signal reg00, reg01, reg02, reg03 
            :std_logic_vector(15 downto 0);
 
signal sel00 ,sel01 ,sel02 ,sel03
            : std_logic;

begin
Areg00: reg port map(
		clr			=>  reset,
		D			=>	d_input ,
		clock		=>	clk ,		
		write		=>	DRWr ,
	    sel			=>	sel00 ,	
		Q			=>  reg00
		);

Areg01: reg port map(
		clr			=>  reset,
		D			=>	d_input ,
		clock		=>	clk ,		
		write		=>	DRWr ,
	    sel			=>	sel01 ,	
		Q			=>  reg01	
		);

Areg02: reg port map(
		clr			=>  reset,
		D			=>  d_input ,
		clock		=>	clk ,		
		write		=>	DRWr ,
	    sel			=>	sel02 ,	
		Q			=>  reg02
		);

Areg03: reg port map(
		clr			=>  reset,
		D			=>	d_input ,
		clock		=>	clk ,		
		write		=>	DRWr ,
	    sel			=>	sel03 ,	
		Q			=>  reg03
		);

-- decoder
des_decoder: decoder_2_to_4 port map
		(
		sel 	=> DR,
    	sel00 	=> sel00 ,
		sel01 	=> sel01 ,
		sel02 	=> sel02 ,
		sel03 	=> sel03 
		);

mux1: mux_4_to_1 PORT MAP(
	Input0 => reg00 ,
    Input1 => reg01 ,
	Input2 => reg02 ,
	Input3 => reg03 ,
	sel => DR ,
	out_put => DR_data
	);
	
mux2: mux_4_to_1 PORT MAP(
	input0 	=> reg00 ,
    input1 	=> reg01 ,
	input2 	=> reg02 ,
	input3 	=> reg03 ,
	sel 	=> SR ,
	out_put => SR_data
	);

end struct;