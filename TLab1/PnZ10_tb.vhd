library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PnZ10_tb is
end PnZ10_tb;

architecture teste of PnZ10_tb is
  component PnZ10 is
    port (I0, I1, I2, I3, I4, I5, I6, I7, I8, I9 : in std_logic;
          PnI : in  std_logic;
          P, nZ : out std_logic);
  end component;

  signal I   : std_logic_vector(9 downto 0) := (others => '0');
  signal PnI : std_logic := '0';
  signal P, nZ : std_logic;
begin
  U0 : PnZ10 port map (I0 => I(0), I1 => I(1), I2 => I(2), I3 => I(3), I4 => I(4),
                       I5 => I(5), I6 => I(6), I7 => I(7), I8 => I(8), I9 => I(9),
                       PnI => PnI, P => P, nZ => nZ);

  process
    function odd(v : std_logic_vector) return std_logic is
      variable r : std_logic := '0';
    begin
      for k in v'range loop r := r xor v(k); end loop;
      return r;
    end function;
    variable exp_nz : std_logic;
    variable exp_p  : std_logic;
  begin
    -- exhaustive test: all 1024 input combinations, PnI = 0 and 1 (each 10 ns)
    for b in 0 to 1 loop
      if b = 0 then PnI <= '0'; else PnI <= '1'; end if;
      for n in 0 to 1023 loop
        I <= std_logic_vector(to_unsigned(n, 10));
        wait for 10 ns;
        exp_nz := '0';
        if n /= 0 then exp_nz := '1'; end if;
        exp_p := odd(std_logic_vector(to_unsigned(n, 10))) xor PnI;
        assert nZ = exp_nz report "nZ wrong for n=" & integer'image(n) severity error;
        assert P  = exp_p  report "P wrong for n="  & integer'image(n) & " PnI=" & std_logic'image(PnI) severity error;
      end loop;
    end loop;
    report "Test finished" severity note;
    wait;
  end process;
end teste;
