----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:16:05 04/02/2024 
-- Design Name: 
-- Module Name:    demux_rtl - Behavioral 
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

entity demux_rtl is
    Port ( D : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end demux_rtl;

architecture Behavioral of demux_rtl is

begin
	process(D,S)
	begin
		O <= "00000000";
		case S is
			when "000"=>O(0)<=D;
			when "001"=>O(1)<=D;
			when "010"=>O(2)<=D;
			when "011"=>O(3)<=D;
			when "100"=>O(4)<=D;
			when "101"=>O(5)<=D;
			when "110"=>O(6)<=D;
			when "111"=>O(7)<=D;
			when others=>O<="00000000";
		end case;
	end process;
end Behavioral;
