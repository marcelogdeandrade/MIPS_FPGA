library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           A   : in  STD_LOGIC_VECTOR (31 downto 0);
           B   : in  STD_LOGIC_VECTOR (31 downto 0);
			  C   : in  STD_LOGIC_VECTOR (31 downto 0);
			  D   : in  STD_LOGIC_VECTOR (31 downto 0);
           X   : out STD_LOGIC_VECTOR (31 downto 0));
end mux_4to1;

architecture Behavior of mux_4to1 is
begin
    X <= A when (SEL = "00") else
			B when (SEL = "01") else
			C when (SEL = "10") else
			D;
end Behavior;