-makelib ies/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../clock_IP.srcs/sources_1/ip/clk_div/clk_div_clk_wiz.v" \
  "../../../../clock_IP.srcs/sources_1/ip/clk_div/clk_div.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

