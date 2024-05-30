----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:16:54 05/26/2024 
-- Design Name: 
-- Module Name:    pipo_rtl - Behavioral 
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

entity pipo_rtl is
    Port ( Data : in  STD_LOGIC_VECTOR (3 downto 0);
           Clock : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Qn : out  STD_LOGIC_VECTOR (3 downto 0));
end pipo_rtl;

architecture Behavioral of pipo_rtl is

component d_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

begin

D0: d_rtl port map(D=>Data(0),Reset=>Rst,Clk=>Clock,Q=>Qn(0));
D1: d_rtl port map(D=>Data(1),Reset=>Rst,Clk=>Clock,Q=>Qn(1));
D2: d_rtl port map(D=>Data(2),Reset=>Rst,Clk=>Clock,Q=>Qn(2));
D3: d_rtl port map(D=>Data(3),Reset=>Rst,Clk=>Clock,Q=>Qn(3));

end Behavioral;

