library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
	port(  dir: in std_logic_vector(6 downto 0); -- Estados & entradas
			data: out std_logic_vector(6 downto 0));
end memory;

architecture bhv of memory is

	type mem is array(0 to 127) of std_logic_vector(6 downto 0);
	signal internal_mem: mem;

begin
	
	-- Entradas para estado 0
	internal_mem(0) <= "001" & "1011";
	internal_mem(1) <= "001" & "1011";
	internal_mem(2) <= "001" & "1011";
	internal_mem(3) <= "001" & "1011";
	internal_mem(4) <= "001" & "1011";
	internal_mem(5) <= "001" & "1011";
	internal_mem(6) <= "001" & "1011";
	internal_mem(7) <= "001" & "1011";
	
	internal_mem(8) <= "010" & "1010";
	internal_mem(9) <= "010" & "1010";
	internal_mem(10) <= "010" & "1010";
	internal_mem(11) <= "010" & "1010";
	internal_mem(12) <= "010" & "1010";
	internal_mem(13) <= "010" & "1010";
	internal_mem(14) <= "010" & "1010";
	internal_mem(15) <= "010" & "1010";
	
	-- Entradas para estado 1
	internal_mem(16) <= "011" & "0101";
	internal_mem(17) <= "011" & "0101";
	internal_mem(18) <= "011" & "0101";
	internal_mem(19) <= "011" & "0101";
	
	internal_mem(20) <= "000" & "1111";
	internal_mem(21) <= "000" & "1111";
	
	internal_mem(22) <= "101" & "0111";
	internal_mem(23) <= "101" & "0111";
	
	internal_mem(24) <= "011" & "0101";
	internal_mem(25) <= "011" & "0101";
	internal_mem(26) <= "011" & "0101";
	internal_mem(27) <= "011" & "0101";
	
	internal_mem(28) <= "000" & "1111";
	internal_mem(29) <= "000" & "1111";
	
	internal_mem(30) <= "101" & "0111";
	internal_mem(31) <= "101" & "0111";
	
	-- Entradas para estado 2
	internal_mem(32) <= "101" & "0000";
	internal_mem(33) <= "100" & "0100";
	internal_mem(34) <= "101" & "0000";
	internal_mem(35) <= "100" & "0100";
	internal_mem(36) <= "101" & "0000";
	internal_mem(37) <= "100" & "0100";
	internal_mem(38) <= "101" & "0000";
	internal_mem(39) <= "100" & "0100";
	
	internal_mem(40) <= "101" & "0000";
	internal_mem(41) <= "100" & "0100";
	internal_mem(42) <= "101" & "0000";
	internal_mem(43) <= "100" & "0100";
	internal_mem(44) <= "101" & "0000";
	internal_mem(45) <= "100" & "0100";
	internal_mem(46) <= "101" & "0000";
	internal_mem(47) <= "100" & "0100";
	
	-- Entradas estado 3
	internal_mem(48) <= "000" & "1010";
	internal_mem(49) <= "000" & "1010";
	internal_mem(50) <= "000" & "1010";
	internal_mem(51) <= "000" & "1010";
	internal_mem(52) <= "000" & "1010";
	internal_mem(53) <= "000" & "1010";
	internal_mem(54) <= "000" & "1010";
	internal_mem(55) <= "000" & "1010";
	internal_mem(56) <= "000" & "1010";
	internal_mem(57) <= "000" & "1010";
	internal_mem(58) <= "000" & "1010";
	internal_mem(59) <= "000" & "1010";
	internal_mem(60) <= "000" & "1010";
	internal_mem(61) <= "000" & "1010";
	internal_mem(62) <= "000" & "1010";
	internal_mem(63) <= "000" & "1010";
	
	-- Entradas estado 4
	internal_mem(64) <= "000" & "1111";
	internal_mem(65) <= "000" & "1111";
	internal_mem(66) <= "000" & "1111";
	internal_mem(67) <= "000" & "1111";
	internal_mem(68) <= "000" & "1111";
	internal_mem(69) <= "000" & "1111";
	internal_mem(70) <= "000" & "1111";
	internal_mem(71) <= "000" & "1111";
	internal_mem(72) <= "000" & "1111";
	internal_mem(73) <= "000" & "1111";
	internal_mem(74) <= "000" & "1111";
	internal_mem(75) <= "000" & "1111";
	internal_mem(76) <= "000" & "1111";
	internal_mem(77) <= "000" & "1111";
	internal_mem(78) <= "000" & "1111";
	internal_mem(79) <= "000" & "1111";
	
	-- Entradas estado 5
	internal_mem(80) <= "000" & "0101";
	internal_mem(81) <= "000" & "0101";
	internal_mem(82) <= "000" & "0101";
	internal_mem(83) <= "000" & "0101";
	internal_mem(84) <= "000" & "0101";
	internal_mem(85) <= "000" & "0101";
	internal_mem(86) <= "000" & "0101";
	internal_mem(87) <= "000" & "0101";
	internal_mem(88) <= "000" & "0101";
	internal_mem(89) <= "000" & "0101";
	internal_mem(90) <= "000" & "0101";
	internal_mem(91) <= "000" & "0101";
	internal_mem(92) <= "000" & "0101";
	internal_mem(93) <= "000" & "0101";
	internal_mem(94) <= "000" & "0101";
	internal_mem(95) <= "000" & "0101";
		
	process(dir)
	begin
		data <= internal_mem(conv_integer(unsigned(dir)));
	end process;
	
end bhv;