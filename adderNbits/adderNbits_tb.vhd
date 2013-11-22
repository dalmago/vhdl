library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adderNbits_tb is
end adderNbits_tb;

architecture arch1 of adderNbits_tb is
  
  ---
  constant LARGURA : integer := 2;  --largura N do somador
  ---
  
  signal ent1, ent2 : std_logic_vector (LARGURA-1 downto 0) := (others => '0');
  signal CarryIn : std_logic;
begin
  
  adderNbits: entity work.adderNbits(arch1)
    generic map(
      N => LARGURA
    )
    port map(
      a => ent1,
      b => ent2,
      cin => CarryIn
    );
    
    ent1 <= ent1 + 1 after 10 ns;
    ent2 <= ent2 + 1 after 15 ns;
    CarryIn <= '0', '1' after 25 ns, '0' after 35 ns;
end arch1;