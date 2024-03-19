----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:02 03/05/2024 
-- Design Name: 
-- Module Name:    full_subtractor - Behavioral 
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

entity full_subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end full_subtractor;

architecture Behavioral of full_subtractor is

begin

diff <=((NOT a) AND (NOT b) AND bin) OR (a AND (NOT b) AND (NOT bin)) OR ((NOT a) AND b AND (NOT bin)) OR (a AND b AND bin);
bout <= ((NOT a) AND (NOT b) AND bin) OR ((NOT a) AND b AND (NOT bin)) OR ((NOT a) AND b AND bin) OR (a AND b AND bin);

end Behavioral;

