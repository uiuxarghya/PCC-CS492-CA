----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:31 05/25/2024 
-- Design Name: 
-- Module Name:    two_bit_comp_rtl - Behavioral 
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

entity two_bit_comp_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
			  Eq : out  STD_LOGIC;
			  Gt : out  STD_LOGIC;
           Lt : out  STD_LOGIC);
end two_bit_comp_rtl;

architecture Behavioral of two_bit_comp_rtl is

signal x0,x1:STD_LOGIC:='0';

begin

x0 <= not((A(0) and (not B(0))) or (B(0) and (not A(0)))); 
x1 <= not((A(1) and (not B(1))) or (B(1) and (not A(1)))); 

Eq <= x0 and x1;
Gt <= (A(1) and (not(B(1)))) or (x1 and A(0) and (not B(0)));
Lt <= ((not A(1)) and B(1)) or (x1 and (not A(0)) and B(0));

end Behavioral;

