library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity decoder is
	generic (
		j    : std_LOGIC_VECTOR(5 DOWNTO 0) := "000010";
		r    : std_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
		lw   : std_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
		sw   : std_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
		beqt : std_LOGIC_VECTOR(5 DOWNTO 0) := "000100"
	);

	port
	(
		-- Input ports
		opcode : in STD_LOGIC_VECTOR(5 DOWNTO 0); 
	
		-- Output ports
		mux_pc_beq_jmp: out STD_LOGIC;
		mux_rt_rd: out STD_LOGIC;
		hab_escrita_reg: out STD_LOGIC;
		mux_rt_imediato: out STD_LOGIC;
		ula_op: out STD_LOGIC_VECTOR(1 DOWNTO 0);
		mux_ula_mem: out STD_LOGIC;
		beq: out STD_LOGIC;
		hab_leitura_mem: out STD_LOGIC;
		hab_escrita_mem: out STD_LOGIC
	);
end entity;


architecture Behavior of decoder is
	
begin
	
	mux_pc_beq_jmp<= '1' when (opcode = j) else '0';
	mux_rt_rd <= '1' when (opcode = r) else '0';
	hab_escrita_reg<= '1' when (opcode = r or opcode = lw) else '0';
	mux_rt_imediato<= '1' when (opcode = lw or opcode = sw) else '0';
	mux_ula_mem <= '1' when (opcode = lw) else '0';
	beq <= '1' when (opcode = beqt) else '0';
	hab_leitura_mem<= '1' when (opcode = lw) else '0';
	hab_escrita_mem<= '1' when (opcode = sw) else '0';
	ula_op <= "00" when (opcode = lw or opcode = sw or opcode = j)
					else "10" when (opcode = r) else "01";

end Behavior;
