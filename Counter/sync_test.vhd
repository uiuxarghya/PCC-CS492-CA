--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   21:13:38 05/26/2024
-- Design Name:
-- Module Name:   /home/ise/Xilinx/Others/synchronous/sync_test.vhd
-- Project Name:  synchronous
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: sync_rtl
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

ENTITY sync_test IS
END sync_test;

ARCHITECTURE behavior OF sync_test IS

  -- Component Declaration for the Unit Under Test (UUT)

  COMPONENT synchronous_counter
    PORT (
      Reset : IN STD_LOGIC;
      Clock : IN STD_LOGIC;
      Count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  --Inputs
  SIGNAL Reset : STD_LOGIC := '0';
  SIGNAL Clock : STD_LOGIC := '0';

  --Outputs
  SIGNAL Count : STD_LOGIC_VECTOR(3 DOWNTO 0);

  -- Clock period definitions
  CONSTANT Clock_period : TIME := 2 ps; -- Updated clock period

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut : synchronous_counter PORT MAP(
    Reset => Reset,
    Clock => Clock,
    Count => Count
  );

  -- Clock process definitions
  Clock_process : PROCESS
  BEGIN
    Clock <= '0';
    WAIT FOR Clock_period/2;
    Clock <= '1';
    WAIT FOR Clock_period/2;
  END PROCESS;
  -- Stimulus process
  stim_proc : PROCESS
  BEGIN
    -- You can add test stimuli here, for example, toggling the reset signal
    Reset <= '1';
    WAIT FOR 100 ns;
    Reset <= '0';
    WAIT FOR 1 ns; -- Change the wait time as needed for your test scenario
  END PROCESS;

END;