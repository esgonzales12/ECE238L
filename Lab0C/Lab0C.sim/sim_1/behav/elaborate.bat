@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 3010fca3f7864049a645ad53fd864d96 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Lab0C_tb_behav xil_defaultlib.Lab0C_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
