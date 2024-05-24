----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:47:09 03/05/2024 
-- Design Name: 
-- Module Name:    four_bit_sub - Behavioral 
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

entity four_bit_sub is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           Zin : in  STD_LOGIC;
           Diff1 : out  STD_LOGIC_VECTOR (3 downto 0);
           Zout : out  STD_LOGIC);
end four_bit_sub;

architecture Behavioral of four_bit_sub is

component full_subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end component;

signal c1,c2,c3: std_logic:='0';

begin

sub01: full_subtractor port map(
	a => X(0),
	b => Y(0),
	bin => Zin,
	diff => Diff1(0),
	bout => c1);
	
sub02: full_subtractor port map(
	a => X(1),
	b => Y(1),
	bin => c1,
	diff => Diff1(1),
	bout => c2);
	
sub03: full_subtractor port map(
	a => X(2),
	b => Y(2),
	bin => c2,
	diff => Diff1(2),
	bout => c3);
	
sub04: full_subtractor port map(
	a => X(3),
	b => Y(3),
	bin => c3,
	diff => Diff1(3),
	bout => Zout);

end Behavioral;

