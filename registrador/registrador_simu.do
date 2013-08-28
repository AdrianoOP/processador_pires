#**** Arquivo para simulacao do registrador *****#

#carrega o work
vlib work
#carrega os arquivos vhd
vcom registrador.vhd registrador_simu.vhd
vsim -t ns work.registrador_simu
view wave
add wave -radix binary /clock
add wave -radix binary /d_in
add wave -radix binary /d_out
add wave -radix binary /r_en
add wave -radix binary /r_ctrl
run 500 ns