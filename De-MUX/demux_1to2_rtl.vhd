----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:21 05/29/2024 
-- Design Name: 
-- Module Name:    demux_1to2_rtl - Behavioral 
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

entity demux_1to2_rtl is
    Port ( D2 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           Y2 : out  STD_LOGIC_VECTOR (1 downto 0));
end demux_1to2_rtl;

architecture Behavioral of demux_1to2_rtl is

begin
process(D2,S2)
begin
  Y2<="00";
  if S2 = '0' then
    Y2(0)<=D2;
  else
    Y2(1)<=D2;
  end if;
end process;
end Behavioral;
