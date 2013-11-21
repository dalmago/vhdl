library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder8bits_tb is
end adder8bits_tb;

architecture arch1 of adder8bits_tb is
  signal ent1, ent2 : std_logic_vector(7 downto 0) := "00000000";
  signal cin  : std_logic;
begin
  Adder8bits1: entity work.adder8bits(arch1)
  port map(
    A => ent1,
    B => ent2,
    CarryIn => cin
  );
  
  Adder8bits2: entity work.adder8bits(arch2)
  port map(
    A => ent1,
    B => ent2,
    CarryIn => cin
  );
  
  Adder8bits3: entity work.adder8bits(arch3)
  port map(
    A => ent1,
    B => ent2,
    CarryIn => cin
  );
  
   Adder8bits4: entity work.adder8bits(arch4)
  port map(
    A => ent1,
    B => ent2,
    CarryIn => cin
  );
  
  ent1 <= ent1 + 1 after 10 ns;
  ent2 <= ent2 + 1 after 15 ns;
  cin <= '0', '1' after 35 ns;
end arch1;