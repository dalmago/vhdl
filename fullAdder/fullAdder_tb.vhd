library ieee;
use ieee.std_logic_1164.all;

entity fullAdder_tb is
end fullAdder_tb;

architecture arch1 of fullAdder_tb is
  signal ent1, ent2, carryIn, carryOut, soma  : std_logic;
begin
  
  DUV: entity work.fullAdder(arch1)
    port map(
      A =>  ent1,
      B =>  ent2,
      Ci  =>  carryIn,
      Co  =>  carryOut,
      S =>  soma
    );
    
    ent1 <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
    ent2 <= '0', '1' after 25 ns;
    carryIn <= '0', '1' after 40 ns;
    
end arch1;