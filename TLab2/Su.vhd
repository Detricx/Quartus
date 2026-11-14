LIBRARY IEEE;
use IEEE.std_logic_1164.all;

-- Shift Unit / Unidade de Deslocamento
entity SU is
	port(
		W: in std_logic_vector(3 downto 0);
		OP: in std_logic;
		R: out std_logic_vector(3 downto 0);
		COut: out std_logic);
end SU;

architecture ARCH_SU of SU is
begin
	-- LSL e ASR
	-- OPx(0) = 0: LSL - W(3) é o bit que sai para CBo
	-- OPx(0) = 1: ASR - Mantém o bit de sinal W(3)

	R(3) <= (W(2) and not OP) or (W(3) and OP);
	R(2) <= (W(1) and not OP) or (W(3) and OP);
	R(1) <= (W(0) and not OP) or (W(2) and OP);
	R(0) <= W(1) and OP;
	
	COut <= W(3) and not OP;
end ARCH_SU;

