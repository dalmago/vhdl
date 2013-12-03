library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity shiftRegister is
  generic (
    WIDTH   : integer := 32;
    INIT_VALUE  : integer := 0
  );
  port(
    d : in std_logic_vector (WIDTH-1 downto 0);
    q : out std_logic_vector (WIDTH-1 downto 0);
    ctrl  : in std_logic_vector (1 downto 0);
    rst, clk  : in std_logic
  );
end shiftRegister;

architecture arch1 of shiftRegister is
  signal q_s, d_s  : std_logic_vector(WIDTH-1 downto 0);
begin
  
  q <= q_s;
  d_s <= d ; 
  
  process (clk, rst)
    begin
      if rst = '1' then
        q_s <= CONV_LOGIC_VECTOR(INIT_VALUE, WIDTH);
      elsif rising_edge(clk) then
        if ctrl = "01" then
          q_s <= q_s(WIDTH-2 downto 0) & '0';
        elsif ctrl = "10" then
          q_s <= '0' & q_s(WIDTH-1 downto 1);
        elsif ctrl = "11" then
          q_s <= d;--load
        end if;
      end if;
    end process;
    
end arch1;