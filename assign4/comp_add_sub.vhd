----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:34:50 03/12/2024 
-- Design Name: 
-- Module Name:    comp_add_sub - Behavioral 
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

entity comp_add_sub is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           M : in  STD_LOGIC;
           SD : out  STD_LOGIC_VECTOR (3 downto 0);
           CB : out  STD_LOGIC);
end comp_add_sub;

architecture Behavioral of comp_add_sub is

component xor_rtl is
    Port ( m : in  STD_LOGIC;
           n : in  STD_LOGIC;
           p : out  STD_LOGIC);
end component;

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3,temp4,c1,c2,c3:STD_LOGIC:='0';

begin

XOR1: xor_rtl port map(m=>B(0), n=>M, p=>temp1);
ADD1: full_adder port map(a=>A(0), b=>temp1, cin=>M, sum=>SD(0), cout=>c1);

XOR2: xor_rtl port map(m=>B(1), n=>M, p=>temp2);
ADD2: full_adder port map(a=>A(1), b=>temp2, cin=>c1, sum=>SD(1), cout=>c2);

XOR3: xor_rtl port map(m=>B(2), n=>M, p=>temp3);
ADD3: full_adder port map(a=>A(2), b=>temp3, cin=>c2, sum=>SD(2), cout=>c3);

XOR4: xor_rtl port map(m=>B(3), n=>M, p=>temp4);
ADD4: full_adder port map(a=>A(3), b=>temp4, cin=>c3, sum=>SD(3), cout=>CB);

end Behavioral;
