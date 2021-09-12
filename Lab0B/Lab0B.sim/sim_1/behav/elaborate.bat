@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 28986111ebd1427096f21077ae6a880b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Lab0B_tb_behav xil_defaultlib.Lab0B_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
