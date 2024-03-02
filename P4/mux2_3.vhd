library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_3 is
	Port(sel: in STD_LOGIC; --Prueba
		   I0: in STD_LOGIC_VECTOR(2 downto 0); --LIGA FALSA
			I1: in STD_LOGIC_VECTOR(2 downto 0); --LIGA VERDADERA
			O: out STD_LOGIC_VECTOR(2 downto 0));
end mux2_3;

architecture Behavioral of mux2_3 is
begin 
	process (sel, I0, I1)
	begin
		if sel = '0' then --LIGA FALSA
			O <= I0;
		elsif sel = '1' then --LIGA VERDADER
			O <= I1;
		end if;
	end process;
	
end Behavioral;