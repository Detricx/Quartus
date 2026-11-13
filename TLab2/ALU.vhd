LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
    port(
		W, Y: in std_logic_vector(3 downto 0);
		OP: in std_logic_vector(2 downto 0);
		CBi: in std_logic;
		R: out std_logic_vector(3 downto 0);
		CBo, OV, Z, GE: out std_logic);
end ALU;

architecture ARCH_ALU of ALU is
component Yor0 is
	port(
		Y: in std_logic_vector(3 downto 0);
		OP_A: in std_logic;
		B: out std_logic_vector(3 downto 0));
end component;

component AU is
	port(
		A, B: in std_logic_vector(3 downto 0);
		CBi, OPau: in std_logic;
		R: out std_logic_vector(3 downto 0);
		CBo, OV: out std_logic
);
end component;

signal OPx: std_logic_vector(2 downto 0);
signal CBIx: std_logic;

signal Yx: std_logic_vector(3 downto 0);

signal R_AU: std_logic_vector(3 downto 0);
signal R_LOGIC: std_logic_vector(3 downto 0);
signal Rx: std_logic_vector(3 downto 0);

signal CBo_AU, OV_AU: std_logic;
signal CY: std_logic;

begin
	-- Inversao dos botoes KEY0 e KEY1 (Iniciam-se a zero)
	OPx(2) <= not OP(2);
	OPx(1) <= OP(1);
	OPx(0) <= OP(0);
	CBIx <= not CBi;

	-- Yor0: Seleção do segundo operador
	U0: Yor0
	port map(
		Y => Y,
		OP_A => OPx(1),
		B => Yx
	);

	-- Responsabilidade: Executa os 4 processos desejados entre o OPx 000 -> 011
	U1: AU
	port map(
		A => W,
		B => Yx,
		CBi => CBIx,
		OPau => OPx(0),
		R => R_AU,
		CBo => CBo_AU,
		OV => OV_AU
	);

	-- Unidade Logica e Deslocamentos
	-- Responsabilidade: Executa os 4 processos desejados entre o OPx 100 -> 111
	-- Nota: o "process" funciona como uma função que corre em paralelo com o programa, ou seja, não é sequêncial
	process(W, Y, OPx) 
		begin
		R_LOGIC <= "0000";
		CY <= '0';
		
		-- Similar a um switch em java
		case OPx is
				-- OR
				when "100" =>
					R_LOGIC <= W or Y;
					 
				-- XOR
				when "101" =>
					R_LOGIC <= W xor Y;
					 
				-- Logical Shift Left
				when "110" =>
					R_LOGIC <= W(2 downto 0) & '0';
					CY <= W(3);
					 
				-- Arithmetic Shift Right
				when "111" =>
					R_LOGIC <= W(3) & W(3 downto 1);
				
				when others =>
					R_LOGIC <= "0000";
		  end case;
	end process;

	-- Selecao do resultado final mediante a sua operação
	process(OPx, R_AU, R_LOGIC)
		begin
			case OPx is
				when "000" | "001" | "010" | "011" =>
					Rx <= R_AU;

				when "100" | "101" | "110" | "111" =>
					Rx <= R_LOGIC;

				when others =>
					Rx <= "0000";
			end case;
	end process;
	
	-- Saida do resultado
	R <= Rx;

	-- Configurações das Flags

	-- CBo: Configuração correta dependendo do processo
	process(OPx, CBo_AU, CY)
		begin
			case OPx is
				when "000" | "001" | "010" | "011" =>
					CBo <= CBo_AU;

				when "110" =>
					CBo <= CY;

				when others =>
					CBo <= '0';
			end case;
	end process;


	-- Overflow: Apenas nas operacoes aritmeticas
	-- Nota: Similar a um if em java
	OV <= OV_AU when OPx = "000" or OPx = "001" or OPx = "010" or OPx = "011" else '0';

	-- Zero: Ativa quando R = 0000
	Z <= '1' when Rx = "0000" else '0';

	-- Greater or Equal ( W >= Y + CBi):
	-- Apenas relevante na subtracao (OP = 001)	
	-- CBo_AU = 1: ocorreu Borrow (W é inferior a Y + CBi).
	-- CBo_AU = 0: não ocorreu Borrow (W é maior ou igual a Y + CBi)
	GE <= (not OPx(2)) and (not OPx(1)) and OPx(0) and (not CBo_AU);
end ARCH_ALU;
