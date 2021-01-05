@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim dual_port_ram_tb_behav -key {Behavioral:sim_1:Functional:dual_port_ram_tb} -tclbatch dual_port_ram_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
