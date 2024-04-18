--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:21:10 04/16/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122069/up_down_counter/up_down_counter_test.vhd
-- Project Name:  up_down_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: up_down_counter_rtl
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
 
ENTITY up_down_counter_test IS
END up_down_counter_test;
 
ARCHITECTURE behavior OF up_down_counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT up_down_counter_rtl
    PORT(
         Up_Down : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Up_Down : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: up_down_counter_rtl PORT MAP (
          Up_Down => Up_Down,
          Reset => Reset,
          Clk => Clk,
          Count => Count
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';
		wait for 2 ps;
		
		counter1: for i in 0 to 15 loop
			reset <= '0';
			up_down <= '0';
			wait for 2 ps;
		end loop;
		
		counter2: for i in 0 to 15 loop
			reset <= '0';
			up_down <= '1';
			wait for 2 ps;
		end loop;
   end process;

END;
