--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:17:54 04/28/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/13000122069/ram/ram_test.vhd
-- Project Name:  ram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram_rtl
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
 
ENTITY ram_test IS
END ram_test;
 
ARCHITECTURE behavior OF ram_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram_rtl
    PORT(
         data_in : IN  std_logic_vector(7 downto 0);
         adr : IN  std_logic_vector(6 downto 0);
         wr_en : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal adr : std_logic_vector(6 downto 0) := (others => '0');
   signal wr_en : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram_rtl PORT MAP (
          data_in => data_in,
          adr => adr,
          wr_en => wr_en,
          rst => rst,
          clk => clk,
          data_out => data_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		while now < 1000 ns loop  -- Simulate for 1000 ns
            clk <= not clk;
            wait for 5 ns;  -- Toggle clock every 5 ns
      end loop;
      wait;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		-- Reset for 20 ns
      rst <= '1';
      wait for 20 ns;
      rst <= '0';

      -- Write data to memory locations
      wr_en <= '1';
      adr <= "0000001";  -- Address to write data
      data_in <= "10101010";  -- Data to write
      wait for 10 ns;  -- Wait for one clock cycle
      wr_en <= '0';

      -- Read data from memory location
      adr <= "0000001";  -- Address to read data
      wait for 10 ns;  -- Wait for one clock cycle

      -- Add more test cases as needed

      wait;
   end process;

END;
