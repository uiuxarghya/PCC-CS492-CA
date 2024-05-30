----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:16:40 05/31/2024 
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
           Reset : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           Dout : out  STD_LOGIC;
           Dout_vector : out  STD_LOGIC_VECTOR (3 downto 0));
end piso_rtl;

architecture Behavioral of piso_rtl is

component d_ff_rtl is
    Port ( D : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

signal t : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal q : STD_LOGIC_VECTOR(3 downto 0);

begin

d0: d_ff_rtl port map(D=>Data(0),Rst=>Reset,Clk=>CLK,Q=>q(0));
d1: d_ff_rtl port map(D=>t(1),Rst=>Reset,Clk=>CLK,Q=>q(1));
d2: d_ff_rtl port map(D=>t(2),Rst=>Reset,Clk=>CLK,Q=>q(2));
d3: d_ff_rtl port map(D=>t(3),Rst=>Reset,Clk=>CLK,Q=>q(3));


process(CLK) is
begin
  if rising_edge(CLK) then 
    if Load = '1' then
      t <= Data;
    else
      t(1)<=q(0);
      t(1)<=q(0);
      t(1)<=q(0);
    end if;
  end if;
end process;

Dout <= q(3);
Dout_vector <= q;

end Behavioral;

