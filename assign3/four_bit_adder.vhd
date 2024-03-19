----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:50:27 03/05/2024 
-- Design Name: 
-- Module Name:    four_bit_adder - Behavioral 
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

entity four_bit_adder is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           Zin : in  STD_LOGIC;
           Sum1 : out  STD_LOGIC_VECTOR (3 downto 0);
           Zout : out  STD_LOGIC);
end four_bit_adder;

architecture Behavioral of four_bit_adder is

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal c1,c2,c3: std_logic:='0';

begin

adder01: full_adder port map(
	a => X(0),
	b => Y(0),
	cin => Zin,
	sum => Sum1(0),
	cout => c1);
	
adder02: full_adder port map(
	a => X(1),
	b => Y(1),
	cin => c1,
	sum => Sum1(1),
	cout => c2);
	
adder03: full_adder port map(
	a => X(2),
	b => Y(2),
	cin => c2,
	sum => Sum1(2),
	cout => c3);
	
adder04: full_adder port map(
	a => X(3),
	b => Y(3),
	cin => c3,
	sum => Sum1(3),
	cout => Zout);

end Behavioral;

