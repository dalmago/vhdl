library ieee;
use ieee.std_logic_1164.all;

entity adder2bits_tb is
end adder2bits_tb;

architecture arch1 of adder2bits_tb is
  signal valA, valB : std_logic_vector (1 downto 0);
  signal c : std_logic; -- carry

begin
  Adder2bits: entity work.adder2bits(arch1)
  port map(
    A => valA,
    B => valb,
    CarryIn => c
  );
  
  valA <= "00", "01" after 10 ns, "10" after 20 ns, "11" after 30 ns;
  valB <= "00", "01" after 25 ns, "10" after 50 ns, "11" after 75 ns;
  c <= '0', '1' after 40 ns;
           
end arch1;