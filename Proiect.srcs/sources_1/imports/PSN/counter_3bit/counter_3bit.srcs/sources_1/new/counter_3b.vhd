----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2022 10:29:56 PM
-- Design Name: 
-- Module Name: counter_3b - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_3b is
    Port ( clk : in STD_LOGIC;
           date : out STD_LOGIC_VECTOR (2 downto 0));
end counter_3b;

architecture Behavioral of counter_3b is
signal number : std_logic_vector (2 downto 0);
begin

process(clk)
begin
if rising_edge(clk) then
number <= number + 1;
end if;
end process;
date <= number;

end Behavioral;
