----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:17 05/30/2024 
-- Design Name: 
-- Module Name:    comp_add_sub_8_rtl - Behavioral 
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

entity comp_add_sub_8_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           M : in  STD_LOGIC;
           SD : out  STD_LOGIC_VECTOR (7 downto 0);
           CB : out  STD_LOGIC);
end comp_add_sub_8_rtl;

architecture Behavioral of comp_add_sub_8_rtl is

component xor_rtl is
    Port ( m : in  STD_LOGIC;
           n : in  STD_LOGIC;
           p : out  STD_LOGIC);
end component;


component full_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8:STD_LOGIC:='0';
signal c1,c2,c3,c4,c5,c6,c7:STD_LOGIC:='0';


begin

XOR1: xor_rtl port map(m=>B(0),n=>M,p=>temp1);
ADD_SUB_1: full_adder_rtl port map(a=>A(0),b=>temp1,cin=>M,sum=>SD(0),cout=>c1);

XOR2: xor_rtl port map(m=>B(1),n=>M,p=>temp2);
ADD_SUB_2: full_adder_rtl port map(a=>A(1),b=>temp2,cin=>c1,sum=>SD(1),cout=>c2);

XOR3: xor_rtl port map(m=>B(2),n=>M,p=>temp3);
ADD_SUB_3: full_adder_rtl port map(a=>A(2),b=>temp3,cin=>c2,sum=>SD(2),cout=>c3);

XOR4: xor_rtl port map(m=>B(3),n=>M,p=>temp4);
ADD_SUB_4: full_adder_rtl port map(a=>A(3),b=>temp4,cin=>c3,sum=>SD(3),cout=>c4);

XOR5: xor_rtl port map(m=>B(4),n=>M,p=>temp5);
ADD_SUB_5: full_adder_rtl port map(a=>A(4),b=>temp5,cin=>c4,sum=>SD(4),cout=>c5);

XOR6: xor_rtl port map(m=>B(5),n=>M,p=>temp6);
ADD_SUB_6: full_adder_rtl port map(a=>A(5),b=>temp6,cin=>c5,sum=>SD(5),cout=>c6);

XOR7: xor_rtl port map(m=>B(6),n=>M,p=>temp7);
ADD_SUB_7: full_adder_rtl port map(a=>A(6),b=>temp7,cin=>c6,sum=>SD(6),cout=>c7);

XOR8: xor_rtl port map(m=>B(7),n=>M,p=>temp8);
ADD_SUB_8: full_adder_rtl port map(a=>A(7),b=>temp8,cin=>c7,sum=>SD(7),cout=>CB);


end Behavioral;

