--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:52:11 04/16/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122069/alu/alu_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_rtl
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
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic_vector(2 downto 0);
         o : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_rtl PORT MAP (
          a => a,
          b => b,
          s => s,
          o => o
        );

   -- Stimulus process
   stim_proc: process
   begin		
		s <= "000";
		a <= "1100";
		b <= "0001";
		wait for 1 ps;
		
		s <= "001";
		a <= "1100";
		b <= "0001";
		wait for 1 ps;
		
		s <= "010";
		a <= "1100";
		b <= "0001";
		wait for 1 ps;
		
		s <= "011";
		a <= "1100";
		b <= "0001";
		wait for 1 ps;
		
		s <= "100";
		a <= "1100";
		b <= "0001";
		wait for 1 ps;
		
		s <= "101";
		a <= "1100";
		b <= "0001";
		wait for 1 ps;
		
		s <= "110";
		a <= "1100";
		b <= "0001";
		wait for 1 ps;
		
		s <= "111";
		a <= "1100";
		b <= "0001";
		wait for 1 ps;
   end process;

END;
