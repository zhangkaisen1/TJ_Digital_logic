@echo off
set xv_path=D:\\Vivado\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto bd1944668b2842e78a5b6d685da712f4 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot ram_tb_behav xil_defaultlib.ram_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
