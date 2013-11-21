library ieee;
use ieee.std_logic_1164.all;

entity adder8bits is
  port(
    A, B  : in std_logic_vector (7 downto 0);
    CarryIn : in std_logic;
    
    soma : out std_logic_vector (7 downto 0);
    CarryOut  : out std_logic
  );
end adder8bits;

architecture arch1 of adder8bits is
  signal carrys : std_logic_vector (6 downto 0);
begin
  DUV7: entity work.fullAdder(arch2)
  port map(
    A => A(7),
    B => B(7),
    Ci => carrys(6),
    Co => CarryOut,
    S => soma(7)
  );
  
  DUV6: entity work.fullAdder(arch3)
  port map(
    A => A(6),
    B => B(6),
    Ci => carrys(5),
    Co => carrys(6),
    S => soma(6)
  );
  
  DUV5: entity work.fullAdder(arch1)
  port map(
    A => A(5),
    B => B(5),
    Ci => carrys(4),
    Co => carrys(5),
    S => soma(5)
      );
  
  DUV4: entity work.fullAdder(arch4)
  port map(
    A => A(4),
    B => B(4),
    Ci => carrys(3),
    Co => carrys(4),
    S => soma(4)
  );
  
  DUV3: entity work.fullAdder(arch2)
  port map(
    A => A(3),
    B => B(3),
    Ci => carrys(2),
    Co => carrys(3),
    S => soma(3)
  );
  
  DUV2: entity work.fullAdder(arch1)
  port map(
    A => A(2),
    B => B(2),
    Ci => carrys(1),
    Co => carrys(2),
    S => soma(2)
  );
  
  DUV1: entity work.fullAdder(arch3)
  port map(
    A => A(1),
    B => B(1),
    Ci => carrys(0),
    Co => carrys(1),
    S => soma(1)
  );
  
  DUV0: entity work.fullAdder(arch4)
  port map(
    A => A(0),
    B => B(0),
    Ci => CarryIn,
    Co => carrys(0),
    S => soma(0)
  );
  
end arch1;

architecture arch2 of adder8bits is
  signal carrys : std_logic_vector (8 downto 0);
begin
  
  carrys(0) <= CarryIn;
  CarryOut <= carrys(8);
  
  Adder: for i in A'reverse_range generate
    fullAdder: entity work.fullAdder(arch4)
    port map(
      A => A(i),
      B => B(i),
      Ci => carrys(i),
      Co => carrys(i+1),
      S => soma(i)
    );
  end generate;
end arch2;
  