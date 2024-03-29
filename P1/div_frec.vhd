library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity div_frec is
	port( reloj: in std_logic;
	div_clk: out std_logic);
end div_frec;

architecture bhv of div_frec is
begin
	process(reloj)
	variable cuenta: std_logic_vector (27 downto 0) := X"0000000";
	begin 
		if rising_edge (reloj) then
		
			if cuenta = X"2FAF080" then -- Aprox. 50M para el segundo
				cuenta := X"0000000";
			else
				cuenta := cuenta+1;
			end if;
		end if;
		
		div_clk <= cuenta(0);
	end process;
end bhv;
		
		