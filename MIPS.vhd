library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

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
	signal s_mux_pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
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
	signal imediato2_extendido_shift : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal addr_reg_3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal dado_reg_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal dado_reg_2: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal entrada_b_ula: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal s_ula : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal dado_lido_memoria_dados : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal dado_escrit_reg_3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal zero_ula : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal sel_mux_beq: STD_LOGIC;
	signal s_adder_2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal s_mux_beq : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal four : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal entrada_b_adder_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal inv_a : STD_LOGIC;
	signal inv_b : STD_LOGIC;
	signal ula_ctrl : STD_LOGIC_VECTOR(1 DOWNTO 0);
	
begin
	-- PC
	pc : work.register32
   port map (
        clk => clk, 
		  d => s_mux_pc,
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
	 
	-- ENTRADA B DO MUX PC
	entrada_b_adder_1(31 DOWNTO 28) <= s_adder_1(31 DOWNTO 28);
	entrada_b_adder_1(27 DOWNTO 2) <= imediato;
	entrada_b_adder_1(1 DOWNTO 0) <= "00";
	
	-- MUX PC
	mux_pc : work.mux_2to1
   port map (
        SEL => mux_pc_beq_jmp, 
		  A => s_mux_beq,
		  B => entrada_b_adder_1,
		  X => s_mux_pc
   );
	 
	-- 4 TO SIGNAL FOUR
	four <= std_logic_vector(to_unsigned(4, 32));
	 
	-- ADDER 1
	adder_1 : work.full_adder
	port map (
		A => four,
		B => pc_mem_inst,
		Cin => '0',
		S => s_adder_1
	);
	
	-- EXT SIGNAL IMEDIATO 2
	imediato2_extendido(31 DOWNTO 16) <= (OTHERS => imediato2(15));
	imediato2_extendido(15 DOWNTO 0) <= imediato2;
	
	-- MUX ULA
	mux_ula : work.mux_2to1
   port map (
        SEL => mux_rt_imediato, 
		  A => dado_reg_2,
		  B => imediato2_extendido,
		  X => entrada_b_ula
   );
	
	-- SHIFT IMEDIATO EXTENDIDO
	imediato2_extendido_shift(31 DOWNTO 2) <= imediato2_extendido(29 DOWNTO 0);
	imediato2_extendido_shift(1 DOWNTO 0) <= "00";
	
	-- ADDER 2
	adder_2 : work.full_adder
	port map (
		A => s_adder_1,
		B => imediato2_extendido_shift,
		Cin => '0',
		S => s_adder_2
	);
	
	-- ULA
	ula : work.ula
	port map (
		A => dado_reg_1,
		B => entrada_b_ula,
		INV_A => inv_a,
		INV_B => inv_b,
		Cin => inv_b,
		SEL => ula_ctrl,
		S => s_ula,
		ZERO => zero_ula
	);
	
	-- FUNCT FROM IMEDIATO2
	funct <= imediato2(5 DOWNTO 0);
	
	-- ULA UNIT CONTROL
	ula_cu : work.ula_cu
	port map (
		funct => funct,
		ula_op => ula_op,
		inverte_a => inv_a,
		inverte_b => inv_b,
		bit_1 => ula_ctrl(1),
		bit_0 => ula_ctrl(0)
	);
	
	-- MEMORIA DE DADOS
	memoria_de_dados : work.memoria_de_dados
	port map (
		clk => clk,
		addr => s_ula,
		data => dado_reg_2,
		we => hab_escrita_mem,
		re => hab_leitura_mem,
		q => dado_lido_memoria_dados
	);
	
	-- MUX REG 3
	mux_reg_3 : work.mux_2to1
	port map (
		SEL => mux_ula_mem,
		A => s_ula,
		B => dado_lido_memoria_dados,
		X => dado_escrit_reg_3
	);
	
	-- MUX BEQ 
	mux_beq : work.mux_2to1
	port map (
		SEL => beq AND zero_ula,
		A => s_adder_1,
		B => s_adder_2,
		X => mux_pc_beq_jmp
	);
	
end Behavior;
