LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.std_logic_arith.All;
USE IEEE.std_logic_unsigned.All;

-- ---comandos da ULA:--- ----
--	PASSA_C, 0000
--	PASSA_D, 0001
--	C AND D	0010
--	C OR	D	0011
--	NOT C		0100
--	C+D 		0101
--	INC_C 	0110
--	LSB(CxD)	0111
--	HSB(CxD)	1000
--	C-D		1001

ENTITY ULA IS
	PORT(	C,D		:	IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			saida		: 	OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			ULA_ctrl	: 	IN STD_LOGIC_VECTOR (3 DOWNTO 0); -- Recebe a opcao de processamento da ULA
			Z,N		: 	OUT STD_LOGIC --representa os flags
			);
END ENTITY ULA;

ARCHITECTURE ula_descrita OF ULA IS
	SIGNAL temp_mult	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL temp			: 	STD_LOGIC_VECTOR (7 DOWNTO 0);
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
			WHEN "0010" => -- equivale ao C AND D
				Z<='0';N<='0';
				saida<=C AND D;
			WHEN "0011" => -- equivale ao C OR D
				Z<='0';N<='0';
				saida<=C OR D;
			WHEN "0100" => -- equivale ao NOT C
				Z<='0';N<='0';
				saida<=NOT C;
			WHEN "0101" => -- equivale ao C+D
				Z<='0';N<='0';
				saida<=C+D; -- overfflow eh ignorado
			WHEN "0110" => -- equivale ao INC_C
				Z<='0'; N<='0';
				saida<=C+1;
			WHEN "0111" => -- equivale ao MUL_LSB
				Z<='0';N<='0';
				temp_mult<=C*D; -- sinal intermediario para guardar a multiplicacao
				saida<= temp_mult(7 DOWNTO 0);
			WHEN "1000"	=>	--	equivale ao MUL_HSB
				Z<='0';N<='0';
				temp_mult<=C*D; -- sinal intermediario para guardar a multiplicacao
				saida<= temp_mult(15 DOWNTO 8);
			WHEN "1001"	=>	--	equivale ao C-D
				temp<=C-D;
				IF temp<0 THEN
					N<='1';
				ELSE
					N<='0';
				END IF;
				
				IF temp=0 THEN
					Z<='1';
				ELSE
					Z<='0';
				END IF;
				saida<=temp;
			WHEN OTHERS =>
				-- nada acontece
				-- eh melhor que eu coloque um tristate ('Z') na saida?
		END CASE;
	END PROCESS;
END ARCHITECTURE ula_descrita;