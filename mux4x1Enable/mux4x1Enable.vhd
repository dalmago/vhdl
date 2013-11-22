library ieee;
use ieee.std_logic_1164.all;

entity mux4x1Enable is
  port(
    A, B, C, D :  in  std_logic_vector (7 downto 0);
    sel : in std_logic_vector (1 downto 0);
    
    enable  : in std_logic;
    
    S : out std_logic_vector (7 downto 0)
    
  );
  
end mux4x1Enable;
  
architecture arch1 of mux4x1Enable is
  signal temp : std_logic_vector (7 downto 0);
begin
  
  S <= temp when enable = '1' else
        (others => 'Z');

  temp <= A when sel = "00"  else
          B when sel = "01" else
          C when sel = "10" else
          D;
end arch1;

architecture arch2 of mux4x1Enable is
begin
  process (A, B, C, D, sel, enable)
    begin
      if enable = '0' then
        S <= (others => 'Z');
      elsif sel = "00" then
        S <= A;
      elsif sel = "01" then
        S <= B;
      elsif sel = "10" then
        S <= C;
      else
        S <= D;
      end if;
  end process;
end arch2;
        