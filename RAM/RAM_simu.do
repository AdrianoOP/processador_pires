#**** Arquivo para simulacao da RAM *****#

#carrega o work
vlib work
#carrega os arquivos vhd
vcom RAM.vhd RAM_simu.vhd
vsim -t ns work.RAM_simu
view wave
add wave -radix binary /address
add wave -radix binary /d_in
add wave -radix binary /d_out
add wave -radix binary /mRam_en
add wave -radix binary /clk
run 500 ns