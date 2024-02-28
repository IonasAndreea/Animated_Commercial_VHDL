----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2022 10:19:07 PM
-- Design Name: 
-- Module Name: counter_2b - Behavioral
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

entity counter_2b is
    Port ( clk : in STD_LOGIC;
           date : out STD_LOGIC_VECTOR (1 downto 0));
end counter_2b;

architecture Behavioral of counter_2b is
signal number : std_logic_vector (1 downto 0);
begin
process(clk)
begin
if rising_edge(clk) then
number <= number + 1;
end if;
end process;
date <= number;

end Behavioral;
