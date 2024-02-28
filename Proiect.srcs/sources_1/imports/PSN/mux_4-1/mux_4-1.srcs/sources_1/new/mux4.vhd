----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2022 10:48:06 PM
-- Design Name: 
-- Module Name: mux4 - Behavioral
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

entity mux4 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
         B : in STD_LOGIC_VECTOR (31 downto 0);
         C : in STD_LOGIC_VECTOR (31 downto 0);
         D : in STD_LOGIC_VECTOR (31 downto 0);
         sel : in STD_LOGIC_VECTOR (1 downto 0);
         Y : out STD_LOGIC_VECTOR (31 downto 0));
end mux4;

architecture Behavioral of mux4 is

begin
    process(A,B,C,D,sel) is
    begin
        if(sel = "00") then
            Y <= A;
        elsif(sel = "01") then
            Y <= B;
        elsif(sel = "10") then
            y <= C;
        else
            Y <= D;
        end if;
    end process;
end Behavioral;
