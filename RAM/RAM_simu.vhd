LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.numeric_std.ALL;


entity RAM_simu is
end RAM_simu;

architecture estimulos of RAM_simu is
	-- declaracao do componente sob teste (DUT - Development Under Test)
	COMPONENT RAM
	PORT (
			address, data: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			inclock	: IN STD_LOGIC ;
			wren	: IN STD_LOGIC ; --habilita escrita
			q	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT;
	
	--sinais para conectar no dispositivo sob teste
	SIGNAL 	address				:		STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL 	clk, mRam_en	:		STD_LOGIC;
	SIGNAL	d_out					:		STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL	d_in					:		STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
	RAM1 : RAM
	PORT MAP(
		address=>address,
		inclock=>clk,
		wren=>mRam_en,
		q=>d_out,
		data=>d_in
	);
	
	-- Processo que gera os sinais de teste para a ROM
	sinais : PROCESS
	BEGIN
		address<="00000000"; 
		d_in<="11111111";
		mRam_en<='1';
		-- escreve no endereco 0
		WAIT FOR 25 NS;
		address<="00000001";
		mRam_en<='1';
		d_in<="00000000";
		-- escreve no endereco 1
		WAIT FOR 25 NS;
		mRam_en<='0';
		address<="00000000";
		-- le do endereco 0
		WAIT FOR 25 NS;
		address<="00000001";
		--le do endereco 1
		WAIT FOR 25 NS;
		address<="00000010";
		--le do endereco 2
		WAIT FOR 25 NS;
	END PROCESS sinais;
	
	-- Processo que gera o clock
	clock : PROCESS
	BEGIN
		clk<='0';
		WAIT FOR 10 NS;
		clk<='1';
		WAIT FOR 10 NS;
	END PROCESS clock;
END estimulos;