library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_port is
    Port ( A   : in  STD_LOGIC_VECTOR (31 downto 0);
           B   : in  STD_LOGIC_VECTOR (31 downto 0);
			  X   : out  STD_LOGIC_VECTOR (31 downto 0)
	 );
end and_port;

architecture Behavior of and_port is
begin
    X <= A AND B;
end Behavior;