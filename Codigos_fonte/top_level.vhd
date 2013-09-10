LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY top_level IS
	PORT(
		reset			:	IN 	STD_LOGIC;
		clk_master	:	IN 	STD_LOGIC;
		DEBUG			:	OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
		PC				:	OUT 	STD_LOGIC_VECTOR (7 DOWNTO 0);
		A				:	OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
		B				:	OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
		IR				:	OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
		RAM_IN		: 	IN		STD_LOGIC_VECTOR (7 DOWNTO 0);
		RAM_OUT		: 	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE processador_pires OF top_level IS
	COMPONENT bloco_dados
		PORT (
			Z								:		OUT 	STD_LOGIC; --	flag Z
			N								:		OUT 	STD_LOGIC; --	flag N
			ULA_ctrl						:		IN		STD_LOGIC_VECTOR (3 DOWNTO 0); -- Sinais de controle da ULA
			mRom_en						:		IN		STD_LOGIC;	-- Habilita ROM
			mRam_en						:		IN		STD_LOGIC;	-- Habilita RAM
			clk							:		IN		STD_LOGIC;	-- sinal de clk
			reset							:		IN		STD_LOGIC;	-- sinal master de reset
			A_en							:		IN		STD_LOGIC;	-- Sinais de controle do reg A
			A_sel							:		IN		STD_LOGIC_VECTOR (1 DOWNTO 0);	-- Sinais de controle do reg A
			B_en							:		IN		STD_LOGIC;	-- Sinais de controle do reg B
			PC_en							:		IN		STD_LOGIC;	-- Sinais de controle do reg PC
			IR_en							:		IN		STD_LOGIC;	-- Sinais de controle do reg IR
			ULA_en						:		IN		STD_LOGIC;	-- Sinais de controle da ULA
			Buss_C_ctrl					:		IN		STD_LOGIC;	-- Sinais de controle do BussC
			Buss_D_ctrl					:		IN		STD_LOGIC;	-- Sinais de controle do BussD
			IR								:		OUT	STD_LOGIC_VECTOR 	(7 DOWNTO 0);
			RAM_OUT						:		OUT	STD_LOGIC_VECTOR 	(7 DOWNTO 0);
			RAM_IN						:		IN		STD_LOGIC_VECTOR 	(7 DOWNTO 0);
			teste_ULA					:		OUT	STD_LOGIC_VECTOR 	(7 DOWNTO 0);	-- sinal para testar a saida da ULA
			teste_C						:		OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
			teste_D						:		OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT controle
		PORT(
			IR						:	IN		STD_LOGIC_VECTOR (7 DOWNTO 0);
			ULA_ctrl				:	OUT 	STD_LOGIC_VECTOR (3 DOWNTO 0);
			Z,N					:	IN		STD_LOGIC;
			mRom_en,mRam_en	:	OUT	STD_LOGIC;
			PC_en,IR_en			:	OUT	STD_LOGIC;
			A_en,B_en			:	OUT	STD_LOGIC;
			A_sel					:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0);
			clk					:	IN		STD_LOGIC;
			reset					:	IN		STD_LOGIC;
			ULA_en				:	OUT	STD_LOGIC;
			DEBUG					:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0);
			Buss_C_ctrl			:	OUT	STD_LOGIC;
			Buss_D_ctrl			:	OUT	STD_LOGIC
		);
	END COMPONENT;
	
	SIGNAL Z,N,mRom_en,mRam_en,ULA_en,Buss_C_ctrl,Buss_D_ctrl,A_en,B_en,PC_en,IR_en : STD_LOGIC;
	SIGNAL ULA_ctrl : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL s_IR : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL A_sel : STD_LOGIC_VECTOR (1 DOWNTO 0);
BEGIN
	IR<=s_IR;
	bloco:bloco_dados PORT MAP(
		reset=>reset,
		clk=>clk_master,
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
		teste_ULA=>PC,
		teste_C=>A,
		teste_D=>B,
		ULA_en=>ULA_en,
		RAM_IN=>RAM_IN,
		RAM_OUT=>RAM_OUT,
		IR=>s_IR
	);
	
	controlador: controle PORT MAP(
		reset=>reset,
		clk=>clk_master,
		Z=>Z,
		N=>N,
		IR=>s_IR,
		DEBUG=>DEBUG,
		ULA_ctrl=>ULA_ctrl,
		mRom_en=>mRom_en,
		mRam_en=>mRam_en,
		PC_en=>PC_en,
		IR_en=>IR_en,
		A_en=>A_en,
		B_en=>B_en,
		A_sel=>A_sel,
		ULA_en=>ULA_en,
		Buss_C_ctrl=>Buss_C_ctrl,
		Buss_D_ctrl=>Buss_D_ctrl
	);

	
END ARCHITECTURE;