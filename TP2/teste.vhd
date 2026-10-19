LIBRARY IEEE;
use IEEE.std_logic_1164.all;

-- Definimos as entradas/saídas do programa
entity TP2 is
  port (
  	A, B : in std_logic;
	F : out std_logic
  );
end TP2;

architecture arch_logic of TP2 is
	signal sA, sB : std_logic;

begin
	sA <= A AND B;
	sB <= not B;
	F <= sA and SB;
end arch_logic;

