######################################################################
#
# File name : three_state_gates_tb_simulate.do
# Created on: Fri Oct 08 17:45:05 +0800 2021
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.three_state_gates_tb xil_defaultlib.glbl

do {three_state_gates_tb_wave.do}

view wave
view structure
view signals

do {three_state_gates_tb.udo}

run 1000ns
