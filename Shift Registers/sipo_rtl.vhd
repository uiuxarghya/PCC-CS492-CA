----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:32:51 04/09/2024 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity sipo_rtl is
    Port ( Data : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Qs : inout  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is
component d_ff_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

begin

d0:d_ff_rtl port map(D=>Data,Reset=>Rst,Clk=>Clock,Q=>Qs(0));
d1:d_ff_rtl port map(D=>Qs(0),Reset=>Rst,Clk=>Clock,Q=>Qs(1));
d2:d_ff_rtl port map(D=>Qs(1),Reset=>Rst,Clk=>Clock,Q=>Qs(2));
d3:d_ff_rtl port map(D=>Qs(2),Reset=>Rst,Clk=>Clock,Q=>Qs(3));

end Behavioral;

