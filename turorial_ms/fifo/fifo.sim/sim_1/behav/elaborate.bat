@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 2f9fc0dc12b342dd95290a9198efd2a9 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xpm -L fifo_generator_v13_1_1 -L unisims_ver -L unimacro_ver -L secureip --snapshot fifo_test_tb_behav xil_defaultlib.fifo_test_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
