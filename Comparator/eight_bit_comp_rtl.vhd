----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:42:51 05/28/2024 
-- Design Name: 
-- Module Name:    eight_bit_comp_rtl - Behavioral 
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

entity eight_bit_comp_rtl is
    Port ( X : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : in  STD_LOGIC_VECTOR (7 downto 0);
           Eq8 : out  STD_LOGIC;
           Gt8 : out  STD_LOGIC;
           Lt8 : out  STD_LOGIC);
end eight_bit_comp_rtl;

architecture Behavioral of eight_bit_comp_rtl is

signal Eq_high, Gt_high, Lt_High:STD_LOGIC:='0';
signal Eq_low, Gt_low, Lt_low:STD_LOGIC:='0';

component four_bit_comp_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Eq : out  STD_LOGIC;
           Gt : out  STD_LOGIC;
           Lt : out  STD_LOGIC);
end component;

begin

comp_high: four_bit_comp_rtl port map(A=>X(7 downto 4),B=>Y(7 downto 4),Eq=>Eq_high,Gt=>Gt_high,Lt=>Lt_high);
comp_low: four_bit_comp_rtl port map(A=>X(3 downto 0),B=>Y(3 downto 0),Eq=>Eq_low,Gt=>Gt_low,Lt=>Lt_low);

Eq8<=Eq_high and Eq_Low;
Gt8<=Gt_high or (Eq_high and Gt_low);
Lt8<=Lt_high or (Eq_high and Lt_low);

end Behavioral;

