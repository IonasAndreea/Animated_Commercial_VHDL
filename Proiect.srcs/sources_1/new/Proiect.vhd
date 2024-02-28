----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2022 08:44:35 PM
-- Design Name: 
-- Module Name: Proiect - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Proiect is
    Port ( clk : in STD_LOGIC;
           anod : out STD_LOGIC_VECTOR (3 downto 0);
           catod : out STD_LOGIC_VECTOR (7 downto 0);
           switch : in std_logic_vector (3 downto 0));
end Proiect;

architecture Behavioral of Proiect is

component counter is 
    Port ( clk : in std_logic;
           date : out std_logic_vector(27 downto 0));
end component counter;

component counter_2b is
    Port ( clk : in std_logic;
           date : out std_logic_vector (1 downto 0));
end component counter_2b;

component counter_3b is
    Port( clk : in std_logic;
          date : out std_logic_vector (2 downto 0));
end component counter_3b;


component priority_encoder is
    Port ( switch : in std_logic_vector (3 downto 0);
           choice : out std_logic_vector (1 downto 0));
end component priority_encoder;

component Rom_palpaire is
    Port ( A_ROM : in std_logic_vector (1 downto 0);
           D_ROM : out std_logic_vector (31 downto 0));
end component Rom_palpaire;

component ROM_curgere is
    Port ( A_ROM : in std_logic_vector (1 downto 0);
           D_ROM : out std_logic_vector (31 downto 0));
end component ROM_curgere;

component ROM_D_S is
    Port ( A_ROM : in std_logic_vector (2 downto 0);
           D_ROM : out std_logic_vector (31 downto 0));
end component ROM_D_S;

component ROM_lit_rand is
    Port ( A_ROM : in std_logic_vector (2 downto 0);
           D_ROM : out std_logic_vector (31 downto 0));
end component ROM_lit_rand;

component mux4 is
 Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C : in STD_LOGIC_VECTOR (31 downto 0);
           D : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (31 downto 0));
end component mux4;

component MuX_2_8 is
Port(   A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : in STD_LOGIC_VECTOR (7 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component MuX_2_8;

component MuX_2_4 is
Port(   A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end component MuX_2_4;

signal fir1: std_logic_vector (27 downto 0);
signal fir2,sel,choice: std_logic_vector (1 downto 0);
signal fir3: std_logic_vector (2 downto 0);
signal date1,date2,date3,date4, output: std_logic_vector(31 downto 0);

begin

eticheta1: counter port map(clk,fir1);
eticheta2: counter_2b port map(fir1(25),fir2);
eticheta3: counter_3b port map(fir1(24),fir3);
 
eticheta4: Rom_palpaire port map(fir2,date1);
eticheta5: ROM_D_S port map(fir3,date2);
eticheta6: ROM_lit_rand port map(fir3,date3);
eticheta7:ROM_curgere port map (fir2,date4);

eticheta8: priority_encoder port map(switch,choice);

eticheta9: mux4 port map (date1,date2,date3,date4,choice,output);

eticheta10: MuX_2_8 port map(not output(7 downto 0), not output(15 downto 8), not output(23 downto 16), not output(31 downto 24),fir1(17 downto 16),catod);

eticheta11: MuX_2_4 port map(x"e",x"d",x"b",x"7",fir1(17 downto 16),anod);



end Behavioral;
