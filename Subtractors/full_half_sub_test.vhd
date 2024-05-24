--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:50:34 03/12/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122069/full_half_sub/full_half_sub_test.vhd
-- Project Name:  full_half_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_half_sub_rtl
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
 
ENTITY full_half_sub_test IS
END full_half_sub_test;
 
ARCHITECTURE behavior OF full_half_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_half_sub_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Bin : IN  std_logic;
         Diff1 : OUT  std_logic;
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Bin : std_logic := '0';

 	--Outputs
   signal Diff1 : std_logic;
   signal Bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_half_sub_rtl PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          Diff1 => Diff1,
          Bout => Bout
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A<='0';
		B<='0';
		Bin<='0';
		wait for 1 ps;
		A<='0';
		B<='0';
		Bin<='1';
		wait for 1 ps;
		A<='0';
		B<='1';
		Bin<='0';
		wait for 1 ps;
		A<='0';
		B<='1';
		Bin<='1';
		wait for 1 ps;
		A<='1';
		B<='0';
		Bin<='0';
		wait for 1 ps;
		A<='1';
		B<='0';
		Bin<='1';
		wait for 1 ps;
		A<='1';
		B<='1';
		Bin<='0';
		wait for 1 ps;
		A<='1';
		B<='1';
		Bin<='1';
		wait for 1 ps;
   end process;

END;
