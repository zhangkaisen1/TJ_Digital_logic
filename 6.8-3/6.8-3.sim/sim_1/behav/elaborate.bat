@echo off
set xv_path=D:\\Vivado\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 5e44ebb2c2b948db8c9215d2be8cb58b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Regfiles_tb_behav xil_defaultlib.Regfiles_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
