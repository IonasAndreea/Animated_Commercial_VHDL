----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2022 03:48:44 PM
-- Design Name: 
-- Module Name: ROM_D_S - Behavioral
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

entity ROM_D_S is
    Port ( A_ROM : in STD_LOGIC_VECTOR (2 downto 0);
           D_ROM : out STD_LOGIC_VECTOR (31 downto 0));
end ROM_D_S;

architecture Behavioral of ROM_D_S is
type ROM_TYPE is array (0 to 7) of std_logic_vector (31 downto 0);
signal r: ROM_TYPE := (0 => x"0000007e", 1 => x"00007e67", 2 => x"007e674f", 3 => x"7e674f76", 4 => x"674f7600", 5 => x"4f760000", 6 => x"76000000", 7 => x"00000000");

begin
    D_ROM <= r(CONV_INTEGER(UNSIGNED(A_ROM)));

end Behavioral;
