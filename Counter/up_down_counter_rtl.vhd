----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:43 04/16/2024 
-- Design Name: 
-- Module Name:    up_down_counter_rtl - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_down_counter_rtl is
    Port ( Up_Down : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR (3 downto 0));
end up_down_counter_rtl;

architecture Behavioral of up_down_counter_rtl is

signal temp : STD_LOGIC_VECTOR (3 downto 0);

begin

process(Up_Down, Reset, Clk)
begin
	if (Reset = '1') then
		temp <= "0000";
	elsif (RISING_EDGE(Clk)) then
		if (Up_Down = '0') then
			temp <= temp + 1;
		else
			temp <= temp - 1;
		end if;
	end if;
end process;
Count <= temp;

end Behavioral;
