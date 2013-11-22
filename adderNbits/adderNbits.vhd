library ieee;
use ieee.std_logic_1164.all;

entity adderNbits is
  generic(
    N : integer := 32 --largura do barramento
  );
  port (
    a, b  : in std_logic_vector (N-1 downto 0);
    cin : in std_logic;
    
    soma  :out std_logic_vector (N-1 downto 0);
    cout  : out std_logic
  );
end adderNbits;

architecture arch1 of adderNbits is
  signal carrys : std_logic_vector (N downto 0);
begin
  
  DUV: for i in a'reverse_range generate
    fullAdder: entity work.fullAdder(arch4)
      port map(
        A => a(i),
        B => b(i),
        Ci => carrys(i),
        Co => carrys(i+1),
        S => soma(i)
      );
    end generate;
    
    carrys(0) <= cin;
    cout <= carrys(N);
end arch1;