library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unary_nor32 is
	port
	(
		A : in STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		S : out STD_LOGIC
	);
end entity;

architecture Behaviour of unary_nor32 is
	signal tmp : std_LOGIC_VECTOR(31 DOWNTO 0);
begin

	tmp(0) <= A(0);
	gen: for i in 1 to 31 generate
		tmp(i) <= tmp(i - 1) or A(i);
	end generate;
	S <= not tmp(31);

end architecture;