library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity banco_registradores is
  port(
    outReg1        : out std_logic_vector(31 DOWNTO 0);
    outReg2        : out std_logic_vector(31 DOWNTO 0);
    inputReg3       : in  std_logic_vector(31 DOWNTO 0);
    writeEnable : in  std_logic;
    AddrReg1     : in  std_logic_vector(4 DOWNTO 0);
    AddrReg2     : in  std_logic_vector(4 DOWNTO 0);
    AddrReg3 : in  std_logic_vector(4 DOWNTO 0);
    clk         : in  std_logic
    );
end banco_registradores;


architecture behavioral of banco_registradores is
  type registerFile is array(31 DOWNTO 0) of std_logic_vector(31 DOWNTO 0);
  signal registers : registerFile := (1 => "00000000000000000000000000000001", 4 => "00000000000000000000000000000011", OTHERS => (OTHERS => '0'));
begin
  regFile : process (clk) is
  begin
    if rising_edge(clk) then
      if writeEnable = '1' then
        registers(to_integer(unsigned(AddrReg3))) <= inputReg3;
      end if;
    end if;
  end process;
	outReg1 <= registers(to_integer(unsigned(AddrReg1)));
	outReg2 <= registers(to_integer(unsigned(AddrReg2)));
end behavioral;