LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity ADDSUB is
	port ( 
		A, B: in std_logic_vector(3 downto 0);
		Cbi : in std_logic;
		OP : in std_logic;
		R: out std_logic_vector(3 downto 0);
		Cout: out std_logic;
		B3: out std_logic);
end ADDSUB;

architecture ARCH_ADDSUB of ADDSUB is
component ADDER is
	port ( 
		A, B: in std_logic_vector(3 downto 0);
		C0 : in std_logic;
		S: out std_logic_vector(3 downto 0);
		C4: out std_logic);
end component;

signal Cix: std_logic;
signal Bx : std_logic_vector(3 downto 0);
signal Cx : std_logic;

begin
	A0: ADDER port map (A => A, B=>Bx, C0 => Cix, S=> R, C4 => Cx);
	B3 <= Bx(3);
	Cix <= Cbi xor OP;
	Bx(0) <= B(0) xor OP;
	Bx(1) <= B(1) xor OP;
	Bx(2) <= B(2) xor OP;
	Bx(3) <= B(3) xor OP;
	Cout <= Cx xor OP;
end ARCH_ADDSUB;