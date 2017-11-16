library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ULA is
	port
	(
		-- Input ports
		A   : in  STD_LOGIC_VECTOR (31 downto 0);
		B   : in  STD_LOGIC_VECTOR (31 downto 0);
		
		INV_A : in STD_LOGIC;
		INV_B : in STD_LOGIC;
		
		Cin : in STD_LOGIC := '0';
		Cout : out STD_LOGIC;
		
		SEL   : in  STD_LOGIC_VECTOR (1 downto 0);

		-- Output ports
		S   : out  STD_LOGIC_VECTOR (31 downto 0);
		ZERO   : out  STD_LOGIC
	);
end ULA;

architecture Behavior of ULA is

	signal S_MUX_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal S_MUX_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal S_NOT_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal S_NOT_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal S_AND : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal S_OR : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal S_ADDER : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal S_SLT : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal S_OVERFLOW : STD_LOGIC;
	signal S_ZERO : STD_LOGIC_VECTOR(31 DOWNTO 0);
	

begin

	-- NOT A
	not_a : work.not_port
   port map (
        A => A, 
		  X => S_NOT_A
    );
	 
	-- NOT B
	not_b : work.not_port
   port map (
        A => B, 
		  X => S_NOT_B
    );
	
	-- MUX A
	mux_a : work.mux_2to1
   port map (
        A => A,
		  B => S_NOT_A,
		  SEL => INV_A,
		  X => S_MUX_A
    );
	 
	-- MUX B
	mux_b : work.mux_2to1
   port map (
        A => B,
		  B => S_NOT_B,
		  SEL => INV_B,
		  X => S_MUX_B
    );
	 
	-- OR
	or_port : work.or_port
   port map (
        A => S_MUX_B,
		  B => S_MUX_A,
		  X => S_OR
    );
	 
	-- AND
	and_port : work.and_port
   port map (
        A => S_MUX_B,
		  B => S_MUX_A,
		  X => S_AND
    );
	 
	-- MUX SEL
	mux_sel : work.mux_4to1
   port map (
        A => S_AND,
		  B => S_OR,
		  C => S_ADDER,
		  D => S_SLT,
		  SEL => SEL,
		  X => S_ZERO
    );
	 
	 -- FULL ADDER
	 full_adder : work.full_adder
	 port map (
		A => S_MUX_A,
		B => S_MUX_B,
		Cin => Cin,
		Cout => Cout,
		OVERFLOW => S_OVERFLOW,
		S => S_ADDER
	 );
	 
	 -- SLT
	 slt : work.slt
	 port map (
		OVERFLOW => S_OVERFLOW,
		A => S_ADDER,
		S => S_SLT
	 );
	
	 flag_zero : work.unary_nor32
	 port map (
		A => S_ZERO,
		S => ZERO
	 );

	 S <= S_ZERO;
	
end Behavior;

