----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:55 04/09/2024 
-- Design Name: 
-- Module Name:    jk_ff_rtl - Behavioral 
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

entity jk_ff_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end jk_ff_rtl;

architecture Behavioral of jk_ff_rtl is
signal temp:STD_LOGIC:='0';

begin
	Q <= temp;
	QBar <= (not temp);
	process(J,K,Reset,Clk)
	begin
		if (Reset = '1') then
			temp <= '0';
		elsif (RISING_EDGE(Clk)) then
			if (J = '0' and K = '0') then
				temp <= temp;
			elsif (J = '1' and K = '1') then
				temp <= (not temp);
			elsif (J /= K) then
				temp <= J;
			end if;
		end if;
	end process;

end Behavioral;

