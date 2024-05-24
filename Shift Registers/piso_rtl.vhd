----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:01:21 04/16/2024 
-- Design Name: 
-- Module Name:    piso_rtl - Behavioral 
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

entity piso_rtl is
    Port ( Data : in  STD_LOGIC_VECTOR (3 downto 0);
           Rst : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           Dout_vector : out  STD_LOGIC_VECTOR (3 downto 0);
           Dout : out  STD_LOGIC);
end piso_rtl;

architecture Behavioral of piso_rtl is
component d_ff_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end component;

signal q0, q1, q2, q3, t1, t2, t3 : STD_LOGIC := '0';

begin

d0 : d_ff_rtl port map (D => Data(0), Clk => CLK, Reset => Rst, Q => q0);
Dout_vector(0) <= q0;

t1 <= (Load and q0) or (not(Load) and Data(1));
d1 : d_ff_rtl port map (D => t1, Clk => CLK, Reset => Rst, Q => q1);
Dout_vector(1) <= q1;

t2 <= (Load and q1) or (not(Load) and Data(2));
d2 : d_ff_rtl port map (D => t2, Clk => CLK, Reset => Rst, Q => q2);
Dout_vector(2) <= q2;

t3 <= (Load and q2) or (not(Load) and Data(3));
d3 : d_ff_rtl port map (D => t3, Clk => CLK, Reset => Rst, Q => q3);
Dout <= q3;
Dout_vector(3) <= q3;

end Behavioral;
