LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity MUX4 is
  port(A : in STD_LOGIC_VECTOR(3 downto 0);
  	B : in STD_LOGIC_VECTOR(3 downto 0);
	S : in std_logic;
	O : out STD_LOGIC_VECTOR(3 downto 0)
  );
end MUX4;

architecture arq_mux4 of mux4 is

begin
O(0) <= (not S and A(0)) or (S and B(0));
O(1) <= (not S and A(1)) or (S and B(1));
O(2) <= (not S and A(2)) or (S and B(2));
O(3) <= (not S and A(3)) or (S and B(3));
end arq_mux4;
