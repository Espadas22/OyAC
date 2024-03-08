library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_4 is
	Port(sel: in STD_LOGIC; --Prueba
		   I0: in STD_LOGIC_VECTOR(3 downto 0); --SALIDA FALSA
			I1: in STD_LOGIC_VECTOR(3 downto 0); --SALIDA VERDADERA
			O: out STD_LOGIC_VECTOR(3 downto 0));
end mux2_4;

architecture Behavioral of mux2_4 is
begin 
	process (sel, I0, I1)
	begin
		if sel = '0' then --Salida FALSA
			O <= I0;
		elsif sel = '1' then --Salida VERDADERA
			O <= I1;
		end if;
	end process;
	
end Behavioral;