library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fullAdder is
  port(
    A, B, Ci  : in std_logic;
    S, Co     : out std_logic
  );
end fullAdder;

architecture arch1 of fullAdder is
  signal a_xor_b, a_and_b, a_xor_b_and_Ci : std_logic;
  
begin
  
  a_xor_b <= A xor B;
  a_and_b <= A and B;
  a_xor_b_and_Ci <= a_xor_b and Ci;
  
  S <= a_xor_b xor Ci;
  Co <= a_and_b or a_xor_b_and_Ci;
  
end arch1;

architecture arch2 of fullAdder is
begin
  
  S <= A xor B xor Ci;
  Co <= (A and B) or ((A xor B) and Ci);
  
end arch2;

architecture arch3 of fullAdder is
  signal soma, a_a, b_b, Ci_ci: std_logic_vector(1 downto 0);
begin
   a_a <= '0' & A;
   b_b <= '0' & B;
   Ci_ci <= '0' & Ci;
   
   soma <= a_a + b_b + Ci_ci;
   
   S <= soma(0);
   Co <= soma(1);
end arch3;
  
architecture arch4 of fullAdder is
begin
  process (A, B, Ci)
    begin
      S <= A xor B xor Ci;
      Co <= (A and B) or ((A xor B) and Ci);
  end process;
end arch4;