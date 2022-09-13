@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 7d42f00fe84a41448182d7f1b1b83400 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_keyboard_behav xil_defaultlib.tb_keyboard -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
