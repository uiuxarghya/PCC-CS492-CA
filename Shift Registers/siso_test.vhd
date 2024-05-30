--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:57:34 05/26/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/siso/siso_test.vhd
-- Project Name:  siso
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: siso_rtl
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
 
ENTITY siso_test IS
END siso_test;
 
ARCHITECTURE behavior OF siso_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT siso_rtl
    PORT(
         Data : IN  std_logic;
         Clock : IN  std_logic;
         Rst : IN  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic := '0';
   signal Clock : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal Qn : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: siso_rtl PORT MAP (
          Data => Data,
          Clock => Clock,
          Rst => Rst,
          Qn => Qn
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
        Rst <= '1';
        wait for 1 ps;
        
		  Rst <= '0';
        wait for 1 ps;

        Data <= '1'; 
		  wait for 1 ps;
        Data <= '0'; 
		  wait for 1 ps;
        Data <= '1'; 
		  wait for 1 ps;
        Data <= '0'; 
		  wait for 1 ps;
		  
   end process;

END;
