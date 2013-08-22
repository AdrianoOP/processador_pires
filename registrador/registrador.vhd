Library IEEE;
use IEEE.std_logic_1164.all;

entity registrador is
	port(	clock, r_en, r_ctrl:		in std_logic;
			d_in:							in std_logic_vector (7 DOWNTO 0);
			d_out:						out std_logic_vector (7 DOWNTO 0)
			);
end registrador;

architecture reg8b of registrador is
	SIGNAL temp:		std_logic_vector (7 DOWNTO 0);
begin

	PROCESS(clock)	BEGIN	
		IF RISING_EDGE(clock) AND r_en='1' THEN
			temp<=d_in;
		END IF;
		
	END PROCESS;
		
	PROCESS(r_ctrl)	BEGIN	
		if r_ctrl/='1' THEN
			d_out<="ZZZZZZZZ";
		else
			d_out<=temp;
		end if;
	end process;
end reg8b;