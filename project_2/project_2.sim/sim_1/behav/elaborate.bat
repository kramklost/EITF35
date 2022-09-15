@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto c6b32340fad14973a908724499597a4a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_keyboard_behav xil_defaultlib.tb_keyboard -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
