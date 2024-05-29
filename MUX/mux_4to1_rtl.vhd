----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:28:44 05/29/2024 
-- Design Name: 
-- Module Name:    mux_4to1_rtl - Behavioral 
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

entity mux_4to1_rtl is
    Port ( D4 : in  STD_LOGIC_VECTOR (3 downto 0);
           S4 : in  STD_LOGIC_VECTOR (1 downto 0);
           O4 : out  STD_LOGIC);
end mux_4to1_rtl;

architecture Behavioral of mux_4to1_rtl is

begin

process(D4,S4)
begin
  case S4 is
    when "00" =>O4<=D4(0);
    when "01" =>O4<=D4(1);
    when "10" =>O4<=D4(2);
    when "11" =>O4<=D4(3);
    when others =>O4<='0';
  end case;
end process;

end Behavioral;