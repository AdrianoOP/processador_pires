#**** Arquivo para simulacao da ULA *****#

#carrega o work
vlib work
#carrega os arquivos vhd
vcom ROM.vhd ROM_simu.vhd
vsim -t ns work.ROM_simu
view wave
add wave -radix binary /address
add wave -radix binary /q_a
add wave -radix binary /clock0
add wave -radix binary /clocken0
run 500 ns