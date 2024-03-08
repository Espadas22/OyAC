library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	Port (entrada:in STD_LOGIC_VECTOR (14 downto 0);
			prueba: out STD_LOGIC_VECTOR(2 downto 0);
			VF: out STD_LOGIC;
			liga: out STD_LOGIC_VECTOR(2 downto 0);
			salidasI: out STD_LOGIC_VECTOR(3 downto 0);
			salidasS: out STD_LOGIC_VECTOR(3 downto 0));
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
	process(entrada)
	begin
		prueba 	<= entrada(14 downto 12); -- Entrada a comparar
		VF 	 	<= entrada(11);			  -- Valor para el salto
		liga 	 	<= entrada(10 downto 8);  -- Estado de salto
		salidasI <= entrada(7 downto 4);   -- Salidad para incremento
		salidasS <= entrada(3 downto 0);   -- Salidas para saltp
	end process;
end Behavioral;