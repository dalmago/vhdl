library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
  generic(
    N : integer := 8 --largura barramento in/out
  );
  port(
    ent1, ent2 : in std_logic_vector(N-1 downto 0);
    control :in std_logic;
    
    output  : out std_logic_vector(N-1 downto  0)
  );
end mux2x1;

architecture arch1 of mux2x1 is
begin
  output <= ent1 when control = '0' else
            ent2; --control = '1'
end arch1;

architecture arch2 of mux2x1 is
begin
  process (ent1, ent2, control)
    begin
      if control = '0' then
        output <= ent1;
      else
        output <= ent2;
      end if;
  end process;
end arch2;

