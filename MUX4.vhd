library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4 is
    Port ( 
				op1 : in  STD_LOGIC_VECTOR (31 downto 0);
				op2 : in  STD_LOGIC_VECTOR (31 downto 0);
				op3 : in  STD_LOGIC_VECTOR (31 downto 0);
				op4 : in  STD_LOGIC_VECTOR (31 downto 0);
				hab : in  STD_LOGIC_VECTOR (1 downto 0);
				Salida : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX4;

architecture ARQ_MUX4 of MUX4 is

begin
	
	process(hab)
	begin
		
		if(hab = "00") then
			Salida <= op1;
		elsif(hab = "01") then
			Salida <= op2;
		elsif(hab = "11") then
			Salida <= op3;
		elsif(hab = "10") then
			Salida <= op4;
		end if;
	end process;
	
end ARQ_MUX4;

