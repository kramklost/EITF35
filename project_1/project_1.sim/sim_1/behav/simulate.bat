@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xsim sequence_detector_tb_behav -key {Behavioral:sim_1:Functional:sequence_detector_tb} -tclbatch sequence_detector_tb.tcl -view C:/Users/ma4444sl-s/project_1/sequence_detector_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
