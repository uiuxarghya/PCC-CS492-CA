--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:07:30 05/25/2024
-- Design Name:   
-- Module Name:   /home/arghya/Desktop/CA/adder_8_bit_4_bit/adder_8_bit_4_bit_test.vhd
-- Project Name:  adder_8_bit_4_bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_8_bit_4_bit_rtl
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
 
ENTITY adder_8_bit_4_bit_test IS
END adder_8_bit_4_bit_test;
 
ARCHITECTURE behavior OF adder_8_bit_4_bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_8_bit_4_bit_rtl
    PORT(
         P : IN  std_logic_vector(7 downto 0);
         Q : IN  std_logic_vector(7 downto 0);
         Rin : IN  std_logic;
         Sum8 : OUT  std_logic_vector(7 downto 0);
         Rout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal P : std_logic_vector(7 downto 0) := (others => '0');
   signal Q : std_logic_vector(7 downto 0) := (others => '0');
   signal Rin : std_logic := '0';

 	--Outputs
   signal Sum8 : std_logic_vector(7 downto 0);
   signal Rout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_8_bit_4_bit_rtl PORT MAP (
          P => P,
          Q => Q,
          Rin => Rin,
          Sum8 => Sum8,
          Rout => Rout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      P<="11111111";
		Q<="00000000";
		Rin<='0';
		wait for 1 ps;
		P<="11111111";
		Q<="00000000";		
		Rin<='1';
		wait for 1 ps;
		P<="10010010";
		Q<="01101101";
		Rin<='0';
		wait for 1 ps;
		P<="10010010";
		Q<="01101101";
		Rin<='1';
		wait for 1 ps;
		P<="00011101";
		Q<="10101010";
		Rin<='0';
		wait for 1 ps;
		P<="11001010";
		Q<="00011000";
		Rin<='1';
		wait for 1 ps;
   end process;

END;
