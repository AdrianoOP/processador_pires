#**** Arquivo para simulacao da ULA *****#

#carrega o work
vlib work
#carrega os arquivos vhd
vcom ../registrador/registrador.vhd
vcom ../ULA/ULA.vhd
vcom ../ROM/ROM.vhd
vcom ../RAM/RAM.vhd
vcom bloco_dados.vhd bloco_dados_simu.vhd
vsim -t ns work.bloco_dados_simu
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
run 100 ns