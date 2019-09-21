library ieee;
use ieee.std_logic_1164.all;

entity Mux4N is
	generic (k: positive := 32);
	port (a : in std_logic_vector(k-1 downto 0);
			b : in std_logic_vector(k-1 downto 0);
			c : in std_logic_vector(k-1 downto 0);
			d : in std_logic_vector(k-1 downto 0);
			sel : in std_logic_vector(1 downto 0);
			output : out std_logic_vector(k-1 downto 0));
end Mux4N;

architecture Behavioral of Mux4N is
	
begin 
	process (sel)
	begin
		if (sel="00") then
				output <= a;
			elsif (sel = "01") then
				output <= b;
			elsif(sel = "10") then
				output <= c;
			elsif(sel = "11") then
				output <= d;
		end if;
	end process;
end Behavioral;