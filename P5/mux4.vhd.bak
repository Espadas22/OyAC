library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
	Port(sel: in STD_LOGIC_VECTOR(1 downto 0); --Prueba
		   I0: in STD_LOGIC; --A
			I1: in STD_LOGIC; --B
			I2: in STD_LOGIC; --C
			I3: in STD_LOGIC; --D
			O: out STD_LOGIC);
end mux4;


architecture Behavioral of mux4 is
begin 
	process (sel, I0, I1, I2, I3)
	begin
		if sel="00" then --A
			O<=I0;
		elsif sel="01" then --B
			O<=I1;
		elsif sel="10" then --C
			O<=I2;
		elsif sel="11" then --D
			O<=I3;
		end if;
	end process;
	
end Behavioral;
