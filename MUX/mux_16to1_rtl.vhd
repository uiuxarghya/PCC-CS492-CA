----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:44 05/29/2024 
-- Design Name: 
-- Module Name:    mux_16to1_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_16to1_rtl is
    Port ( D16 : in  STD_LOGIC_VECTOR (15 downto 0);
           S16 : in  STD_LOGIC_VECTOR (3 downto 0);
           O16 : out  STD_LOGIC);
end mux_16to1_rtl;

architecture Behavioral of mux_16to1_rtl is

component mux_8to1_rtl is
    Port ( D8 : in  STD_LOGIC_VECTOR (7 downto 0);
           S8 : in  STD_LOGIC_VECTOR (2 downto 0);
           O8 : out  STD_LOGIC);
end component;

component mux_2to1_rtl is
    Port ( D2 : in  STD_LOGIC_VECTOR (1 downto 0);
           S2 : in  STD_LOGIC;
           O2 : out  STD_LOGIC);
end component;

signal temp : STD_LOGIC_VECTOR(1 downto 0);

begin

MUX8_0: mux_8to1_rtl port map(D8=>D16(7 downto 0),S8=>S16(2 downto 0),O8=>temp(0));
MUX8_1: mux_8to1_rtl port map(D8=>D16(15 downto 8),S8=>S16(2 downto 0),O8=>temp(1));
MUX2: mux_2to1_rtl port map(D2=>temp,S2=>S16(3),O2=>O16);

end Behavioral;

