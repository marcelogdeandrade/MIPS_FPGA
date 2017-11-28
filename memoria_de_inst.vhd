-- Quartus Prime VHDL Template
-- Single port RAM with single read/write address 

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memoria_de_inst is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 32
	);

	port 
	(
		clk	: in std_logic;
		addr	: in std_logic_vector((ADDR_WIDTH -1) downto 0);
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0) := (OTHERS => '0');
		we		: in std_logic := '0';
		re 	: in std_logic := '1';
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of memoria_de_inst is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(99 downto 0) of word_t;

	-- Declare the RAM signal.	
	signal ram : memory_t := (0 => "00000000000000010001000000100000", -- ADD 2, 1, 0
									  1 => "10101100000000010000000000000000", -- LW 0, 1
									  2 => "10001100000001000000000000000000", -- SW 0, 2
									  3 => "00010000001000110000000000000010", -- BEQ 1,3 8 
									  4 => "00000000000000100001100000101010", -- SLT 0, 1, 3
									  5 => "00001000000000000000000000000011", -- J 3
									  6 => "00001000000000000000000000000000", -- J 0
									  OTHERS => (OTHERS => '0'));

	-- Register to hold the address 
	signal addr_reg : std_logic_vector((ADDR_WIDTH -1) downto 0);
	

begin
	process(clk)
	begin
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(to_integer(unsigned(addr))) <= data;
		end if;
	end if;
	end process;
	addr_reg <= addr when re = '1';
	q <= ram(to_integer(unsigned(addr_reg(31 DOWNTO 2))));

end rtl;