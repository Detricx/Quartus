library IEEE;
use IEEE.std_logic_1164.all;

entity TLab2_tb is
end entity;

architecture arc_TLab2_tb of TLab2_tb is

	component TLab2 port(
		CBi: in std_logic;
		X: in std_logic_vector(3 downto 0);
		Y: in std_logic_vector(3 downto 0);
		OP: in std_logic_vector(2 downto 0);
		R: out std_logic_vector(3 downto 0);
		CBo: out std_logic;
		OV: out std_logic;
		Z: out std_logic;
		GE: out std_logic);
	end component;


	constant operation_delay : time := 10 ns;
	constant operation_width : natural := 3;
	constant operands_width : natural := 4;
	
	-- UUT
	signal X_TB, Y_TB, R_TB: std_logic_vector(operands_width-1 downto 0);
	signal OP_TB: std_logic_vector(operation_width-1 downto 0);
	signal CBo_TB, OV_TB, Z_TB, GE_TB, CBi_TB: std_logic;
	
	begin
		UUT: TLab2 port map(
			X => X_TB, Y => Y_TB, OP => OP_TB, CBi => CBi_TB,
			R => R_TB, CBo => CBo_TB, OV => OV_TB, Z => Z_TB, GE => GE_TB);

	
	
	stimulus: process
	-- It takes 250 ns to complete.
	-- To see step by step, first runs 5 ns and next run in steps of 10 ns.
	begin

-- Addc operation
	OP_TB <= "000";
	X_TB <= "0000";
	Y_TB <= "1111";
	CBi_TB <= '0';
	wait for 10 ns;
	
	OP_TB <= "000";
	X_TB <= "0000";
	Y_TB <= "1111";
	CBi_TB <= '1';
	wait for 10 ns;

	OP_TB <= "000";
	X_TB <= "1000";
	Y_TB <= "0101";
	CBi_TB <= '1';
	wait for 10 ns;

	
	-- Subb operation
	OP_TB <= "001";
	X_TB <= "0000";
	Y_TB <= "1111";
	CBi_TB <= '0';
	wait for 10 ns;
	
	OP_TB <= "001";
	X_TB <= "0001";
	Y_TB <= "0101";
	CBi_TB <= '1';
	wait for 10 ns;

	OP_TB <= "001";
	X_TB <= "0100";
	Y_TB <= "1010";
	CBi_TB <= '1';
	wait for 10 ns;
	
	-- Inc operation: 
	OP_TB <= "010"; 
	X_TB <= "0001";
	Y_TB <= "0000";
	CBi_TB <= '0';
	wait for 10 ns;
	
	OP_TB <= "010"; 
	X_TB <= "0001";
	Y_TB <= "0000";
	CBi_TB <= '1';
	wait for 10 ns;
	
	-- Dec operation
	OP_TB <= "011";
	X_TB <= "0110";
	Y_TB <= "0000";
	CBi_TB <= '0';
	wait for 10 ns;
	
	OP_TB <= "011";
	X_TB <= "0110";
	Y_TB <= "0000";
	CBi_TB <= '1';
	wait for 10 ns;

	-- Or operation
	OP_TB <= "100";
	X_TB <= "0001";
	Y_TB <= "1100";
	CBi_TB <= '1';
	wait for 10 ns;

	-- xor operation
	OP_TB <= "101";
	X_TB <= "1010";
	Y_TB <= "1110";
	CBi_TB <= '0';
	wait for 10 ns;
		
	
	-- Lsr operation
	OP_TB <= "110";
	X_TB <= "1001";
	Y_TB <= "0000";
	CBi_TB <= '1';
	wait for 10 ns;
	

	-- Asr operation
	OP_TB <= "111";
	X_TB <= "1100";
	Y_TB <= "0000";
	CBi_TB <= '1';
	wait for 10 ns;

	wait;		
	end process;
	
	
end architecture;