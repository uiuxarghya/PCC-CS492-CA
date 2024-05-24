----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:59 03/12/2024 
-- Design Name: 
-- Module Name:    half_sub - Behavioral 
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

entity half_sub is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end half_sub;

architecture Behavioral of half_sub is

begin

diff <= ((not a) and b) or (a and (not b));
bout <= (not a) and b;

end Behavioral;

