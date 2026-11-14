LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity YOR0 is
PORT(
	Y: in std_logic_vector(3 downto 0);
	OP_A: in std_logic;
	B: out std_logic_vector(3 downto 0)
);
end YOR0;

-- Indica se uso o Y para as operações (OP_A = 0) ou não (OP_A = 1)
architecture ARCH_Yor0 of Yor0 is
begin 
	B(0) <= Y(0) and not OP_A;
	B(1) <= Y(1) and not OP_A;
	B(2) <= Y(2) and not OP_A;
	B(3) <= Y(3) and not OP_A;
end ARCH_Yor0;
