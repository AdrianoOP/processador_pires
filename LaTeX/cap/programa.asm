#programa assembly  pra memoria ROM_mem.mif #

Inicio:
	LI 00; # carrega A com 0;
	STA 0x10; # grava no endereco 16
	LI 01; # -- Carrega 5 em A
	SWP; #-- B <=> A
	LI 01;
	MUL; #B*A => 1*1 = 01;
	SWP;
	LI 01;
	ADD; #A+B = 1 + 1 = 02;

Loop:
	SWP;
	LI -1;
	ADD;
	SWP;
	LDA 0x10; #le do endereco 16
	BLT Loop; #desvia pro loop o valor na memoria seja menor que B
Fim:
	HALT;
	