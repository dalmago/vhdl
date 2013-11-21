library ieee;
use ieee.std_logic_1164.all;

entity adder2bits is
  port(
    A, B  : in std_logic_vector (1 downto 0);
    CarryIn : in std_logic;
    
    soma : out std_logic_vector (1 downto 0);
    CarryOut  : out std_logic
  );
end adder2bits;

architecture arch1 of adder2bits is
  signal carry  :std_logic;
begin
  DUV1 : Entity work.fullAdder(arch1)
  port map(
    A => A(1),
    B => B(1),
    Ci => carry,
    Co => CarryOut,
    S => soma(1)
  );
  
  DUV0 : Entity work.fullAdder(arch3)
  port map(
    A => A(0),
    B => B(0),
    Ci => CarryIn,
    Co => carry,
    S => soma(0)
  );
end arch1;