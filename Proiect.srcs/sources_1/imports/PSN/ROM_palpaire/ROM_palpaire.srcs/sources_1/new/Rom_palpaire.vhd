----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2022 02:44:45 PM
-- Design Name: 
-- Module Name: Rom_palpaire - Behavioral
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
use IEEE. std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Rom_palpaire is
    Port ( A_ROM : in STD_LOGIC_VECTOR (1 downto 0);
           D_ROM : out STD_LOGIC_VECTOR (31 downto 0));
end Rom_palpaire;

architecture Behavioral of Rom_palpaire is
type ROM_TYPE is array (0 to 3 ) of std_logic_vector(31 downto 0);
signal r: ROM_TYPE := (0 => x"7e674f76", 1 => x"00000000", 2 => x"7e674f76", 3 => x"00000000");
begin
    D_ROM <= r(CONV_INTEGER(UNSIGNED(A_ROM)));

end Behavioral;
