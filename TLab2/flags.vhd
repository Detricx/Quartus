LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity FLAGS is
PORT ( 	A3: in std_logic;
		B3: in std_logic;
		R3: in std_logic;
		iCBo: in std_logic;
		OVo: out std_logic;
		CBo: out std_logic);
end FLAGS;

-- Conversão de Carry para Borrow através de Cout xor OP
architecture ARCH_FLAGS of FLAGS is
begin
	OVo <= (not A3 and not B3 and R3) or (A3 and B3 and not R3);
	CBo <= iCBo;
end ARCH_FLAGS;