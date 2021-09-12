@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 70b177398a77403aa380325dea0d4621 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Lab0A_tb_behav xil_defaultlib.Lab0A_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
