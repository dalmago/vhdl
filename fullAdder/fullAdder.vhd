library ieee;
use ieee.std_logic_1164.all;

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