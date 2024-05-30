--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:28:01 05/30/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/CA/comp_add_sub_8/comp_add_sub_8_test.vhd
-- Project Name:  comp_add_sub_8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comp_add_sub_8_rtl
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
 
ENTITY comp_add_sub_8_test IS
END comp_add_sub_8_test;
 
ARCHITECTURE behavior OF comp_add_sub_8_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comp_add_sub_8_rtl
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         M : IN  std_logic;
         SD : OUT  std_logic_vector(7 downto 0);
         CB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal M : std_logic := '0';

 	--Outputs
   signal SD : std_logic_vector(7 downto 0);
   signal CB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp_add_sub_8_rtl PORT MAP (
          A => A,
          B => B,
          M => M,
          SD => SD,
          CB => CB
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A<="00000000";
      B<="10101010";
      M<='0';
      wait for 1 ps;
      A<="11001100";
      B<="10001000";
      M<='1';
      wait for 1 ps;
      A<="00100010";
      B<="11101110";
      M<='0';
      wait for 1 ps;
      A<="01100110";
      B<="10101010";
      M<='1';
      wait for 1 ps;
      A<="00000000";
      B<="11111111";
      M<='1';
      wait for 1 ps;
   end process;

END;
