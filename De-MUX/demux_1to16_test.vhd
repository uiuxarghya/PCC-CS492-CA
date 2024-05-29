--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:10:46 05/29/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/CA/demux_1to16/demux_1to16_test.vhd
-- Project Name:  demux_1to16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux_1to16_rtl
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
 
ENTITY demux_1to16_test IS
END demux_1to16_test;
 
ARCHITECTURE behavior OF demux_1to16_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux_1to16_rtl
    PORT(
         D16 : IN  std_logic;
         S16 : IN  std_logic_vector(3 downto 0);
         Y16 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D16 : std_logic := '0';
   signal S16 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y16 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux_1to16_rtl PORT MAP (
          D16 => D16,
          S16 => S16,
          Y16 => Y16
        );

   -- Stimulus process
   stim_proc: process
   begin		
    D16 <= '1';
		S16 <= "0000";
		wait for 1 ps;
		D16 <= '1';
		S16 <= "0010";
		wait for 1 ps;
		D16 <= '1';
		S16 <= "1010";
		wait for 1 ps;
		D16 <= '1';
		S16 <= "1111";
		wait for 1 ps;
		D16 <= '1';
		S16 <= "0001";
		wait for 1 ps;
   end process;

END;
