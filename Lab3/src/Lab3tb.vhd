-- Git account : <La Hoang Kha Vy>
-- Author      : La Hoang Kha Vy (CE210538)
-- Purpose     : Testbench Lab03 - switch press and release edge detection verification

library ieee;
use ieee.std_logic_1164.all;

entity Lab3_tb is
end entity Lab3_tb;

architecture sim of Lab3_tb is
  signal i_Clk    : std_logic := '0';
  signal i_Switch : std_logic := '0';
  signal o_LED    : std_logic;
begin
  uut : entity work.Lab3
    port map (i_Clk => i_Clk, i_Switch => i_Switch, o_LED => o_LED);

  i_Clk <= not i_Clk after 20 ns; 

  process is
  begin
    i_Switch <= '0'; wait for 200 ns;
    i_Switch <= '1'; wait for 200 ns;  
    i_Switch <= '0'; wait for 200 ns;  
    i_Switch <= '1'; wait for 200 ns;  
    i_Switch <= '0'; wait for 200 ns;  
    wait;
  end process;
end architecture sim;