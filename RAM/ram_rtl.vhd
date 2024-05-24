----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:11:55 04/28/2024 
-- Design Name: 
-- Module Name:    ram_rtl - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram_rtl is
    Port ( data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           adr : in  STD_LOGIC_VECTOR (6 downto 0);
           wr_en : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end ram_rtl;

architecture Behavioral of ram_rtl is

	type ram1 is array (0 to 127) of STD_LOGIC_VECTOR (7 downto 0); 
		signal my_ram : ram1 := (
        0 => "00000001",
        1 => "00000011",
        others => (others => '0')
		 );

begin
	ram_process : process (wr_en, clk, rst)
    begin
        if rst = '1' then
            my_ram <= (
                others => (others => '0')
            );
        elsif wr_en = '0' then
            data_out <= my_ram(to_integer(unsigned(adr)));
        else
            data_out <= (others => 'Z');
            if rising_edge(clk) then
                my_ram(to_integer(unsigned(adr))) <= data_in;
            end if;
        end if;
    end process;
end Behavioral;

