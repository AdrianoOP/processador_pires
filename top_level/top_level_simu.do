#**** Arquivo para simulacao da ULA *****#

cd C:/Sites/Dropbox/temporaria/trabalho_microprocessadores/processador_pires/top_level

#carrega o work
vlib work
#carrega os arquivos vhd
vcom ../registrador/registrador.vhd
vcom ../ULA/ULA.vhd
vcom ../ROM/ROM.vhd
vcom ../RAM/RAM.vhd
vcom ../bloco_dados/bloco_dados.vhd
vcom ../controle/controle.vhd
vcom top_level.vhd top_level_simu.vhd
vsim -t ns work.top_level_simu
view wave
add wave -radix binary /reset
add wave -radix binary /clk_master
add wave -radix decimal /A
add wave -radix decimal /B
add wave -radix binary /IR
add wave -radix binary /PC
add wave -radix decimal /ESTADO
run 2500 ns