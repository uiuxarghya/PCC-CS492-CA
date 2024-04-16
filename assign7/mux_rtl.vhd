----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:51:49 04/02/2024 
-- Design Name: 
-- Module Name:    mux_rtl - Behavioral 
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

entity mux_rtl is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC);
end mux_rtl;

architecture Behavioral of mux_rtl is

begin
process(D,S)
	begin
		case S is
			when "000"=>O<=D(0);
			when "001"=>O<=D(1);
			when "010"=>O<=D(2);
			when "011"=>O<=D(3);
			when "100"=>O<=D(4);
			when "101"=>O<=D(5);
			when "110"=>O<=D(6);
			when "111"=>O<=D(7);
			when others=>O<='0';
		end case;
	end process;
end Behavioral;

