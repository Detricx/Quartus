LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity logic is
  port (
  	A, B : in std_logic;
	F : out std_logic
  );
end logic;

architecture arch_logic of logic is
signal sA, sB : std_logic;

begin
sA <= A AND B;
sB <= not B;
Z <= sA and SB;
end arch_logic;
