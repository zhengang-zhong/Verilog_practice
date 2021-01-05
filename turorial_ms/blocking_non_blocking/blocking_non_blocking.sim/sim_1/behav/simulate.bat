@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim blocking_nonblocking_tb_behav -key {Behavioral:sim_1:Functional:blocking_nonblocking_tb} -tclbatch blocking_nonblocking_tb.tcl -view F:/FPGA/turorial_ms/blocking_non_blocking/blocking_nonblocking_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
