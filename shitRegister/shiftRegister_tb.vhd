library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.CONV_STD_LOGIC_VECTOR;

entity shiftRegister_tb is
end shiftRegister_tb;

architecture arch1 of shiftRegister_tb is
  
  constant N  : integer := 32;
  
  signal clk, rst : std_logic := '0';
  signal controle : std_logic_vector (1 downto 0);
  signal entrada  :std_logic_vector (N-1 downto 0) := (CONV_STD_LOGIC_VECTOR(12, N));
  
begin

  SHIFTREGISTER: entity work.shiftRegister
    generic map(
      WIDTH => N
    )
    port map(
      d => entrada,
      ctrl => controle,
      rst => rst,
      clk => clk
    );
  controle <= "00", "11" after 10 ns, "00" after 20 ns, "10" after 30 ns, "00" after 40 ns, "01" after 50 ns, "00" after 60 ns, "11" after 70 ns, "00" after 80 ns;
  rst <= '0', '1' after 2 ns, '0' after 4 ns;
  clk <= not clk after 5 ns;
  entrada <= CONV_STD_LOGIC_VECTOR(30, N) after 30 ns;
end arch1;