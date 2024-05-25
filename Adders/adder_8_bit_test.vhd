--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:17 05/25/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/arghya/adder_8_bit/adder_8_bit_test.vhd
-- Project Name:  adder_8_bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_8_bit_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder_8_bit_test IS
END adder_8_bit_test;
 
ARCHITECTURE behavior OF adder_8_bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_8_bit_rtl
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         Zin : IN  std_logic;
         Sum8 : OUT  std_logic_vector(7 downto 0);
         Zout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');
   signal Zin : std_logic := '0';

 	--Outputs
   signal Sum8 : std_logic_vector(7 downto 0);
   signal Zout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_8_bit_rtl PORT MAP (
          X => X,
          Y => Y,
          Zin => Zin,
          Sum8 => Sum8,
          Zout => Zout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      X<="11111111";
		Y<="00000000";
		Zin<='0';
		wait for 1 ps;
		X<="11111111";
		Y<="00000000";		
		Zin<='1';
		wait for 1 ps;
		X<="10010010";
		Y<="01101101";
		Zin<='0';
		wait for 1 ps;
		X<="10010010";
		Y<="01101101";
		Zin<='1';
		wait for 1 ps;
		X<="00011101";
		Y<="10101010";
		Zin<='0';
		wait for 1 ps;
		X<="11001010";
		Y<="00011000";
		Zin<='1';
		wait for 1 ps;
   end process;

END;
