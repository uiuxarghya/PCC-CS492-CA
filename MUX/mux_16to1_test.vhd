--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:31:26 05/29/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/CA/mux_16to1/mux_16to1_test.vhd
-- Project Name:  mux_16to1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_16to1_rtl
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
 
ENTITY mux_16to1_test IS
END mux_16to1_test;
 
ARCHITECTURE behavior OF mux_16to1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_16to1_rtl
    PORT(
         D16 : IN  std_logic_vector(15 downto 0);
         S16 : IN  std_logic_vector(3 downto 0);
         O16 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D16 : std_logic_vector(15 downto 0) := (others => '0');
   signal S16 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal O16 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_16to1_rtl PORT MAP (
          D16 => D16,
          S16 => S16,
          O16 => O16
        );

   -- Stimulus process
   stim_proc: process
   begin		
    D16 <= "0000101011110000";
    S16 <= "0101";
		wait for 1 ps;
		D16 <= "1101111000001010";
    S16 <= "1010";
		wait for 1 ps;
    D16 <= "0111101011110001";
		S16 <= "1111";
		wait for 1 ps;
		D16 <= "1010101011110001";
    S16 <= "0000";
		wait for 1 ps;   
   end process;

END;
