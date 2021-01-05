@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim key_debounce_state_machine_tb_behav -key {Behavioral:sim_1:Functional:key_debounce_state_machine_tb} -tclbatch key_debounce_state_machine_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
