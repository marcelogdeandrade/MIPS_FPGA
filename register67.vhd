library ieee;
use ieee.std_logic_1164.all;

ENTITY register64 IS PORT(
    d   : IN STD_LOGIC_VECTOR(66 DOWNTO 0) := (OTHERS => '0');
    ld  : IN STD_LOGIC := '1'; -- load/enable.
    clr : IN STD_LOGIC := '0'; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
    q   : OUT STD_LOGIC_VECTOR(66 DOWNTO 0) -- output
);
END register64;

ARCHITECTURE Behavior OF register64 IS

BEGIN
    process(clk, clr)
    begin
        if clr = '1' then
            q <= (OTHERS => '0');
        elsif rising_edge(clk) then
            if ld = '1' then
                q <= d;
            end if;
        end if;
    end process;
END Behavior;