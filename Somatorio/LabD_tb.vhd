LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity LabD_tb is
end LabD_tb;

architecture teste of LabD_tb is
component AU port(
	A, B: in std_logic_vector(3 downto 0);
	CBi: in std_logic;
	OP: in std_logic;
	R: out std_logic_vector(3 downto 0);
	Cout: out std_logic);
end component;

signal CBi: std_logic;
signal A, B : std_logic_vector(3 downto 0);
signal OP : std_logic;
signal R : std_logic_vector(3 downto 0);
signal Cout : std_logic;

begin

U0 : AU port map (CBi => CBi, A => A, B => B, OP => OP, 
		     R => R, Cout);

process
begin
 CBi <= '0';
 A <= "0101"; 
 B <= "1101"; 
 OP <= '0';
 wait for 10 ns;

 CBi <= '0';
 A <= "0101"; 
 B <= "1101"; 
 OP <= '1';
 wait for 10 ns;

 CBi <= '1';
 A <= "0101"; 
 B <= "1101"; 
 OP <= '0';
 wait for 10 ns;

 CBi <= '1';
 A <= "0101"; 
 B <= "1101"; 
 OP <= '1';
 wait for 10 ns;

 CBi <= '0';
 A <= "1101"; 
 B <= "0101"; 
 OP <= '0';
 wait for 10 ns;

 CBi <= '0';
 A <= "1101"; 
 B <= "0101"; 
 OP <= '1';
 wait for 10 ns;

 CBi <= '1';
 A <= "1101"; 
 B <= "0101"; 
 OP <= '0';
 wait for 10 ns;

 CBi <= '1';
 A <= "1101"; 
 B <= "0101"; 
 OP <= '1';
 
 wait;

end process;

end teste;
