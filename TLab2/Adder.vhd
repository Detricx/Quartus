LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity ADDER is
	port ( A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		C0 : in std_logic;
		S: out std_logic_vector(3 downto 0);
		C4: out std_logic);
end ADDER;