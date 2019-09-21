library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
	port(OpCode	:	in std_logic_vector(5 downto 0);
		  RegDst	:	out std_logic;
		  Branch	:	out std_logic;
		  MemRead	:	out std_logic;
		  MemWrite	:	out std_logic;
		  MemToReg	:	out std_logic;
		  ALUsrc		:	out std_logic;
		  RegWrite	:	out std_logic;
		  ALUop		:	out std_logic_vector(1 downto 0)
	);
end ControlUnit;

architecture Behavioral of ControlUnit is
begin
	process(OpCode)
	begin
		RegDst <='0'; Branch <='0'; MemRead <='0'; MemWrite <='0';
		MemToReg <='0'; Alusrc <='0'; RegWrite <='0'; ALUop <="00";
		
		case OpCode is
			when "000000" =>
				ALUop <= "10";
				RegDst <='1';
				RegWrite <='1';
			
			when "000100" =>
				ALUop <="01";
				Branch <='1';
				
			when "100011" =>
				ALUsrc <='1';
				MemToReg <='1';
				MemRead <='1';
				RegWrite <='1';
			
			when "101011" =>
				ALUsrc <= '1';
				MemWrite <='1';
			
			when "001000" =>
				ALUsrc <='1';
				RegWrite <='1';
				
			when "001010" =>
				ALUop <="11";
				ALUsrc <='1';
				RegWrite <='1';
			
			when others =>
		end case;
	end process;
end Behavioral;	
				
