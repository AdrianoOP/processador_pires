LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.numeric_std.ALL;


entity top_level_simu is
end top_level_simu;

architecture estimulos of top_level_simu is
	-- declaracao do componente sob teste (DUT - Development Under Test)
	COMPONENT top_level
	PORT(
		DEBUG			:	OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		reset			:	IN 	STD_LOGIC;
		clk_master	:	IN 	STD_LOGIC;
		PC				:	OUT 	STD_LOGIC_VECTOR (7 DOWNTO 0);
		A				:	OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
		B				:	OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
		IR				:	OUT	STD_LOGIC_VECTOR	(7 DOWNTO 0);
		RAM_IN		: 	IN		STD_LOGIC_VECTOR (7 DOWNTO 0);
		RAM_OUT		: 	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT top_level;
	
	--sinais para conectar no dispositivo sob teste
	signal reset		:	STD_LOGIC;
	signal clk_master	:	STD_LOGIC;
	signal PC			:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal ESTADO		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal A			:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal B			:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal RAM_IN		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal IR		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal RAM_OUT		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	
BEGIN
	micro : top_level
	PORT MAP(
		reset=>reset,
		clk_master=>clk_master,
		PC=>PC,
		A=>A,
		B=>B,
		DEBUG=>ESTADO,
		RAM_IN=>RAM_IN,
		IR=>IR,
		RAM_OUT=>RAM_OUT
	);
	
	-- Processo que gera os sinais de teste para o bloco de dados
	Preset : PROCESS
	BEGIN
		reset<='1'; -- Faz o reset dos registradores
		WAIT FOR 5 NS;
		reset<='0';
		RAM_IN<="11001100";
		WAIT FOR 1000000 NS;
	END PROCESS Preset;
	
	clock : PROCESS
	BEGIN
		WAIT FOR 1 NS;
		clk_master<='1';
		WAIT FOR 10 NS;
		clk_master<='0';
		WAIT FOR 10 NS;
	END PROCESS clock;
END estimulos;