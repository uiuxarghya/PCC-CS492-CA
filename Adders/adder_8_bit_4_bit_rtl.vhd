----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:56 05/25/2024 
-- Design Name: 
-- Module Name:    adder_8_bit_4_bit_rtl - Behavioral 
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

entity adder_8_bit_4_bit_rtl is
    Port ( P : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : in  STD_LOGIC_VECTOR (7 downto 0);
           Rin : in  STD_LOGIC;
           Sum8 : out  STD_LOGIC_VECTOR (7 downto 0);
           Rout : out  STD_LOGIC);
end adder_8_bit_4_bit_rtl;

architecture Behavioral of adder_8_bit_4_bit_rtl is

component four_bit_adder is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           Zin : in  STD_LOGIC;
           Sum1 : out  STD_LOGIC_VECTOR (3 downto 0);
           Zout : out  STD_LOGIC);
end component;

signal c1:STD_LOGIC:='0';
signal S0,S1:STD_LOGIC_VECTOR(3 downto 0);

begin

adder01: four_bit_adder port map(X=>P(3 downto 0),Y=>Q(3 downto 0),Zin=>Rin,Sum1=>S0,Zout=>c1);
adder02: four_bit_adder port map(X=>P(7 downto 4),Y=>Q(7 downto 4),Zin=>c1,Sum1=>S1,Zout=>Rout);

Sum8 <= S1 & S0;

end Behavioral;

