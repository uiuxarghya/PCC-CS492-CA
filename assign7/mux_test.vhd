--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:21 04/02/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122069/mux/mux_test.vhd
-- Project Name:  mux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_rtl
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
 
ENTITY mux_test IS
END mux_test;
 
ARCHITECTURE behavior OF mux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_rtl
    PORT(
         D : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_rtl PORT MAP (
          D => D,
          S => S,
          O => O
        );


   -- Stimulus process
   stim_proc: process
   begin		
      D<="00000000";
		S<="000";
		wait for 1 ps;
		D<="00000010";
		S<="001";
		wait for 1 ps;
		D<="00010000";
		S<="100";
		wait for 1 ps;
		D<="01000000";
		S<="010";
		wait for 1 ps;
   end process;

END;
