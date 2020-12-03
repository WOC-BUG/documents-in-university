--ʵ��6.5
--��ȫ����ʵ�ֵ�8λ�в���λ�ӷ���

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY adder IS
	PORT (
		a    : IN  std_logic_vector(7 DOWNTO 0);
		b    : IN  std_logic_vector(7 DOWNTO 0);
		cin  : IN  std_logic;
		cout : OUT std_logic;
		sum  : OUT std_logic_vector(7 DOWNTO 0)
	);
END adder;

ARCHITECTURE ripple OF adder IS
	COMPONENT fulladder
	PORT(
		a, b, CarryIn : IN	STD_LOGIC;
		Sum, CarryOut : OUT	STD_LOGIC
	);
	END COMPONENT;

	SIGNAL carry : std_logic_vector(7 DOWNTO 1);
BEGIN
f0: fulladder PORT MAP (
		a => a(0), 
		b => b(0),
		CarryIn => cin, 
		Sum => sum(0), 
		CarryOut => carry(1)
	);		

f1: fulladder PORT MAP (
		a => a(1), 
		b => b(1),
		CarryIn => carry(1), 
		Sum => sum(1), 
		CarryOut => carry(2)
	);			

f2: fulladder PORT MAP (
		a => a(2), 
		b => b(2),
		CarryIn => carry(2), 
		Sum => sum(2), 
		CarryOut => carry(3)
	);			
f3: fulladder PORT MAP (
		a => a(3), 
		b => b(3),
		CarryIn => carry(3), 
		Sum => sum(3), 
		CarryOut => carry(4)
	);			
f4: fulladder PORT MAP (
		a => a(4), 
		b => b(4),
		CarryIn => carry(4), 
		Sum => sum(4), 
		CarryOut => carry(5)
	);			

f5: fulladder PORT MAP (
		a => a(5), 
		b => b(5),
		CarryIn => carry(5), 
		Sum => sum(5), 
		CarryOut => carry(6)
	);			
f6: fulladder PORT MAP (
		a => a(6), 
		b => b(6),
		CarryIn => carry(6), 
		Sum => sum(6), 
		CarryOut => carry(7)
	);	
f7: fulladder PORT MAP (
			a => a(7), 
			b => b(7),
			CarryIn => carry(7), 
			Sum => sum(7), 
			CarryOut => cout
		);
END ripple;