--------------------------------------------
-- Module Name: tutorial
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity counter is
    port (
        clk : in std_logic;
		blink : out std_logic
	);
end counter;

architecture behavior of counter is
    
    signal clk_count : unsigned(31 downto 0) := 0;
    signal toggle : std_logic := '0';

    begin

        blink <= toggle;

        process (clk)
            begin
            if clk'event and clk='1' then --CLK rising edge
                clk_count <= clk_count + 1;

                if(clk_count = 100000000) then
                    clk_count <= 0;
                    toggle <= not(toggle);
                end if;

            end if;

        end process;

end behavior;
		

