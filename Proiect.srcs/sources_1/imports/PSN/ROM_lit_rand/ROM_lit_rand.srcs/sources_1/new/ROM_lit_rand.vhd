----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2022 04:16:01 PM
-- Design Name: 
-- Module Name: ROM_lit_rand - Behavioral
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
use IEEE.std_logic_arith.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_lit_rand is
    Port ( A_ROM : in STD_LOGIC_VECTOR (2 downto 0);
           D_ROM : out STD_LOGIC_VECTOR (31 downto 0));
end ROM_lit_rand;

architecture Behavioral of ROM_lit_rand is
type ROM_TYPE is array (0 to 7) of std_logic_vector (31 downto 0);
signal r: ROM_TYPE := ( 0 => x"7e000000", 1 => x"7e670000", 2 => x"7e674f00", 3 => x"7e674f76", 4 => x"7e674f76", 5 => x"7e674f76", 6 => x"7e674f76", 7 => x"00000000"); 
begin
    D_ROM <= r(CONV_INTEGER(UNSIGNED(A_ROM)));

end Behavioral;
