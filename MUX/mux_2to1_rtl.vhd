----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:39:41 05/29/2024 
-- Design Name: 
-- Module Name:    mux_2to1_rtl - Behavioral 
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

entity mux_2to1_rtl is
    Port ( D2 : in  STD_LOGIC_VECTOR (1 downto 0);
           S2 : in  STD_LOGIC;
           O2 : out  STD_LOGIC);
end mux_2to1_rtl;

architecture Behavioral of mux_2to1_rtl is

begin
process(D2,S2)
  begin
    if S2 = '0' then
      O2 <= D2(0);
    else 
      O2 <= D2(1);
    end if;
end process;
  
end Behavioral;

