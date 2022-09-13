@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 954d901e1ab849ed94b46afb568bdbf6 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sequence_detector_tb_behav xil_defaultlib.sequence_detector_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
