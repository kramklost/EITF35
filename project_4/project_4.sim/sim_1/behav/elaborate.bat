@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto ffc48463f1e14b319a6b768b53fc94da -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_ALU_behav xil_defaultlib.tb_ALU -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
