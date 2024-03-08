library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity incrementador is
	Port(entrada: in STD_LOGIC_VECTOR(2 downto 0); --Estado presente
			salida : out STD_LOGIC_VECTOR(2 downto 0)); --Estado Presente + 1
end incrementador;

architecture Behavioral of incrementador is
begin
	process(entrada)
	begin
		salida<=entrada+1;
	end process;
end Behavioral;