----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:55 03/12/2024 
-- Design Name: 
-- Module Name:    full_half_sub_rtl - Behavioral 
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

entity full_half_sub_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Diff1 : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end full_half_sub_rtl;

architecture Behavioral of full_half_sub_rtl is

component half_sub is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end component;

signal temp, b1, b2:STD_LOGIC:='0';

begin

HS1: half_sub port map(a=>A, b=>B, diff=>temp, bout=>b1);
HS2: half_sub port map(a=>temp, b=>Bin, diff=>Diff1, bout=>b2);
Bout <= b1 or b2;

end Behavioral;

