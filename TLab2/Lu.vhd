LIBRARY IEEE;
use IEEE.std_logic_1164.all;

-- Logic Unit (OR e XOR) / Unidade Lógica
entity LU is
	port(
		W, Y: in std_logic_vector(3 downto 0);
		OP: in std_logic; -- OPx(0): 0 = OR, 1 = XOR
		R: out std_logic_vector(3 downto 0));
end LU;

architecture ARCH_LU of LU is
begin
	-- OPx(0) = 0: OR
	-- OPx(0) = 1: XOR
	-- Nota: A sua única diferente é quando ambos os bits são 1
	R <= (W or Y) and not ((W and Y) and (3 downto 0 => OP));
end ARCH_LU;
