######################################################################
#
# File name : display7_tb_simulate.do
# Created on: Wed Oct 13 11:02:12 +0800 2021
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.display7_tb xil_defaultlib.glbl

do {display7_tb_wave.do}

view wave
view structure
view signals

do {display7_tb.udo}

run 1000ns
