-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Thu Aug 06 15:20:58 2020
-- Host        : DESKTOP-A2L0S3R running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/FPGA/turorial_ms/clock_IP/clock_IP.srcs/sources_1/ip/clk_div/clk_div_stub.vhdl
-- Design      : clk_div
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div is
  Port ( 
    i_clk_100M : in STD_LOGIC;
    o_clk_50M : out STD_LOGIC;
    i_reset : in STD_LOGIC;
    o_locked : out STD_LOGIC
  );

end clk_div;

architecture stub of clk_div is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk_100M,o_clk_50M,i_reset,o_locked";
begin
end;
