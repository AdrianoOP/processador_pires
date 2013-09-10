, LILIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;



ENTITY controle IS
	PORT(
		IR						:	IN		STD_LOGIC_VECTOR (7 DOWNTO 0);
		DEBUG					:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0);
		ULA_ctrl				:	OUT 	STD_LOGIC_VECTOR (3 DOWNTO 0);
		Z,N					:	IN		STD_LOGIC;
		mRom_en,mRam_en	:	OUT	STD_LOGIC;
		PC_en,IR_en			:	OUT	STD_LOGIC;
		A_en,B_en			:	OUT	STD_LOGIC;
		A_sel					:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0);
		clk					:	IN		STD_LOGIC;
		reset					:	IN		STD_LOGIC;
		ULA_en				:	OUT	STD_LOGIC;
		Buss_C_ctrl			:	OUT	STD_LOGIC;
		Buss_D_ctrl			:	OUT	STD_LOGIC
	);
END ENTITY;

ARCHITECTURE maquina_estados OF controle IS
	TYPE	estado	IS (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12); --gera um enum de estados
	
	SIGNAL estado_atual,proximo_estado	:	estado;
	
	SIGNAL instrucao	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	
BEGIN
		

		--instrucao<=instrucao_next;
		estado_atual<=proximo_estado;
		
		ATUALIZA_IR:PROCESS(estado_atual,proximo_estado, IR, instrucao) begin
			if(proximo_estado=S2) then
				instrucao<=IR;
			END IF;
		end process;
		
	borda_subida:	PROCESS(clk,reset, estado_atual, proximo_estado,IR,instrucao)	BEGIN
		IF (RISING_EDGE(clk)) THEN
			CASE estado_atual IS
				WHEN S0 =>
					--define o estado inicial para as variaveis
					PC_en<='1'; -- habilita o PC
					IR_en<='1'; -- habilita o IR
					A_en<='0'; 	--	desabilita o A
					A_sel<="00";	-- apenas para garantir a inicializacao
					B_en<='0';	--	desabilita o B
					Buss_C_ctrl<='0';	--	Faz ULA receber PC
					Buss_D_ctrl<='0';	--	Faz ULA receber IR
					ULA_en<='1';		-- habilita a ULA
					mRam_en<='0';
					mRom_en<='1';
					ULA_ctrl<="0000"; -- Passa_C
					proximo_estado<=S1;
					DEBUG<="00000000";
				WHEN S1 =>
					Buss_C_ctrl<='0';	--	Faz ULA receber PC
					Buss_D_ctrl<='0';	--	Faz ULA receber IR
					IR_en<='1'; -- habilita o IR
					PC_en<='1';
					mRom_en<='1';
					mRam_en<='0';
					ULA_en<='1';		-- habilita a ULA
					DEBUG<="00000001";
					Buss_C_ctrl<='0';	--	Faz ULA receber PC
					Buss_D_ctrl<='0';	--	Faz ULA receber IR
					proximo_estado<=S2;
					ULA_ctrl<="0110"; -- ULA: inc_C
				WHEN S2 =>
					mRam_en<='0';
					ULA_en<='1';		-- habilita a ULA
					DEBUG<="00000010";
					PC_en<='0';
					CASE instrucao IS
					WHEN "11111111" => --halt
						PC_en<='1';
						proximo_estado<=S0;
						ULA_ctrl<="1011"; -- DEC_C
					WHEN "00000001" => -- lda
						proximo_estado<=S3;
						ULA_ctrl<="0001"; -- passa_D
					WHEN "00000010" => -- STA
						proximo_estado<=S3;
						mRam_en<='1';
						IR_en<='0';	
						ULA_ctrl<="0001"; -- passa_D passa o endereco pra RAM
					WHEN "00000011" => -- BLT
						proximo_estado<=S3;
						IR_en<='0';	
						PC_en<='0';	
						ULA_ctrl<="1001"; -- C-D
						Buss_C_ctrl<='1'; -- BussC = A
						Buss_D_ctrl<='1'; -- BussD = B
					WHEN "00000100" => -- BEQ
						proximo_estado<=S3;
						IR_en<='0';	
						PC_en<='0';	
						ULA_ctrl<="1001"; -- C-D
						Buss_C_ctrl<='1'; -- BussC = A
						Buss_D_ctrl<='1'; -- BussD = B
					WHEN "00000101" => -- JMP
						proximo_estado<=S3;
						PC_en<='1';
						IR_en<='0';
						ULA_ctrl<="0001"; -- passa_D passa o endereco pra ROM
					WHEN "00010000" => -- ADD
						proximo_estado<=S3;
						PC_en<='0';
						IR_en<='0';
						ULA_ctrl<="0101"; --ADD C+D
						Buss_C_ctrl<='1'; -- BussC = A
						Buss_D_ctrl<='1'; -- BussD = B
					WHEN "00100000" => -- MUL
						proximo_estado<=S7;
						PC_en<='0';
						IR_en<='0';
						ULA_ctrl<="1010"; --ADD CxD
						Buss_C_ctrl<='1'; -- BussC = A
						Buss_D_ctrl<='1'; -- BussD = B
					WHEN "00110000" => -- AND
						proximo_estado<=S3;
						PC_en<='0';
						IR_en<='0';
						ULA_ctrl<="0010"; -- C AND D
						Buss_C_ctrl<='1'; -- BussC = A
						Buss_D_ctrl<='1'; -- BussD = B
					WHEN "01000000" => -- OR
						proximo_estado<=S3;
						PC_en<='0';
						IR_en<='0';
						ULA_ctrl<="0011"; -- C AND D
						Buss_C_ctrl<='1'; -- BussC = A
						Buss_D_ctrl<='1'; -- BussD = B
					WHEN "01010000" => -- NOT
						proximo_estado<=S3;
						PC_en<='0';
						IR_en<='0';
						ULA_ctrl<="0100"; -- NOT_C
						Buss_C_ctrl<='1'; -- BussC = A
						Buss_D_ctrl<='1'; -- BussD = B
					WHEN "01100000" => -- LI
						proximo_estado<=S3;
						A_en<='1';
						A_sel<="01"; -- A pega da ULA, pega D que eh IR
						ULA_ctrl<="0001"; -- PASSA_D
					WHEN "01110000" => -- SWP
						proximo_estado<=S3;
						PC_en<='0';
						IR_en<='0';
						A_en<='0';
						A_sel<="10";--pega direto de B
						ULA_ctrl<="0000"; -- Passa_C
						Buss_C_ctrl<='1'; -- BussC = A
						Buss_D_ctrl<='1'; -- BussD = B
					WHEN OTHERS =>
						proximo_estado<=S5;
						ULA_ctrl<="0000"; -- Passa_C
					END CASE;
				WHEN S3 =>
					mRam_en<='0';
					PC_en<='0';
					IR_en<='0';
					A_en<='0';
					B_en<='0';
					mRom_en<='0';
					ULA_en<='1';		-- habilita a ULA
					DEBUG<="00000011";
					CASE instrucao IS
					WHEN "00000001" => -- lda
						A_sel<="00"; -- seleciona da RAM
						A_en<='1';
						proximo_estado<=S4;
					WHEN "00000010" => -- STA
						mRam_en<='1';
						ULA_ctrl<="0000"; -- passa_C
						Buss_C_ctrl<='1'; -- manda de A
						proximo_estado<=S4;
					WHEN "00000011" => -- BLT
						IF N='1' THEN
							PC_en<='1';
							ULA_ctrl<="0001";-- Passa D
							Buss_C_ctrl<='0';--pega PC pra C
							buss_D_ctrl<='0'; -- pega IR pra D;
							proximo_estado<=S6;
						ELSE
							Buss_C_ctrl<='0';--pega PC pra C
							buss_D_ctrl<='0'; -- pega IR pra D;
							proximo_estado<=S4;
						END IF;
					WHEN "00000100" => -- BEQ
						IF Z='1' THEN
							PC_en<='1';
							ULA_ctrl<="0001";-- Passa D
							Buss_C_ctrl<='0';--pega PC pra C
							buss_D_ctrl<='0'; -- pega IR pra D;
							proximo_estado<=S6;
						ELSE
							Buss_C_ctrl<='0';--pega PC pra C
							buss_D_ctrl<='0'; -- pega IR pra D;
							proximo_estado<=S4;
						END IF;
					WHEN "00000101" => -- JMP
						PC_en<='1';
						proximo_estado<=S0;
					WHEN "00010000" => -- ADD
						proximo_estado<=S4;
						A_en<='1';
						A_sel<="01"; -- seleciona pegar da ULA
					WHEN "00100000" => -- MUL
					WHEN "00110000" => -- AND
						proximo_estado<=S4;
						A_en<='1';
						A_sel<="01"; -- seleciona pegar da ULA
					WHEN "01000000" => -- OR
						proximo_estado<=S4;
						A_en<='1';
						A_sel<="01"; -- seleciona pegar da ULA
					WHEN "01010000" => -- NOT
						proximo_estado<=S4;
						A_en<='1';
						A_sel<="01"; -- seleciona pegar da ULA
					WHEN "01100000" => -- LI
						proximo_estado<=S4;
						A_sel<="01"; -- A pega da ULA, pega D que eh IR
						ULA_ctrl<="0001"; -- Passa_D
					WHEN "01110000" => -- SWP
						B_en<='1'; -- habilita  B para o proxixmo pulso de clock
						A_en<='1';
						A_sel<="10";--pega direto de B
						ULA_ctrl<="0000"; -- passa C
						ULA_en<='0'; -- armazena o valor antigo de A;
						proximo_estado<=S5;
					WHEN OTHERS =>
						proximo_estado<=S0;
						ULA_ctrl<="0000"; -- Passa_C
					END CASE;
				WHEN S4 =>
					DEBUG<="00000100";
					mRam_en<='0';
					A_en<='0';
					B_en<='0';
					CASE instrucao IS
					WHEN "00000001" => -- lda
						PC_en<='1';
						A_en<='0';
						A_sel<="00"; -- A pega da ULA, pega D que eh IR
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN "00000010" => -- STA
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						mRam_en<='1';
						proximo_estado<=S0;
					WHEN "00000011" => -- BLT
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN "00000100" => -- BEQ
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN "00000101" => -- JMP
					WHEN "00010000" => -- ADD
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN "00100000" => -- MUL
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN "00110000" => -- AND
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN "01000000" => -- OR
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN "01010000" => -- NOT
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN "01100000" => -- LI
						proximo_estado<=S0;
						PC_en<='1';
						A_en<='0';
						A_sel<="00"; -- A pega da ULA, pega D que eh IR
						ULA_ctrl<="0110"; -- INC_C
					WHEN "01110000" => -- SWP
						PC_en<='1';
						Buss_C_ctrl<='0'; -- seleciona PC para a ULA
						ULA_ctrl<="0110";
						proximo_estado<=S0;
					WHEN OTHERS =>
						proximo_estado<=S5;
						ULA_ctrl<="0110"; -- Passa_C
					END CASE;
				WHEN S5 =>
					mRam_en<='0';
					DEBUG<="00000101";
					A_en<='0';
					B_en<='0';
					CASE instrucao IS
					WHEN "01110000" => -- SWP
						B_en<='0';
						ULA_en<='1'; -- volta a habilitar a ULA;
						proximo_estado<=S4;
					WHEN OTHERS =>
						proximo_estado<=S5;
						ULA_ctrl<="0110"; -- Passa_C
					END CASE;
				WHEN S6 =>
					mRam_en<='0';
					DEBUG<="00000110";
					A_en<='0';
					B_en<='0';
					CASE instrucao IS
						WHEN "00000011" => --BLT
							PC_en<='1';
							ULA_ctrl<="0001";--passa_D
							proximo_estado<=S0;
						WHEN "00000100" => --BLT
							PC_en<='1';
							ULA_ctrl<="0001";--passa_D
							proximo_estado<=S0;
						WHEN OTHERS =>
					END CASE;
				WHEN S7 =>
					mRam_en<='0';
					DEBUG<="00000111";
					A_en<='1';
					A_sel<="01"; -- Pega da ULA
					ULA_ctrl<="0111";--recebe_parte_baixa MUL
					proximo_estado<=S8;
				WHEN S8 =>
					mRam_en<='0';	
					DEBUG<="00001000";
					A_en<='0';
					B_en<='1';
					ULA_ctrl<="1000";--recebe_parte_alta MUL
					proximo_estado<=S4;
				WHEN OTHERS =>
					proximo_estado<=S0;
			END CASE;
		END IF;
		
		IF (reset='1') THEN
			ULA_ctrl<="0000";
			mRom_en<='1';mRam_en<='0';
			proximo_estado<=S0;
			PC_en<='1';IR_en<='1';
			A_en<='0';B_en<='0';
			A_sel<="00";
			ULA_en<='1';
			Buss_C_ctrl<='0';
			Buss_D_ctrl<='0';
		END IF;
	END PROCESS;
		
END ARCHITECTURE;