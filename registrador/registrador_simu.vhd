Library IEEE;
use IEEE.std_logic_1164.all;

entity registrador_simu is
end registrador_simu;

architecture estimulos of registrador_simu is
	-- declaracao do componente sob teste (DUT - Development Under Test)
	COMPONENT registrador
			port(	clock, r_en, r_ctrl:		in std_logic;
			d_in:							in std_logic_vector (7 DOWNTO 0);
			d_out:						out std_logic_vector (7 DOWNTO 0)
			);
	END COMPONENT registrador;
	
	--sinais para conectar no dispositivo sob teste
	SIGNAL 	d_in		:	std_logic_vector (7 DOWNTO 0) :="11111110";
	SIGNAL 	clock		:	std_logic :='0';
	SIGNAL	r_en		:	std_logic :='1';
	SIGNAL	r_ctrl		:	std_logic :='1';
	SIGNAL 	d_out		:	STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN

	reg8 : registrador
	PORT MAP(
		d_in=>d_in, d_out=>d_out, clock=>clock, r_en=>r_en, r_ctrl=>r_ctrl
	);
	
	-- Processo que gera o sinal de clock
	clk_proc : PROCESS
	BEGIN
		clock <= '0';
		WAIT FOR 20 NS;
		clock <= '1';
		WAIT FOR 20 NS;
	END PROCESS clk_proc;
	
	-- Processo que gera os sinais de teste do registrador
	sinais : PROCESS
	BEGIN
		r_en<='1';
		r_ctrl<='1';
		WAIT FOR 30 ns; --30
		r_ctrl<='0';
		WAIT FOR 30 ns; --30
		r_ctrl<='1';
		WAIT FOR 30 ns; --30
		r_ctrl<='0';
		WAIT FOR 30 ns; --30
		r_ctrl<='1';
		WAIT FOR 5 ns; --60
		r_en<='0';
		WAIT FOR 60 ns; --90
		d_in<="11001100";
		WAIT FOR 60 ns; --120
		r_ctrl<='1';
		WAIT FOR 60 ns; --150
		r_en<='1';
		WAIT FOR 300 ns; --30
	END PROCESS sinais;
END estimulos;