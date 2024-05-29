----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:50:44 05/29/2024 
-- Design Name: 
-- Module Name:    demux_1to16_rtl - Behavioral 
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

entity demux_1to16_rtl is
    Port ( D16 : in  STD_LOGIC;
           S16 : in  STD_LOGIC_VECTOR (3 downto 0);
           Y16 : out  STD_LOGIC_VECTOR (15 downto 0));
end demux_1to16_rtl;

architecture Behavioral of demux_1to16_rtl is

component demux_1to8_rtl is
    Port ( D8 : in  STD_LOGIC;
           S8 : in  STD_LOGIC_VECTOR (2 downto 0);
           Y8 : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component demux_1to2_rtl is
    Port ( D2 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           Y2 : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

signal temp: STD_LOGIC_VECTOR(1 downto 0);

begin

DEMUX2: demux_1to2_rtl port map(D2=>D16,S2=>S16(3),Y2=>temp);
DEMUX8_0: demux_1to8_rtl port map(D8=>temp(0),S8=>S16(2 downto 0),Y8=>Y16(7 downto 0));
DEMUX8_2: demux_1to8_rtl port map(D8=>temp(1),S8=>S16(2 downto 0),Y8=>Y16(15 downto 8));

end Behavioral;

