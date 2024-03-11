library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
	port(  dir: in std_logic_vector(2 downto 0); -- Estado presente
			data: out std_logic_vector(15 downto 0));
end memory;

architecture bhv of memory is

	type mem is array(0 to 7) of std_logic_vector(15 downto 0);
	signal internal_mem: mem;

begin
	
	internal_mem(0) <= "00" & "010" & "001" & "0000" & "1000";
	internal_mem(1) <= "01" & "100" & "011" & "1011" & "1111";
	internal_mem(2) <= "00" & "011" & "011" & "0111" & "0111";
	internal_mem(3) <= "11" & "000" & "101" & "1000" & "1001";
	internal_mem(4) <= "10" & "001" & "000" & "1111" & "1110";
	internal_mem(5) <= "00" & "100" & "100" & "0110" & "0110";

		
	process(dir)
	begin
		data <= internal_mem(conv_integer(unsigned(dir)));
	end process;
	
end bhv;