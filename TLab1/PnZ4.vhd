library IEEE;
use IEEE.std_logic_1164.all;

entity PnZ4 is
	port (
		I0, I1, I2, I3 : in  std_logic;
		P  : out std_logic;   -- '1' if odd number of active inputs
		nZ : out std_logic);  -- '1' if at least one input is active
end PnZ4;

architecture logic of PnZ4 is
begin
	P  <= I0 xor I1 xor I2 xor I3;
	nZ <= I0 or I1 or I2 or I3;
end logic;