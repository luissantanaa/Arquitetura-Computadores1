library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Instruction_Memory is
	generic (ADD_BUS_SIZE : positive := 4);
	port (	address : in std_logic_vector (ADD_BUS_SIZE-1 downto 0);
				readData : out std_logic_vector (31 downto 0));
end Instruction_Memory;

architecture Behavioral of Instruction_Memory is
	constant NUM_WORDS : positive := (2 ** ADD_BUS_SIZE);
	subtype TData is std_logic_vector(31 downto 0);
	type TMemory is array (0 to NUM_WORDS-1) of Tdata;
	
	constant s_memory : TMemory := 
				(x"2002001a", --addi $2, $0, 0xa1
				 x"20030052", --addi $3, $0, 0x52
				 x"00432020", --add $4, $2, $3
				 x"00432822", --sub $5, $2, $3
				 x"00433024", --and $6, $2, $3
				 x"00433825", --or $7, $2, $3
				 x"00434826", --xor $9, $2, $3
				 x"00434027", --nor $8, $2, $3
				 x"0043502a", --slt $10, $2, $3
				 x"284b0020", --slti $11, $2, 0x20
				 x"298cffa6", --slti $12, $12, -90
				 others => x"00000000");
begin	
	readData <= s_memory (to_integer(unsigned (address)));
end Behavioral;
