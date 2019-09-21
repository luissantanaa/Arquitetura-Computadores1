

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std .all;

entity ALU32 is
	generic (k: positive := 32);
	port (a : in std_logic_vector(k-1 downto 0);
			b : in std_logic_vector (k-1 downto 0);
			operation : in std_logic_vector (2 downto 0); 
			zero : out std_logic;
			result : out std_logic_vector(k-1 downto 0);
			overflow : out std_logic);
end ALU32;

architecture Behavioral of ALU32 is
	signal s_result : std_logic_vector (31 downto 0);
	signal s_b : unsigned (31 downto 0);
	
begin
	s_b <= not(unsigned(b)) + 1 when operation="110" else
					unsigned(b); --complemento para 2 (se subtracao)
					
	result <= s_result;
	zero <= '1' when (s_result=x"00000000") else '0';
	overflow <= (not a(31) and not s_b(31) and s_result(31)) or
					(a(31) and s_b(31) and not s_result(31));
			
	process (operation, a, b, s_b)
	begin 
		case operation is 
			when "000" => --AND
				s_result <= a and b;
			when "001" => --OR
				s_result <= a or b;
			when "010" => --ADD
				s_result <= std_logic_vector(unsigned(a) + s_b);
			when "110" => --SUB
				s_result <= std_logic_vector(unsigned(a) + s_b);
			when "111" => --SLT
				if (signed(a) < signed(b)) then
					s_result <= x"00000001";
				else 
					s_result <= (others => '0');
				end if;
			when "011" => --XOR
				s_result <= a xor b;
			when "100" => --NOR
				s_result <=  a nor b;
			when others =>
				s_result <= (others => '-');
		end case;
	end process;
end Behavioral;