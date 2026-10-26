library IEEE;
use IEEE.std_logic_1164.all;

entity PnZ10 is
	port (
		I0, I1, I2, I3, I4, I5, I6, I7, I8, I9 : in std_logic;
		PnI : in  std_logic;
		P   : out std_logic;
		nZ  : out std_logic);
end PnZ10;

architecture structural of PnZ10 is

component PnZ4 is
port (
	I0, I1, I2, I3 : in  std_logic;
	P, nZ: out std_logic);
end component;

component ParImpar is
	port (
		I, PnI : in  std_logic;
		R: out std_logic);
end component;

signal P_a, P_b, P_c   : std_logic;
signal nZ_a, nZ_b, nZ_c : std_logic;

begin
	UA : PnZ4 port map (
		I0 => I2, I1 => I3, 
		I2 => I4, I3 => I5,
		P => P_a, nZ => nZ_a);
		
	UB : PnZ4 port map (
		I0 => I6, I1 => I7, 
		I2 => I8, I3 => I9,
		P => P_b, nZ => nZ_b);
		
	UC : PnZ4 port map (
		I0 => I0, 
		I1 => I1, 
		I2 => P_a, I3 => P_b,
		P => P_c, nZ => nZ_c);

	UR : ParImpar port map (
		I => P_c, 
		PnI => PnI, 
		R => P);

	nZ <= nZ_a or nZ_b or nZ_c;
	
end structural;
