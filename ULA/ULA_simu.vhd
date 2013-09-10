LIBRARY IEEE;
USE IEEE.std_logic_1164.All;
USE IEEE.numeric_std.ALL;


entity ULA_simu is
end ULA_simu;

architecture estimulos of ULA_simu is
	-- declaracao do componente sob teste (DUT - Development Under Test)
	COMPONENT ULA
			PORT(	Z,N				:		OUT STD_LOGIC;
					C,D				:		IN SIGNED (7 DOWNTO 0);
					saida			:		OUT SIGNED (7 DOWNTO 0);
					ULA_ctrl		:		IN STD_LOGIC_VECTOR (3 DOWNTO 0);
					reset			:		IN STD_LOGIC
			);
	END COMPONENT ULA;
	
	--sinais para conectar no dispositivo sob teste
	SIGNAL 	C,D			:		SIGNED (7 DOWNTO 0);
	SIGNAL 	Z,N			:		STD_LOGIC;
	SIGNAL	ULA_ctrl	:		STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL	saida		:		SIGNED (7 DOWNTO 0);
	SIGNAL	reset		:		STD_LOGIC;
	
BEGIN
	ULA1 : ULA
	PORT MAP(
		C=>C, D=>D, Z=>Z, N=>N, ULA_ctrl=>ULA_ctrl, saida=>saida, reset=>reset
	);
	
	-- Processo que gera os sinais de teste para a ULA
	sinais : PROCESS
	BEGIN
		-- testa Reset
		reset<='1';
		WAIT FOR 10 NS;
		reset<='0';
		--testa o PASSA_C OK
		ULA_ctrl<="0000";
		C<="10101010";
		WAIT FOR 1 NS;
		C<="10101011";
		WAIT FOR 10 NS;
		--testa o PASSA_D OK
		ULA_ctrl<="0001";
		D<="10101010";
		WAIT FOR 1 NS;
		D<="10101011";
		WAIT FOR 10 NS;
		--testa o C AND D OK
		ULA_ctrl<="0010";
		D<="10101010";
		C<="10101011";
		WAIT FOR 1 NS;
		D<="10101011";
		WAIT FOR 10 NS;
		--testa o C OR D OK
		ULA_ctrl<="0011";
		D<="10101010";
		C<="10101011";
		WAIT FOR 1 NS;
		D<="10101011";
		WAIT FOR 10 NS;
		--testa o NOT C OK
		ULA_ctrl<="0100";
		C<="10101011";
		WAIT FOR 1 NS;
		C<="10101010";
		WAIT FOR 10 NS;
		--testa o C + D Ok caso nao precise gerar flag
		ULA_ctrl<="0101";
		D<=TO_SIGNED(1,8);
		C<=TO_SIGNED(-2,8);
		WAIT FOR 2 NS;
		D<=TO_SIGNED(3,8);
		WAIT FOR 10 NS;
		--testa o inc C OK
		ULA_ctrl<="0110";
		C<=TO_SIGNED(2,8);
		WAIT FOR 2 NS;
		C<=TO_SIGNED(6,8);
		WAIT FOR 10 NS;
		--testa o MUL_LSB checar
		ULA_ctrl<="0111";
		D<=TO_SIGNED(1,8);
		C<=TO_SIGNED(-2,8);
		WAIT FOR 2 NS;
		D<=TO_SIGNED(3,8);
		WAIT FOR 10 NS;
		--testa o MUL_HSB checar
		ULA_ctrl<="1000";
		D<=TO_SIGNED(1,8);
		C<=TO_SIGNED(2,8);
		WAIT FOR 2 NS;
		D<=TO_SIGNED(3,8);
		WAIT FOR 10 NS;
		--testa o C-D OK
		ULA_ctrl<="1001";
		D<=TO_SIGNED(1,8);
		C<=TO_SIGNED(1,8);
		WAIT FOR 4 NS;
		D<=TO_SIGNED(3,8);
		WAIT FOR 10 NS;
	END PROCESS sinais;
END estimulos;