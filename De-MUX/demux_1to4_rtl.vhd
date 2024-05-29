----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:33 05/29/2024 
-- Design Name: 
-- Module Name:    demux_1to4_rtl - Behavioral 
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

entity demux_1to4_rtl is
    Port ( D4 : in  STD_LOGIC;
           S4 : in  STD_LOGIC_VECTOR (1 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (3 downto 0));
end demux_1to4_rtl;

architecture Behavioral of demux_1to4_rtl is

begin
process(D4,S4)
begin
  Y4<="0000";
  case S4 is
    when "00" =>Y4(0)<=D4;
    when "01" =>Y4(1)<=D4;
    when "10" =>Y4(2)<=D4;
    when "11" =>Y4(3)<=D4;
    when others =>Y4<="0000";
  end case;
end process;
end Behavioral;
