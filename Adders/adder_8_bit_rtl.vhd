----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:26 05/25/2024 
-- Design Name: 
-- Module Name:    adder_8_bit_rtl - Behavioral 
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

entity adder_8_bit_rtl is
    Port ( X : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : in  STD_LOGIC_VECTOR (7 downto 0);
           Zin : in  STD_LOGIC;
           Sum8 : out  STD_LOGIC_VECTOR (7 downto 0);
           Zout : out  STD_LOGIC);
end adder_8_bit_rtl;

architecture Behavioral of adder_8_bit_rtl is

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal c1,c2,c3,c4,c5,c6,c7: STD_LOGIC:='0';

begin

adder01: full_adder port map(a=>X(0),b=>Y(0),cin=>Zin,sum=>Sum8(0),cout=>c1);
adder02: full_adder port map(a=>X(1),b=>Y(1),cin=>c1,sum=>Sum8(1),cout=>c2);
adder03: full_adder port map(a=>X(2),b=>Y(2),cin=>c2,sum=>Sum8(2),cout=>c3);
adder04: full_adder port map(a=>X(3),b=>Y(3),cin=>c3,sum=>Sum8(3),cout=>c4);
adder05: full_adder port map(a=>X(4),b=>Y(4),cin=>c4,sum=>Sum8(4),cout=>c5);
adder06: full_adder port map(a=>X(5),b=>Y(5),cin=>c5,sum=>Sum8(5),cout=>c6);
adder07: full_adder port map(a=>X(6),b=>Y(6),cin=>c6,sum=>Sum8(6),cout=>c7);
adder08: full_adder port map(a=>X(7),b=>Y(7),cin=>c7,sum=>Sum8(7),cout=>Zout);

end Behavioral;

