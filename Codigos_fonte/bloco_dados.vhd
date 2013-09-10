LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY bloco_dados IS
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
		RAM_OUT						:		OUT	STD_LOGIC_VECTOR 	(7 DOWNTO 0);
		RAM_IN						:		IN		STD_LOGIC_VECTOR 	(7 DOWNTO 0);
		IR								:		OUT	STD_LOGIC_VECTOR 	(7 DOWNTO 0);
		teste_ULA					:		OUT	STD_LOGIC_VECTOR 	(7 DOWNTO 0);	-- sinal para testar a saida da ULA
		teste_C						:		OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
		teste_D						:		OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE ligacoes OF bloco_dados IS
	-- descricao dos sinais que  serao usados no bloco de dados
	SIGNAL s_RAM	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL muxA		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL buss_C	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL buss_D	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL bussC	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL bussD	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL e_IR		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL e_RAM	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL s_IR		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL s_A		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL s_B		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL s_PC		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL s_ULA	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL sULA	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal signed_ULA:	SIGNED (7 DOWNTO 0);
	signal signed_C:	SIGNED (7 DOWNTO 0);
	signal signed_D:	SIGNED (7 DOWNTO 0);
	SIGNAL not_clk	: std_logic;
	-- descricao dos componentes que serao usados no bloco de dados
	-- ULA
	COMPONENT ULA
		PORT(	C,D		:	IN SIGNED  (7 DOWNTO 0);
				saida		: 	OUT SIGNED  (7 DOWNTO 0);
				ULA_en	:	IN	STD_LOGIC;
				ULA_ctrl	: 	IN STD_LOGIC_VECTOR (3 DOWNTO 0); -- Recebe a opcao de processamento da ULA
				Z,N		: 	OUT STD_LOGIC; --representa os flags
				reset		:	IN STD_LOGIC
				);
	END COMPONENT ULA;
	-- ROM
	COMPONENT ROM
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clken			: IN STD_LOGIC;
			clock			: IN STD_LOGIC;
			q				: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT ROM;
	-- RAM
	COMPONENT RAM
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			data			: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			inclock		: IN STD_LOGIC;
			wren			: IN STD_LOGIC;
			RAM_OUT		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			RAM_IN		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			q				: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT RAM;
	-- Registrador
	COMPONENT registrador
		port(	clock, r_en, reset			:	in std_logic;
				d_in								:	in std_logic_vector (7 DOWNTO 0);
				d_out								:	out std_logic_vector (7 DOWNTO 0)
				);
	END COMPONENT registrador;
BEGIN
	not_clk<=not(clk);
	teste_ULA<=s_PC; -- apenas para ler uma saida
	teste_C<=s_A;
	teste_D<=s_B;
	IR<=s_IR;

	-- Fazendo as ligacoes intermediarias
	PmuxA: PROCESS(A_sel,clk,s_RAM,s_ULA) BEGIN
		IF (A_sel="00") THEN 
			muxA<=s_RAM; -- PEGA dado da RAM
		ELSIF (A_sel="01") THEN
			muxA<=s_ULA; -- PEGA dado da ULA
		ELSIF	(A_sel="10") THEN
			muxA<=s_B; -- PEGA dado de B
		ELSE
			muxA<=s_RAM; -- PEGA dado de B
		END IF;
	END PROCESS PmuxA;
	
	PmuxBussC:	PROCESS(Buss_C_ctrl,s_A,s_PC,clk) BEGIN
		IF (Buss_C_ctrl='0') THEN -- Seleciona o PC como C
			buss_C<=s_PC;
		ELSE -- seleciona o A como C
			buss_C<=s_A;
		END IF;
	END PROCESS PmuxBussC;
	
	PmuxBussD:	PROCESS(Buss_D_ctrl,s_B,s_IR,clk) BEGIN
		IF (Buss_D_ctrl='0') THEN -- Seleciona o IR como D
			buss_D<=s_IR;
		ELSE -- seleciona o B como D
			buss_D<=s_B;
		END IF;
	END PROCESS PmuxBussD;

	-- criando e conectando os componentes
	-- Registradores
	-- Reg A
	RegA : registrador PORT MAP 
	(	clock=>not_clk,
		r_en=>A_en,
		reset=>reset,
		d_in=>muxA, -- essa entrada eh multiplexada em outro processo
		d_out=>s_A
	);
	
	-- Reg B
	RegB : registrador PORT MAP 
	(	clock=>clk,
		r_en=>B_en,
		reset=>reset,
		d_in=>s_ULA,
		d_out=>s_B
	);
	
	-- Reg IR
	RegIR : registrador PORT MAP 
	(	clock=>clk,
		r_en=>IR_en,
		reset=>reset,
		d_in=>e_IR,
		d_out=>s_IR
	);
	
	-- Reg PC
	RegPC : registrador PORT MAP 
	(	clock=>clk,
		r_en=>PC_en,
		reset=>reset,
		d_in=>s_ULA,
		d_out=>s_PC
	);
	
	--	ULA
	ULA1 : ULA PORT MAP 
	(	C=>signed_C,
		D=>signed_D,
		ULA_ctrl=>ULA_ctrl,
		saida=>signed_ULA,
		Z=>Z,
		N=>N,
		reset=>reset,
		ULA_en=>ULA_en
	);
	
	-- Conversoes de tipo
	s_ULA<=STD_LOGIC_VECTOR(signed_ULA);
	signed_D<=signed(buss_D);
	signed_C<=signed(buss_C);
	
	--	ROM
	-- ROM liga direto na entrada de IR
	ROM1 : ROM PORT MAP (address=>s_ULA, clken=>mRom_en, clock=>not_clk, q=>e_IR);

	--	RAM
	RAM1 : RAM PORT MAP (address=>s_ULA, inclock=>clk, data=>s_A, 
			wren=>mRam_en, q=>s_RAM, RAM_IN=>RAM_IN, RAM_OUT=>RAM_OUT);
	
END ARCHITECTURE;