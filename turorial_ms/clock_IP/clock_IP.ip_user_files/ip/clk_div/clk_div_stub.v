// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Thu Aug 06 15:20:58 2020
// Host        : DESKTOP-A2L0S3R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/FPGA/turorial_ms/clock_IP/clock_IP.srcs/sources_1/ip/clk_div/clk_div_stub.v
// Design      : clk_div
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_div(i_clk_100M, o_clk_50M, i_reset, o_locked)
/* synthesis syn_black_box black_box_pad_pin="i_clk_100M,o_clk_50M,i_reset,o_locked" */;
  input i_clk_100M;
  output o_clk_50M;
  input i_reset;
  output o_locked;
endmodule
