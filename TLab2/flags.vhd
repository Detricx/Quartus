LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity FLAGS is
	port( 	
		A3, B3, R3: in std_logic;
		iCBo_AU, iCBo_SU: in std_logic;
		SEL_AU, SEL_SHIFT: in std_logic;
		OP1, OP0: in std_logic;
		R: in std_logic_vector(3 downto 0);
		
		CBo, OVo, Z, GE: out std_logic);
end FLAGS;

-- Conversão de Carry para Borrow através de Cout xor OP
architecture ARCH_FLAGS of FLAGS is
begin
	-- Overflow: Apenas nas operacoes aritmeticas
	OVo <= SEL_AU and (
		(not A3 and not B3 and R3) or (A3 and B3 and not R3));

	-- CBo: Configuração correta dependendo do processo
	CBo <= (SEL_AU and iCBo_AU) or (SEL_SHIFT and iCBo_SU);

	-- Zero: Ativa quando R = 0000
	Z <= not (R(3) or R(2) or R(1) or R(0));

	-- Greater or Equal ( W >= Y + CBi):
	-- Apenas relevante na subtracao (OP = 001)	
	-- CBo_AU = 1: ocorreu Borrow (W é inferior a Y + CBi).
	-- CBo_AU = 0: não ocorreu Borrow (W é maior ou igual a Y + CBi)
	GE <= SEL_AU and not OP1 and OP0 and not iCBo_AU;

end ARCH_FLAGS;