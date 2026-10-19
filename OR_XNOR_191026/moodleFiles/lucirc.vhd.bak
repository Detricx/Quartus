LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity LUcirc is
  port(X, Y : in STD_LOGIC_VECTOR(3 downto 0);
  	OP : in STD_LOGIC;
	R : out STD_LOGIC_VECTOR(3 downto 0)
  );
end LUcirc;

architecture arq_LUcirc of LUcirc is

component ANDL4
  port(A : in STD_LOGIC_VECTOR(3 downto 0);
  	B : in STD_LOGIC_VECTOR(3 downto 0);
	O : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component ORL4
  port(A : in STD_LOGIC_VECTOR(3 downto 0);
  	B : in STD_LOGIC_VECTOR(3 downto 0);
	O : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component MUX4
  port(A : in STD_LOGIC_VECTOR(3 downto 0);
  	B : in STD_LOGIC_VECTOR(3 downto 0);
	S : in std_logic;
	O : out STD_LOGIC_VECTOR(3 downto 0));
end component;

SIGNAL sa, sx : std_logic_vector(3 downto 0);

BEGIN

UANDL4: ANDL4 port map (
	A => X,
	B => Y,
	O => sa	);

UORL4: ORL4 port map (
	A => X,
	B => Y,
	O => sx	);

UMUX4: MUX4 port map (
	A => sa,
	B => sx,
	S => OP,
	O => R);

end arq_Lucirc;
