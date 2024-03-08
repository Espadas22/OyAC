library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
	Port(sel: in STD_LOGIC_VECTOR(2 downto 0); --Prueba
		   I0: in STD_LOGIC; --A
			I1: in STD_LOGIC; --B
			I2: in STD_LOGIC; --C
			I3: in STD_LOGIC; --D
			I4: in STD_LOGIC; --Aux
			O: out STD_LOGIC);
end mux4;


architecture Behavioral of mux4 is
begin 
	process (sel, I0, I1, I2, I3, I4)
	begin
		if sel="000" then --A
			O<=I0;
		elsif sel="001" then --B
			O<=I1;
		elsif sel="010" then --C
			O<=I2;
		elsif sel="011" then --D
			O<=I3;
		elsif sel(2) = '1' then -- Aux
			O<=I4;
		end if;
	end process;
	
end Behavioral;
