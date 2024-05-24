--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:28:02 04/02/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122069/four_bit_comp/four_bit_comp_test.vhd
-- Project Name:  four_bit_comp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_comp_rtl
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
 
ENTITY four_bit_comp_test IS
END four_bit_comp_test;
 
ARCHITECTURE behavior OF four_bit_comp_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_comp_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Eq : OUT  std_logic;
         Gt : OUT  std_logic;
         Lt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Eq : std_logic;
   signal Gt : std_logic;
   signal Lt : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_comp_rtl PORT MAP (
          A => A,
          B => B,
          Eq => Eq,
          Gt => Gt,
          Lt => Lt
        );
 

   -- Stimulus process
   stim_proc: process
   begin
	A<="0110";
	B<="0110";
	wait for 1 ps;
   A<="1010";
	B<="1001";
	wait for 1 ps;
	A<="0110";
	B<="1000";
	wait for 1 ps;
   end process;

END;
