@echo off
set xv_path=D:\\Vivado\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto b3f00b33230440ea886724d8933e8df3 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot ram2_tb_behav xil_defaultlib.ram2_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
