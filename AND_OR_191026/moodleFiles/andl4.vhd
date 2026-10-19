LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity ANDL4 is
  port(A : in STD_LOGIC_VECTOR(3 downto 0);
  	B : in STD_LOGIC_VECTOR(3 downto 0);
	O : out STD_LOGIC_VECTOR(3 downto 0)
  );
end ANDL4;

architecture arq_andl4 of ANDL4 is

begin
O(0) <= A(0) and B(0);
O(1) <= A(1) and B(1);
O(2) <= A(2) and B(2);
O(3) <= A(3) and B(3);
end arq_andl4;
