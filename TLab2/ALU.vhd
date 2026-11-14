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
		B3, Cout: out std_logic);
end component;

component LU is
	port(
		W, Y: in std_logic_vector(3 downto 0);
		OP: in std_logic;
		R: out std_logic_vector(3 downto 0));
end component;

component SU is
	port(
		W: in std_logic_vector(3 downto 0);
		OP: in std_logic;
		R: out std_logic_vector(3 downto 0);
		COut: out std_logic);
end component;

component MUX3 is
	port(
		D0, D1, D2: in std_logic_vector(3 downto 0);
		S0, S1, S2: in std_logic;
		R: out std_logic_vector(3 downto 0));
end component;

component FLAGS is
	port(
		A3, B3, R3: in std_logic;
		iCBo_AU, iCBo_SU: in std_logic;
		SEL_AU, SEL_SHIFT: in std_logic;
		OP1, OP0: in std_logic;
		R: in std_logic_vector(3 downto 0);
		CBo, OVo, Z, GE: out std_logic);
end component;
	 
signal OPx: std_logic_vector(2 downto 0);
signal CBIx: std_logic;

signal Yx: std_logic_vector(3 downto 0);

signal R_AU, R_LOGIC, R_SHIFT: std_logic_vector(3 downto 0);
signal Rx: std_logic_vector(3 downto 0);

signal B3_AU, Cout_AU, CBo_SU: std_logic;

-- Seleção das operações
signal SEL_AU, SEL_LOGIC, SEL_SHIFT: std_logic;

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
		B3 => B3_AU,
		Cout => Cout_AU
	);
	
	U2: LU
	port map(
		W => W, 
		Y => Y, 
		OP => OPx(0), 
		R => R_LOGIC
	);
	
	U3: SU
	port map(
		W => W, 
		OP => OPx(0), 
		R => R_SHIFT, 
		COut => CBo_SU
	);
	
	-- Caracterização das operações
	-- Responsabilidade: Executa os 4 processos desejados entre o OPx 100 -> 111
	SEL_AU  <= not OPx(2);
	SEL_LOGIC <= OPx(2) and not OPx(1);
	SEL_SHIFT <= OPx(2) and OPx(1);
	
	U4: MUX3 
	port map(
		D0 => R_AU, 
		D1 => R_LOGIC, 
		D2 => R_SHIFT, 
		S0 => SEL_AU, 
		S1 => SEL_LOGIC, 
		S2 => SEL_SHIFT, 
		R => Rx
	);

	U5: FLAGS
	port map(
		A3 => W(3),
		B3 => B3_AU,
		R3 => R_AU(3),
		iCBo_AU => Cout_AU,
		iCBo_SU => CBo_SU,
		SEL_AU => SEL_AU,
		SEL_SHIFT => SEL_SHIFT,
		OP1 => OPx(1),
		OP0 => OPx(0),
		R => Rx,
		CBo => CBo,
		OVo => OV,
		Z => Z,
		GE => GE
	);
	
	-- Ligar o sinal interno à porta de saída R
	R <= Rx;
	
end ARCH_ALU;