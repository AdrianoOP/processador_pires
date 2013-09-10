LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.numeric_std.ALL;


entity bloco_dados_simu is
end bloco_dados_simu;

architecture estimulos of bloco_dados_simu is
	-- declaracao do componente sob teste (DUT - Development Under Test)
	COMPONENT bloco_dados
			PORT(	Z,N						:		OUT STD_LOGIC;
					ULA_ctrl				:		IN STD_LOGIC_VECTOR (3 DOWNTO 0);
					mRom_en,mRam_en			:		IN STD_LOGIC;
					clk						:		IN STD_LOGIC;
					reset					:		IN STD_LOGIC;
					A_en,A_sel				:		IN STD_LOGIC;
					B_en					:		IN STD_LOGIC;
					PC_en					:		IN STD_LOGIC;
					IR_en					:		IN STD_LOGIC;
					Buss_C_ctrl				:		IN		STD_LOGIC;	-- Sinais de controle do BussC
					Buss_D_ctrl				:		IN		STD_LOGIC;	-- Sinais de controle do BussD
					teste_ULA				:		OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
					teste_C					:		OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
					teste_D					:		OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
					teste_IN				:		IN STD_LOGIC_VECTOR (7 DOWNTO 0)
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
	signal A_sel		:	STD_LOGIC;
	signal Z			:	STD_LOGIC;
	signal N			:	STD_LOGIC;
	signal teste_ULA	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
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
		teste_IN=>teste_IN
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
		A_en<='0'; A_sel<='1';
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
		-- Testa a func jump end
		-- comeca o primeiro ciclo de clock
		-- comandos que o bloco de controle deve passar
		WAIT FOR 1 NS;
		reset<='0';
		IR_en<='1';
		PC_en<='0';
		mRom_en<='1';
		clk<='1'; -- da a borda de subida do clock
		Buss_D_ctrl<='0'; --seleciona IR para Buss D
		Buss_C_ctrl<='0'; -- seleciona PC para Buss C
		ULA_ctrl<="0000"; -- ULA PASSA_C
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de descida do clock
		-- aqui eh esperado teste_ULA=>"00000000";
		-- termina o primeiro ciclo de clock
		PC_en<='1';
		ULA_ctrl<="0110"; -- ULA INC_C
		WAIT FOR 10 NS;
		-- comeca o segundo ciclo de clock
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		IR_en<='1';	
		PC_en<='1';
		Buss_D_ctrl<='0'; --seleciona IR para Buss D
		Buss_C_ctrl<='0'; -- seleciona PC para Buss C
		ULA_ctrl<="0110"; -- ULA INC_C
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de descida do clock
		ULA_ctrl<="0001"; -- ULA PASSA_D
		-- termina o segundo ciclo de clock
		WAIT FOR 10 NS;
		-- comeca o terceiro ciclo de clock
		clk<='1'; -- da a borda de subida do clock
		-- comandos que o bloco de controle deve passar
		IR_en<='1';
		PC_en<='1';
		Buss_D_ctrl<='0'; --seleciona IR para Buss D
		Buss_C_ctrl<='0'; -- seleciona PC para Buss C		
		ULA_ctrl<="0001"; -- ULA PASSA_D
		WAIT FOR 10 NS;
		clk<='0'; -- da a borda de descida do clock
		-- termina o terceiro ciclo de clock
		WAIT FOR 10 NS;
	END PROCESS sinais;
END estimulos;