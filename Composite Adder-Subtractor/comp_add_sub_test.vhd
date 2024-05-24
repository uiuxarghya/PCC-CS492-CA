--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:50:54 03/12/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122069/comp_add_sub/comp_add_sub_test.vhd
-- Project Name:  comp_add_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comp_add_sub
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
 
ENTITY comp_add_sub_test IS
END comp_add_sub_test;
 
ARCHITECTURE behavior OF comp_add_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comp_add_sub
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         M : IN  std_logic;
         SD : OUT  std_logic_vector(3 downto 0);
         CB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal M : std_logic := '0';

 	--Outputs
   signal SD : std_logic_vector(3 downto 0);
   signal CB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp_add_sub PORT MAP (
          A => A,
          B => B,
          M => M,
          SD => SD,
          CB => CB
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A<="0000";
		B<="1010";
		M<='0';
		wait for 1 ps;
		A<="1100";
		B<="1000";
		M<='1';
		wait for 1 ps;
		A<="0010";
		B<="1110";
		M<='0';
		wait for 1 ps;
		A<="0110";
		B<="1010";
		M<='1';
		wait for 1 ps;
		A<="0000";
		B<="1111";
		M<='1';
		wait for 1 ps;
   end process;

END;
