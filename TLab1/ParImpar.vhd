library IEEE;
use IEEE.std_logic_1164.all;

entity ParImpar is port (
  I: in  std_logic;   	-- parity (1 = odd) of the inputs
  PnI : in  std_logic;  -- 0: P active if odd | 1: P active if even
  R   : out std_logic);
end ParImpar;

architecture logic of ParImpar is
begin
	R <= I xnor PnI;
end logic;
