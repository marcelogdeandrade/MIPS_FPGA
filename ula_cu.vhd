library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ula_cu is
	port
	(
		-- Input ports
		funct : in STD_LOGIC_VECTOR(5 DOWNTO 0);
		ula_op : in STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		-- Output ports
		inverte_a : out STD_LOGIC;
		inverte_b : out STD_LOGIC;
		bit_1 : out STD_LOGIC;
		bit_0 : out STD_LOGIC
	);
end ula_cu;


architecture Behavior of ula_cu is
begin
	inverte_a <= '0';
	inverte_b <= '1' when ula_op = "01" else
					 '1' when ula_op = "10" and funct = "100010" else
					 '1' when ula_op = "10" and funct = "101010" else
					 '0';
	bit_1 <= '0' when ula_op = "10" and funct = "100100" else
				'0' when ula_op = "10" and funct = "100101" else
				'1'; 
	bit_0 <= '1' when ula_op = "10" and funct = "100101" else
				'1' when ula_op = "10" and funct = "101010" else
				'0';
end Behavior;