Library IEEE;
use IEEE.std_logic_1164.all;

entity registrador is
	port(	clock, r_en, reset	:	in std_logic;
			d_in								:	in std_logic_vector (7 DOWNTO 0);
			d_out								:	out std_logic_vector (7 DOWNTO 0)
			);
end registrador;

architecture reg8b of registrador is
	SIGNAL temp:		std_logic_vector (7 DOWNTO 0);
begin

	PROCESS(clock, reset)	BEGIN	
		IF RISING_EDGE(clock)	THEN
			IF r_en='1' THEN 
				temp<=d_in;
			END IF;
		END IF;
		if reset='1' THEN
			temp<="00000000";
		END IF;
	END PROCESS;
	d_out<=temp;
	--PROCESS(r_ctrl, temp)	BEGIN	
	--	if r_ctrl/='1' THEN
	--		d_out<="ZZZZZZZZ";
	--	ELSE
	--		d_out<=temp;
	--	END IF;
	--end process;
end reg8b;