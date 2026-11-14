LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity AU is
	port(
		A, B: in std_logic_vector(3 downto 0);
		CBi, OPau: in std_logic;
		R: out std_logic_vector(3 downto 0);
		B3, Cout: out std_logic);
end AU;

architecture ARCH_AU of AU is
component ADDSUB is
	port(
		A, B: in std_logic_vector(3 downto 0);
		Cbi, OP: in std_logic;
		R: out std_logic_vector(3 downto 0);
		B3: out std_logic;
		Cout: out std_logic);
end component;

signal Rx: std_logic_vector(3 downto 0);

begin

	U0 : ADDSUB
	port map(
		A => A,
		B => B,
		B3 => B3,
		Cbi => CBi,
		OP => OPau,
		R => Rx,
		Cout => Cout
	);

	R <= Rx;

end ARCH_AU;