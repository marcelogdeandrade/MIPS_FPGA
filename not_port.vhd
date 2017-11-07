library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_port is
    Port ( A   : in  STD_LOGIC_VECTOR (31 downto 0);
			  X   : out  STD_LOGIC_VECTOR (31 downto 0)
	 );
end not_port;

architecture Behavior of not_port is
begin
    X <= NOT A;
end Behavior;