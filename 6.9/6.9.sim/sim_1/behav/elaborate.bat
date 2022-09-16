@echo off
set xv_path=D:\\Vivado\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 35657436cf1b4ebfaf402838e336dfde -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot alu_tb_behav xil_defaultlib.alu_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
