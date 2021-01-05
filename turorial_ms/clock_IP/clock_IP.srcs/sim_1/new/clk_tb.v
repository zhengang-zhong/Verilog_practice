`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2020 03:23:26 PM
// Design Name: 
// Module Name: clk_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define clk_period 10

module clk_tb();

 // Clock in ports
reg  i_clk_100M;
  // Clock out ports
wire  o_clk_50M;
  // Status and control signals
reg  i_rst;
wire  o_locked;


clk_div CLK_DIV
 (
 // Clock in ports
  i_clk_100M,
  // Clock out ports
  o_clk_50M,
  // Status and control signals
  i_rst,
  o_locked
 );

initial i_clk_100M = 1'b1;
always #(`clk_period/2) i_clk_100M = ~ i_clk_100M;

initial begin
    i_rst = 1'b1;
    #(`clk_period);
    i_rst = 1'b0;
    #(`clk_period);
end

endmodule
