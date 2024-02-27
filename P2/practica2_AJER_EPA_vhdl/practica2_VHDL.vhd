library ieee;
use ieee.std_logic_1164.all;

entity practica2_VHDL is
port(CLK, E2, E1: in std_logic;
	  S2, S1: out std_logic);
end practica2_VHDL;

architecture bhv of practica2_VHDL is

	signal esiguiente: std_logic_vector (1 downto 0) := B"00";
	constant edo0: std_logic_vector (1 downto 0) := B"00";
	constant edo1: std_logic_vector (1 downto 0) := B"01";
	constant edo2: std_logic_vector (1 downto 0) := B"10";
	constant edo3: std_logic_vector (1 downto 0) := B"11";

begin
	process(E2, E1, CLK)
		begin
		if rising_edge (CLK) then 
			case esiguiente is 
				when edo0 => 
					S2 <= '0';
					S1 <= '1';
					if E1 = '0' then esiguiente <= edo1;
					elsif E2 = '0' then esiguiente <= edo0;
					else esiguiente <= edo3;
					end if;
				when edo1 =>
					S2 <= '1';
					S1 <= '1';
					if E2 = '0' then esiguiente <= edo2;
					end if;
				when edo2 =>
					S2 <= '0';
					S1 <= '0';
					if E2 = '1' then esiguiente <= edo3;
					elsif E1 = '0' then esiguiente <= edo2;
					else esiguiente <= edo0;
					end if;
				when edo3 =>
					S2 <= '1';
					S1 <= '0';
					esiguiente <= edo0;
				when others => null;
			end case;
		end if;
	end process;
end bhv;