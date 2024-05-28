--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:31:08 05/29/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/CA/comp_8_bit_4_bit/eight_bit_comp_test.vhd
-- Project Name:  comp_8_bit_4_bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eight_bit_comp_rtl
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
 
ENTITY eight_bit_comp_test IS
END eight_bit_comp_test;
 
ARCHITECTURE behavior OF eight_bit_comp_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eight_bit_comp_rtl
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         Eq8 : OUT  std_logic;
         Gt8 : OUT  std_logic;
         Lt8 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Eq8 : std_logic;
   signal Gt8 : std_logic;
   signal Lt8 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eight_bit_comp_rtl PORT MAP (
          X => X,
          Y => Y,
          Eq8 => Eq8,
          Gt8 => Gt8,
          Lt8 => Lt8
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      X<="00000010";
      Y<="00001100";
      wait for 1 ps;
      X<="00011000";
      Y<="00011000";
      wait for 1 ps;
      X<="11000000";
      Y<="00000011";
      wait for 1 ps;
   end process;

END;
