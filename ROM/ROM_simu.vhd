LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.numeric_std.ALL;


entity ROM_simu is
end ROM_simu;

architecture estimulos of ROM_simu is
	-- declaracao do componente sob teste (DUT - Development Under Test)
	COMPONENT ROM
	PORT (
			address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock	: IN STD_LOGIC ;
			clken	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT;
	
	--sinais para conectar no dispositivo sob teste
	SIGNAL 	address				:		STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL 	clock0, clocken0	:		STD_LOGIC;
	SIGNAL	q_a					:		STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
	ROM1 : ROM
	PORT MAP(
		address=>address,
		clock=>clock0,
		clken=>clocken0,
		q=>q_a
	);
	
	-- Processo que gera os sinais de teste para a ROM
	sinais : PROCESS
	BEGIN
		address<="00000000";
		clocken0<='1';
		WAIT FOR 20 NS;
		address<="00000001";
		WAIT FOR 22 NS;
		address<="10000000";
		WAIT FOR 20 NS;
		address<=std_logic_vector(to_unsigned(18,8));
		WAIT FOR 20 NS;
	END PROCESS sinais;
	
	-- Processo que gera o clock
	clock : PROCESS
	BEGIN
		clock0<='0';
		WAIT FOR 10 NS;
		clock0<='1';
		WAIT FOR 10 NS;
	END PROCESS clock;
END estimulos;