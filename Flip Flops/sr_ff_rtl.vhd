----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:34:25 04/09/2024 
-- Design Name: 
-- Module Name:    sr_ff_rtl - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sr_ff_rtl is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end sr_ff_rtl;

architecture Behavioral of sr_ff_rtl is
signal temp : STD_LOGIC := '0';

begin
	Q <= temp;
	QBar <= (not temp);
	process(S,R,Reset,Clk)
	begin
		if (Reset = '1') then
			temp <= '0';
		elsif (RISING_EDGE(Clk)) then
			if (S = '0' and R = '0') then
				temp <= temp;
			elsif (S = '1' and R = '1') then
				temp <= 'Z';
			elsif (S /= R) then
				temp <= S;
			end if;
		end if;
	end process;

end Behavioral;

