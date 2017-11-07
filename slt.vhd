library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity slt is
	Port ( OVERFLOW : in STD_LOGIC;
			 A : in STD_LOGIC_VECTOR(31 DOWNTO 0);
			 S : out STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end slt;

architecture Behavior of slt is
begin
	S <= (31 DOWNTO 1 => '0', 0 => A(31) XOR OVERFLOW);
end Behavior;
