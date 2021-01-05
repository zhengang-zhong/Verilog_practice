@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim fifo_test_tb_behav -key {Behavioral:sim_1:Functional:fifo_test_tb} -tclbatch fifo_test_tb.tcl -view F:/FPGA/turorial_ms/fifo/fifo_test_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0