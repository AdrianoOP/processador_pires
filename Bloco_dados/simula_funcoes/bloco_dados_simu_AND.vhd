LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.numeric_std.ALL;


entity bloco_dados_simu_AND is
end bloco_dados_simu_AND;

architecture estimulos of bloco_dados_simu_AND is
	-- declaracao do componente sob teste (DUT - Development Under Test)
	COMPONENT bloco_dados
	PORT (
		Z							:		OUT 	STD_LOGIC; --	flag Z
		N							:		OUT 	STD_LOGIC; --	flag N
		ULA_ctrl					:		IN		STD_LOGIC_VECTOR (3 DOWNTO 0); -- Sinais de controle da ULA
		mRom_en						:		IN		STD_LOGIC;	-- Habilita ROM
		mRam_en						:		IN		STD_LOGIC;	-- Habilita RAM
		clk							:		IN		STD_LOGIC;	-- sinal de clk
		reset						:		IN		STD_LOGIC;	-- sinal master de reset
		A_en						:		IN		STD_LOGIC;	-- Sinais de controle do reg A
		A_sel						:		IN		STD_LOGIC_VECTOR (1 DOWNTO 0);	-- Sinais de controle do reg A
		B_en						:		IN		STD_LOGIC;	-- Sinais de controle do reg B
		PC_en						:		IN		STD_LOGIC;	-- Sinais de controle do reg PC
		IR_en						:		IN		STD_LOGIC;	-- Sinais de controle do reg IR
		ULA_en						:		IN		STD_LOGIC;	-- Sinais de controle da ULA
		Buss_C_ctrl					:		IN		STD_LOGIC;	-- Sinais de controle do BussC
		Buss_D_ctrl					:		IN		STD_LOGIC;	-- Sinais de controle do BussD
		RAM_OUT						:		OUT		STD_LOGIC_VECTOR 	(7 DOWNTO 0);
		RAM_IN						:		IN		STD_LOGIC_VECTOR 	(7 DOWNTO 0);
		teste_ULA					:		OUT		STD_LOGIC_VECTOR 	(7 DOWNTO 0);	-- sinal para testar a saida da ULA
		teste_C						:		OUT		STD_LOGIC_VECTOR	(7 DOWNTO 0);
		teste_D						:		OUT		STD_LOGIC_VECTOR	(7 DOWNTO 0);
		teste_IN					:		IN		STD_LOGIC_VECTOR	(7 DOWNTO 0)
	);
	END COMPONENT bloco_dados;
	
	--sinais para conectar no dispositivo sob teste
	signal reset		:	STD_LOGIC;
	signal clk			:	STD_LOGIC;
	signal ULA_ctrl		:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	signal mRom_en		:	STD_LOGIC;
	signal mRam_en		:	STD_LOGIC;
	signal A_en			:	STD_LOGIC;
	signal B_en			:	STD_LOGIC;
	signal IR_en		:	STD_LOGIC;
	signal PC_en		:	STD_LOGIC;
	signal Buss_C_ctrl	:	STD_LOGIC;
	signal Buss_D_ctrl	:	STD_LOGIC;
	signal A_sel		:	STD_LOGIC (1 DOWNTO 0);
	signal Z			:	STD_LOGIC;
	signal N			:	STD_LOGIC;
	signal ULA_en		:	STD_LOGIC;
	signal teste_ULA	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal RAM_IN	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal RAM_OUT	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal teste_C		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal teste_D		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal teste_IN		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	
BEGIN
	bloco : bloco_dados
	PORT MAP(
		reset=>reset,
		clk=>clk,
		ULA_ctrl=>ULA_ctrl,
		mRom_en=>mRom_en,
		mRam_en=>mRam_en,
		A_en=>A_en,
		B_en=>B_en,
		IR_en=>IR_en,
		PC_en=>PC_en,
		Buss_C_ctrl=>Buss_C_ctrl,
		Buss_D_ctrl=>Buss_D_ctrl,
		A_sel=>A_sel,
		Z=>Z,
		N=>N,
		teste_ULA=>teste_ULA,
		teste_C=>teste_C,
		teste_D=>teste_D,
		ULA_en=>ULA_en,
		teste_IN=>teste_IN,
		RAM_IN=>RAM_IN,
		RAM_OUT=>RAM_OUT
	);
	
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
	
	-- Processo que gera os sinais de teste para o bloco de dados
	sinais : PROCESS
	BEGIN
		-- Faz o reset geral
		A_en<='0'; A_sel<='0';
		B_en<='0'; 
		PC_en<='0'; 
		IR_en<='0';  
		Buss_C_ctrl<='0';
		Buss_D_ctrl<='0';
		mRom_en<='0';
		mRam_en<='0';
		ULA_ctrl<="0000";
		reset<='1'; -- Faz o reset dos registradores
		clk<='0'; --deixa o clock em nivel baixo
		RAM_IN<="11000011"; -- define um valor para as chaves na entrada
		
		
		--FUNCAO LI X -------------------
		-- comeca o primeiro ciclo de clock
		WAIT FOR 1 NS; -- estado s0 da maquina de estados
		reset<='0';
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		IR_en<='1';
		PC_en<='1';
		mRom_en<='1';
		Buss_D_ctrl<='0'; --seleciona IR para Buss D
		Buss_C_ctrl<='0'; -- seleciona PC para Buss C
		ULA_ctrl<="0000"; -- ULA PASSA_C
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de descida do clock
		-- comandos que o bloco de controle deve passar
		PC_en<='1';
		ULA_ctrl<="0110"; -- ULA INC_C
		-- termina o primeiro ciclo de clock
		
		-- comeca o segundo ciclo de clock
		WAIT FOR 10 NS; -- estado s1 da maquina
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		PC_en<='1';
		Buss_D_ctrl<='0'; --seleciona IR para Buss D
		Buss_C_ctrl<='0'; -- seleciona PC para Buss C
		ULA_ctrl<="0001"; -- ULA PASSA_D passando o endereco da instrucao
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de descida do clock
		-- comandos que o bloco de controle deve passar
		PC_en<='0';
		mRom_en<='0';
		ULA_ctrl<="0001"; -- ULA PASSA_D
		-- termina o segundo ciclo de clock
		
		-- comeca o terceiro ciclo de clock
		WAIT FOR 10 NS;
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		A_en<='1';
		A_sel<='1'; -- pega da ULA
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		
		-- termina o terceiro ciclo de clock
		
		-- comeca o quarto ciclo de clock
		WAIT FOR 10 NS;
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		A_en<='0';
		A_sel<='1'; -- pega da ULA
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		ULA_ctrl<="0110"; -- ULA INC_C
		PC_en<='1';
		mRom_en<='1';
		-- termina o quarto ciclo de clock
		--FUNCAO LI X -------------------
		
		--FUNCAO ADD X -------------------
		
		-- comeca o primeiro ciclo de clock
		WAIT FOR 10 NS; -- estado s0 da maquina de estados
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		IR_en<='1';
		PC_en<='1';
		mRom_en<='1';
		Buss_D_ctrl<='0'; --seleciona IR para Buss D
		Buss_C_ctrl<='0'; -- seleciona PC para Buss C
		ULA_ctrl<="0000"; -- ULA PASSA_C
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de descida do clock
		-- comandos que o bloco de controle deve passar
		PC_en<='1';
		ULA_ctrl<="0110"; -- ULA INC_C
		-- termina o primeiro ciclo de clock
		
		-- comeca o segundo ciclo de clock
		WAIT FOR 10 NS; -- estado s1 da maquina
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		PC_en<='1';
		Buss_D_ctrl<='1'; --seleciona B para Buss D
		Buss_C_ctrl<='1'; -- seleciona A para Buss C
		ULA_ctrl<="0010"; -- ULA C AND D
		A_en<='1';
		A_sel<='1'; -- pega da ULA
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de descida do clock
		-- comandos que o bloco de controle deve passar
		PC_en<='0';
		mRom_en<='0';
		ULA_ctrl<="0010"; -- ULA C AND D
		-- termina o segundo ciclo de clock
		
		-- comeca o terceiro ciclo de clock
		WAIT FOR 10 NS;
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		A_en<='0';
		A_sel<='1'; -- pega da ULA
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		Buss_D_ctrl<='0'; --seleciona IR para Buss D
		Buss_C_ctrl<='0'; -- seleciona PC para Buss C
		ULA_ctrl<="0110"; -- ULA INC_C
		PC_en<='1';
		mRom_en<='1';
		-- termina o terceiro ciclo de clock
		
		-- comeca o quarto ciclo de clock
		WAIT FOR 10 NS;
		clk<='1'; -- da a borda de subida do clock
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de subida do clock
		-- termina o quarto ciclo de clock
		
		WAIT FOR 10 NS;
		clk<='1'; -- da a borda de subida do clock
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de subida do clock
		WAIT FOR 10 NS;
	END PROCESS sinais;
END estimulos;