--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:16:39 03/05/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122069/four_bit_adder/four_bit_adder_test.vhd
-- Project Name:  four_bit_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_adder
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
 
ENTITY four_bit_adder_test IS
END four_bit_adder_test;
 
ARCHITECTURE behavior OF four_bit_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_adder
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         Zin : IN  std_logic;
         Sum1 : OUT  std_logic_vector(3 downto 0);
         Zout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');
   signal Zin : std_logic := '0';

 	--Outputs
   signal Sum1 : std_logic_vector(3 downto 0);
   signal Zout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_adder PORT MAP (
          X => X,
          Y => Y,
          Zin => Zin,
          Sum1 => Sum1,
          Zout => Zout
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      	X<="1111";
		Y<="0000";
		Zin<='0';
		wait for 1 ps;
		X<="1111";
		Y<="0000";
		Zin<='1';
		wait for 1 ps;
		X<="1001";
		Y<="0110";
		Zin<='0';
		wait for 1 ps;
		X<="1001";
		Y<="0110";
		Zin<='1';
		wait for 1 ps;
   end process;

END;
