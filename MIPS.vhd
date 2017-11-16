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
		clk : in STD_LOGIC;
		
		-- Output ports
		op_code: out STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
end MIPS;


architecture Behavior of MIPS is
	signal pc_mem_inst : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal mux_pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal pc_addr : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal s_adder_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal dado_mem_inst : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal imediato : STD_LOGIC_VECTOR(25 DOWNTO 0);
	signal rs : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal rt : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal rd : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal imediato2: STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
	signal funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
	signal imediato2_extendido : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal addr_reg_3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal dado_reg_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal dado_reg_2: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal entrada_b_ula: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal s_ula : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal addr_memoria_dados : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal dado_memoria_dados : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal dado_lido_memoria_dados : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal dado_escrit_reg_3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal zero_ula : STD_LOGIC;
	signal sel_mux_beq: STD_LOGIC;
	signal s_adder_2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
begin
	-- PC
	pc : work.register32
   port map (
        clk => clk, 
		  d => mux_pc,
		  q => pc_mem_inst
    );
	 
	-- MEM INST
	memoria_de_inst : work.memoria_de_inst
   port map (
        clk => clk, 
		  addr => pc_mem_inst,
		  q => dado_mem_inst
    );
	 
	 -- DIVIDIR A SAIDA DA MEMORIA DE INSTRUÇOES
	 imediato <= dado_mem_inst(25 DOWNTO 0);
	 rs <= dado_mem_inst(25 DOWNTO 21);
	 rt <= dado_mem_inst(20 DOWNTO 16);
	 rd <= dado_mem_inst(15 DOWNTO 11);
	 imediato2 <= dado_mem_inst(15 DOWNTO 0);
	 
	-- MUX ADDR REG
	mux_addr_reg : work.mux_2to1_5bits
   port map (
        SEL => mux_rt_rd, 
		  A => rt,
		  B => rd,
		  X => addr_reg_3
    );
	 
	 -- BANCO DE REGISTRADORES
	banco_registradores: work.banco_registradores
   port map (
        clk => clk, 
		  AddrReg1 => rs,
		  AddrReg2 => rt,
		  AddrReg3 => addr_reg_3,
		  writeEnable => hab_escrita_reg,
		  inputReg3 => dado_escrit_reg_3,
		  outReg2 => dado_reg_2,
		  outReg1 => dado_reg_1
    );
	
end Behavior;
