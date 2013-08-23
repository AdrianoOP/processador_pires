LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.std_logic_arith.All;
USE IEEE.math_real.All;

-- ---comandos da ULA:--- ----
--	PASSA_C, 0000
--	PASSA_D, 0001
--	AND 		0010
--	OR 		0011
--	NOT 		0100
--	ADD 		0101
--	INC_C 	0110
--	MUL_LSB	0111
--	MUL_HSB	1000

ENTITY ULA IS
	PORT(	C,D		:	IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			saida		: 	OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			ULA_ctrl	: 	IN STD_LOGIC_VECTOR (3 DOWNTO 0); -- Recebe a opcao de processamento da ULA
			Z,N		: 	OUT STD_LOGIC --representa os flags
			);
END ENTITY ULA;

ARCHITECTURE ula_descrita OF ULA IS
	SIGNAL temp_int	:	INTEGER RANGE -128 TO 128;
BEGIN
	processo_ULA: PROCESS( ULA_ctrl, C, D ) -- A ULA eh sensivel a ULA_ctrl, C e D 
	BEGIN
		CASE ULA_ctrl IS
			WHEN "0000" => -- equivale ao PASSA_C
				Z<='0';N<='0';
				saida<=C;
			WHEN "0001" => -- equivale ao PASSA_D
				Z<='0';N<='0';
				saida<=D;
			WHEN "0010" => -- equivale ao AND
				Z<='0';N<='0';
				saida<=C AND D;
			WHEN "0011" => -- equivale ao OR
				Z<='0';N<='0';
				saida<=C OR D;
			WHEN "0100" => -- equivale ao NOT
				Z<='0';N<='0';
				saida<=NOT C;
			WHEN "0101" => -- equivale ao ADD
				Z<='0';N<='0';
				--saida<=C+D; -- overfflow eh ignorado
			WHEN OTHERS =>
				-- nada acontece
				-- eh melhor que eu coloque um tristate ('Z') na saida?
		END CASE;
	END PROCESS;
END ARCHITECTURE ula_descrita;