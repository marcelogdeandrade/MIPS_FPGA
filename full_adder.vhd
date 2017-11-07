library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
	Port ( A : in STD_LOGIC_VECTOR(31 DOWNTO 0);
			 B : in STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Cin : in STD_LOGIC;
			 S : out STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Cout : out STD_LOGIC;
			 OVERFLOW : out STD_LOGIC
	);
end full_adder;

architecture Behavior of full_adder is
	signal t: STD_LOGIC_VECTOR(32 DOWNTO 0);
begin
	t(0) <= Cin;
	Cout <= t(32);
	OVERFLOW <= t(32);
	FA: for i in 0 to 31 generate
		FA_i: work.full_adder_1bit port map (
			Cin => t(i),
			A => A(i),
			B => B(i),
			Cout => t(i + 1),
			S => S(i)
		);
	end generate;
end Behavior;

