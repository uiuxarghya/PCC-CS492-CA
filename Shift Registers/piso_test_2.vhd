--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:29:01 05/31/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/CA/PISO/piso_test.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: piso_rtl
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
 
ENTITY piso_test IS
END piso_test;
 
ARCHITECTURE behavior OF piso_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT piso_rtl
    PORT(
         Data : IN  std_logic_vector(3 downto 0);
         Reset : IN  std_logic;
         CLK : IN  std_logic;
         Load : IN  std_logic;
         Dout : OUT  std_logic;
         Dout_vector : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic_vector(3 downto 0) := (others => '0');
   signal Reset : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Load : std_logic := '0';

 	--Outputs
   signal Dout : std_logic;
   signal Dout_vector : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso_rtl PORT MAP (
          Data => Data,
          Reset => Reset,
          CLK => CLK,
          Load => Load,
          Dout => Dout,
          Dout_vector => Dout_vector
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      Reset <='1';
      wait for 2 ps;
      
      Reset <= '0';
      Load <= '0';
      Data <= "1110";
      wait for 2 ps;
      
      shift: for i in 0 to 3 loop 
         Reset <= '0';
         Load <= '1';
         Data <= "1110";
         wait for 2 ps;
      end loop;
      
   end process;

END;
