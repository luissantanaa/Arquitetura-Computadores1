library ieee;
use ieee.std_logic_1164.all;

entity Mux2N is
	generic (k: positive := 32);
	port (a : in std_logic_vector(k-1 downto 0);
			b : in std_logic_vector(k-1 downto 0);
			sel : in std_logic;
			output : out std_logic_vector(k-1 downto 0));
end Mux2N;

architecture Behavioral of Mux2N is
	
begin 
	process (sel)
	begin
		if (sel='0') then
			output <= a;
		elsif (sel = '1') then
			output <= b;
		end if;
	end process;
end Behavioral;