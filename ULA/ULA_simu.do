#**** Arquivo para simulacao da ULA *****#

#carrega o work
vlib work
#carrega os arquivos vhd
vcom ULA.vhd ULA_simu.vhd
vsim -t ns work.ULA_simu
view wave
add wave -radix binary /C
add wave -radix binary /D
add wave -radix binary /saida
add wave -radix binary /Z
add wave -radix binary /N
add wave -radix binary /ULA_ctrl
run 500 ns