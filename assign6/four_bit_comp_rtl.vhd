----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:36 04/02/2024 
-- Design Name: 
-- Module Name:    four_bit_comp_rtl - Behavioral 
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

entity four_bit_comp_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Eq : out  STD_LOGIC;
           Gt : out  STD_LOGIC;
           Lt : out  STD_LOGIC);
end four_bit_comp_rtl;

architecture Behavioral of four_bit_comp_rtl is
signal x3, x2, x1, x0 : STD_LOGIC:='0';

begin

x0<=not((A(0) and (not (B(0)))) or (B(0) and (not (A(0)))));
x1<=not((A(1) and (not (B(1)))) or (B(1) and (not (A(1)))));
x2<=not((A(2) and (not (B(2)))) or (B(2) and (not (A(2)))));
x3<=not((A(3) and (not (B(3)))) or (B(3) and (not (A(3)))));

Eq <= x0 and x1 and x2 and x3;
Gt <= (A(3) and (not(B(3)))) or (x3 and A(2) and (not(B(2)))) or (x3 and x2 and A(1) and (not(B(1)))) or (x3 and x2 and x1 and A(0) and (not(B(0))));
Lt <= (not(A(3)) and B(3)) or (x3 and (not(A(2)) and B(2))) or (x3 and x2 and (not(A(1))) and B(1)) or (x3 and x2 and x1 and (not(A(0))) and B(0));

end Behavioral;

