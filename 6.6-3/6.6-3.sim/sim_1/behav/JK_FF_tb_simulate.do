######################################################################
#
# File name : JK_FF_tb_simulate.do
# Created on: Thu Oct 28 23:16:18 +0800 2021
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.JK_FF_tb xil_defaultlib.glbl

do {JK_FF_tb_wave.do}

view wave
view structure
view signals

do {JK_FF_tb.udo}

run 1000ns
