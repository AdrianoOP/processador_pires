#**** Arquivo para simulacao da ULA *****#

#carrega o work

cd C:/Sites/Dropbox/temporaria/trabalho_microprocessadores/processador_pires/Bloco_dados
vlib work
#carrega os arquivos vhd
vcom ../registrador/registrador.vhd
vcom ../ULA/ULA.vhd
vcom ../ROM/ROM.vhd
vcom ../RAM/RAM.vhd
vcom bloco_dados.vhd simula_funcoes/bloco_dados_simu_OR.vhd
vsim -t ns work.bloco_dados_simu_OR
view wave
add wave -radix binary /reset
add wave -radix binary /clk
add wave -radix binary /ULA_ctrl
add wave -radix binary /A_en
add wave -radix binary /B_en
add wave -radix binary /IR_en
add wave -radix binary /PC_en
add wave -radix binary /A_sel
add wave -radix binary /Z
add wave -radix binary /N
add wave -radix binary /teste_ULA
add wave -radix binary /teste_C
add wave -radix binary /teste_D
add wave -radix binary /mRom_en
add wave -radix binary /mRam_en
add wave -radix binary /RAM_IN
add wave -radix binary /RAM_OUT
run 282 ns