----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:47 05/26/2024 
-- Design Name: 
-- Module Name:    siso_rtl - Behavioral 
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

entity siso_rtl is
    Port ( Data : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Qn : out  STD_LOGIC);
end siso_rtl;

architecture Behavioral of siso_rtl is

component d_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

signal q0,q1,q2:STD_LOGIC:='0';

begin

D0: d_rtl port map(D=>Data,Clk=>Clock,Reset=>Rst,Q=>q0);
D1: d_rtl port map(D=>q0,Clk=>Clock,Reset=>Rst,Q=>q1);
D2: d_rtl port map(D=>q1,Clk=>Clock,Reset=>Rst,Q=>q2);
D3: d_rtl port map(D=>q2,Clk=>Clock,Reset=>Rst,Q=>Qn);

end Behavioral;

