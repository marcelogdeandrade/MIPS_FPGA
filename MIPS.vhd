library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIPS is
	port
	(
		-- Input ports
		mux_pc_beq_jmp: in STD_LOGIC;
		mux_rt_rd: in STD_LOGIC;
		hab_escrita_reg: in STD_LOGIC;
		mux_rt_imediato: in STD_LOGIC;
		ula_op: in STD_LOGIC_VECTOR(1 DOWNTO 0);
		mux_ula_mem: in STD_LOGIC;
		beq: in STD_LOGIC;
		hab_leitura_mem: in STD_LOGIC;
		hab_escrita_mem: in STD_LOGIC;
		
		-- Output ports
		op_code: out STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
end MIPS;


architecture Behavior of MIPS is

begin

end Behavior;