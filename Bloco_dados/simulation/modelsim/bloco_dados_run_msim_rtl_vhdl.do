transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Sites/Dropbox/temporaria/trabalho_microprocessadores/processador_pires/RAM/RAM.vhd}
vcom -93 -work work {C:/Sites/Dropbox/temporaria/trabalho_microprocessadores/processador_pires/ULA/ULA.vhd}
vcom -93 -work work {C:/Sites/Dropbox/temporaria/trabalho_microprocessadores/processador_pires/ROM/ROM.vhd}
vcom -93 -work work {C:/Sites/Dropbox/temporaria/trabalho_microprocessadores/processador_pires/registrador/registrador.vhd}
vcom -93 -work work {C:/Sites/Dropbox/temporaria/trabalho_microprocessadores/processador_pires/Bloco_dados/bloco_dados.vhd}

