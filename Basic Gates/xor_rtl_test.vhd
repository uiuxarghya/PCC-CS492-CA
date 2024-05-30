--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:33:56 05/30/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/CA/xor_rtl/xor_rtl_test.vhd
-- Project Name:  xor_rtl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: xor_rtl
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
 
ENTITY xor_rtl_test IS
END xor_rtl_test;
 
ARCHITECTURE behavior OF xor_rtl_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xor_rtl
    PORT(
         m : IN  std_logic;
         n : IN  std_logic;
         p : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal m : std_logic := '0';
   signal n : std_logic := '0';

 	--Outputs
   signal p : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xor_rtl PORT MAP (
          m => m,
          n => n,
          p => p
        );

   -- Stimulus process
   stim_proc: process
   begin		
      m<='0';
      n<='0';
      wait for 1 ps;
      m<='0';
      n<='1';
      wait for 1 ps;
      m<='1';
      n<='0';
      wait for 1 ps;
      m<='1';
      n<='1';
      wait for 1 ps;
   end process;

END;
