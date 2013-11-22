library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux4x1Enable_tb is
end mux4x1Enable_tb;

architecture tb of mux4x1Enable_tb is
  signal a, b, c, d : std_logic_vector (7 downto 0) := x"00";
  signal sel  :std_logic_vector (1 downto 0) := "00";
  signal en : std_logic := '0';
begin
  MUX1: entity work.mux4x1Enable(arch1)
  port map(
    A => a,
    B => b,
    C => c,
    D => d,
    sel => sel,
    enable => en
  );
  
  MUX2: entity work.mux4x1Enable(arch2)
  port map(
    A => a,
    B => b,
    C => c,
    D => d,
    sel => sel,
    enable => en
  );
  
  en <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 20 ns, '0' after 30 ns, '1' after 35 ns;
  sel <= sel + 1 after 10 ns;
  a <= a + 2 after 10 ns;
  b <= b + 4 after 15 ns;
  c <= c + 5 after 20 ns;
  d <= d + 3 after 7 ns;
  
end tb;