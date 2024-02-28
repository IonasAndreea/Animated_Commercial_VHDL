----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2022 01:40:11 PM
-- Design Name: 
-- Module Name: priority_encoder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity priority_encoder is
    Port ( switch : in STD_LOGIC_VECTOR (3 downto 0);
           choice : out STD_LOGIC_VECTOR (1 downto 0));
end priority_encoder;

architecture Behavioral of priority_encoder is

begin
process(switch)
begin
    if( switch(3) = '1') then
        choice <= "11";
    elsif( switch(2) = '1') then
        choice <= "10";
    elsif( switch(1) = '1') then
        choice <= "01";
    elsif( switch(0) <=  '1') then
        choice <= "00";
  end if;
  
end process;

end Behavioral;
