library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity asynchronous_counter is
    Port (
        Reset : in STD_LOGIC;
        Clock : in STD_LOGIC;
        Count : out STD_LOGIC_VECTOR(3 downto 0)
    );
end asynchronous_counter;

architecture Behavioral of asynchronous_counter is

component jk_ff_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end component;

signal ff0_Q, ff1_Q, ff2_Q, ff3_Q : STD_LOGIC;

begin

FF0: jk_ff_rtl port map(J => '1', K => '0', Reset => Reset, Clk => Clock, Q => ff0_Q, QBar => open);
FF1: jk_ff_rtl port map(J => ff0_Q, K => '0', Reset => Reset, Clk => ff0_Q, Q => ff1_Q, QBar => open);
FF2: jk_ff_rtl port map(J => ff1_Q, K => '0', Reset => Reset, Clk => ff1_Q, Q => ff2_Q, QBar => open);
FF3: jk_ff_rtl port map(J => ff2_Q, K => '0', Reset => Reset, Clk => ff2_Q, Q => ff3_Q, QBar => open);

Count <= ff3_Q & ff2_Q & ff1_Q & ff0_Q;

end Behavioral;
