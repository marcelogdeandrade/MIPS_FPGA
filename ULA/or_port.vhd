library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_port is
    Port ( A   : in  STD_LOGIC_VECTOR (31 downto 0);
           B   : in  STD_LOGIC_VECTOR (31 downto 0);
			  X   : out  STD_LOGIC_VECTOR (31 downto 0)
	 );
end or_port;

architecture Behavior of or_port is
begin
    X <= A OR B;
end Behavior;