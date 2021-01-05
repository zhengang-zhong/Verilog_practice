`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2020 10:04:44 AM
// Design Name: 
// Module Name: clk_divider_tb
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


module clk_divider_tb();

    reg clk_in;
    reg rst_n;
    wire clk_out;
    
    clk_divider clk_divider(
    .clk_in(clk_in),
    .rst_n(rst_n),
    .clk_out(clk_out)
    );
    
    initial 
    begin
        clk_in = 1'b0;
        rst_n = 1'b0;
        #20;
        rst_n = 1'b1;
        forever #10 clk_in = ~clk_in;
    end


endmodule
