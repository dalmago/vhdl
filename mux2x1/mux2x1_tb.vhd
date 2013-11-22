library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux2x1_tb is
end mux2x1_tb;

architecture arch1 of mux2x1_tb is
  --
  constant TAMANHO :  integer := 8; --largura do barramento de entrada e saida
  --
 
  signal a, b : std_logic_vector(TAMANHO-1 downto 0) := (others => '0');
  signal ctrl : std_logic;
    
begin
  DUV1: entity work.mux2x1(arch1)
  generic map(
    N => TAMANHO
  )
  port map(
    ent1 => a,
    ent2 => b,
    control => ctrl
  );
  
  DUV2: entity work.mux2x1(arch2)
  generic map(
    N => TAMANHO
  )
  port map(
    ent1 => a,
    ent2 => b,
    control => ctrl
  );
  
  a <= a + 1 after 10 ns;
  b <= b + 3 after 15 ns;
  
  ctrl <= '0', '1' after 5 ns, '0' after 15 ns, '1' after 30 ns, '0' after 50 ns;
  
end arch1;
    