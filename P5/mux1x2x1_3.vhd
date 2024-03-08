library ieee;
use ieee.std_logic_1164.all;

entity mux1x2x1_3 is
	Port(seleccion: in STD_LOGIC;
			E0: in STD_LOGIC_VECTOR(2 downto 0); --carga
			E1: in STD_LOGIC_VECTOR(2 downto 0); --Incremento
			salida: out STD_LOGIC_VECTOR(2 downto 0)); --estado siguiente
end mux1x2x1_3;


architecture Behavioral of mux1x2x1_3 is
begin
	process(seleccion, E0, E1)
	begin
		if seleccion = '0' then
			salida<=E0;
		elsif seleccion='1' then
			salida<=E1;
		end if;
	end process;
end Behavioral;