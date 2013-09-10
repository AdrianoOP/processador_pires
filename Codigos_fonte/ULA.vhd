LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.numeric_std.all;	

-- ---comandos da ULA:--- ----
--	PASSA_C, 0000
--	PASSA_D, 0001
--	C AND D	0010
--	C OR	D	0011
--	NOT C		0100
--	C+D 		0101
--	INC_C 	0110
-- CxD		1010
--	LSB(CxD)	0111
--	HSB(CxD)	1000
--	C-D		1001
--	DEC_C		1011

ENTITY ULA IS
	PORT(	C,D		:	IN SIGNED (7 DOWNTO 0);
			saida		: 	OUT SIGNED (7 DOWNTO 0);
			ULA_ctrl	: 	IN STD_LOGIC_VECTOR (3 DOWNTO 0); -- Recebe a opcao de processamento da ULA
			Z,N		: 	OUT STD_LOGIC; --representa os flags
			ULA_en	:	IN STD_LOGIC;
			reset		:	IN STD_LOGIC
			);
END ENTITY ULA;

ARCHITECTURE ula_descrita OF ULA IS
	SIGNAL temp_mult	:	SIGNED (15 DOWNTO 0);
	SIGNAL temp_multC	:	SIGNED (15 DOWNTO 0);
	SIGNAL temp_multD	:	SIGNED (15 DOWNTO 0);
	SIGNAL temp			: 	SIGNED (7 DOWNTO 0);
BEGIN

	processo_ULA: PROCESS( ULA_ctrl, C, D, reset, temp, temp_mult,ULA_en) -- A ULA eh sensivel a ULA_ctrl, C e D 
	BEGIN
		CASE ULA_ctrl IS
			WHEN "0000" => -- equivale ao PASSA_C
				temp<=C;
			WHEN "0001" => -- equivale ao PASSA_D
				temp<=D;
			WHEN "0010" => -- equivale ao C AND D
				temp<=C AND D;
			WHEN "0011" => -- equivale ao C OR D
				temp<=C OR D;
			WHEN "0100" => -- equivale ao NOT C
				temp<=NOT C;
			WHEN "0101" => -- equivale ao C+D
				temp<=C+D; -- overfflow eh ignorado
			WHEN "0110" => -- equivale ao INC_C
				temp<=C+1;
			WHEN "0111" => -- equivale ao MUL_LSB
				temp<= temp_mult(7 DOWNTO 0);
			WHEN "1000"	=>	--	equivale ao MUL_HSB
				temp<=temp_mult(15 DOWNTO 8);
			WHEN "1001"	=>	--	equivale ao C-D
				temp<=C-D;
			WHEN "1010"	=>	--	equivale ao CxD
				temp_mult<=C*D;
			WHEN "1011"	=>	--	DeC_ULA
				temp<=C-1;
			WHEN OTHERS =>
				temp<="00000000";
				-- nada acontece
				-- eh melhor que eu coloque um tristate ('Z') na saida?
		END CASE;
		IF (reset='1') THEN
				temp<="00000000";
		END IF;
	END PROCESS;
	
	--processo para lidar com os flags
	flags: PROCESS(temp, temp_mult, ULA_en)		
		BEGIN
				IF (ULA_en='1') THEN
					IF temp="00000000" THEN
						Z<='1';
					ELSE
						Z<='0';
					END IF;
					
					IF temp<TO_SIGNED(0,8) THEN
						N<='1';
					ELSE
						N<='0';
					END IF;
					saida<=temp;
				ELSE
					
				END IF;
		END PROCESS flags;
END ARCHITECTURE ula_descrita;