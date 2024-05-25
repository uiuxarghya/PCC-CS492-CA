----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:13:33 05/25/2024 
-- Design Name: 
-- Module Name:    sub_8_bit_rtl - Behavioral 
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

entity sub_8_bit_rtl is
    Port ( X : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : in  STD_LOGIC_VECTOR (7 downto 0);
           Zin : in  STD_LOGIC;
           Diff8 : out  STD_LOGIC_VECTOR (7 downto 0);
           Zout : out  STD_LOGIC);
end sub_8_bit_rtl;

architecture Behavioral of sub_8_bit_rtl is

component full_subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end component;

signal c1,c2,c3,c4,c5,c6,c7: STD_LOGIC:='0';

begin

sub01: full_subtractor port map(a=>X(0),b=>Y(0),bin=>Zin,diff=>Diff8(0),bout=>c1);
sub02: full_subtractor port map(a=>X(1),b=>Y(1),bin=>c1,diff=>Diff8(1),bout=>c2);
sub03: full_subtractor port map(a=>X(2),b=>Y(2),bin=>c2,diff=>Diff8(2),bout=>c3);
sub04: full_subtractor port map(a=>X(3),b=>Y(3),bin=>c3,diff=>Diff8(3),bout=>c4);
sub05: full_subtractor port map(a=>X(4),b=>Y(4),bin=>c4,diff=>Diff8(4),bout=>c5);
sub06: full_subtractor port map(a=>X(5),b=>Y(5),bin=>c5,diff=>Diff8(5),bout=>c6);
sub07: full_subtractor port map(a=>X(6),b=>Y(6),bin=>c6,diff=>Diff8(6),bout=>c7);
sub08: full_subtractor port map(a=>X(7),b=>Y(7),bin=>c7,diff=>Diff8(7),bout=>Zout);

end Behavioral;
