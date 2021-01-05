`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2020 03:51:11 PM
// Design Name: 
// Module Name: top_func_tb
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
module top_func_tb();
    reg clk;
    reg rst;
    reg i_d1;
    wire o_d1;
    
    top_func TOP_FUNC(
        .clk(clk),
        .rst(rst),
        .i_d1(i_d1),
        .o_d1(o_d1)
    );
    
    initial clk = 1'b1;
    always #(`clk_period/2) clk=~clk;
    
    initial begin
        rst = 1'b0;
        i_d1 = 1'b1;
        
        #(`clk_period * 3);
        
        #4;
        rst = 1'b1;
        
        #3;
        rst = 1'b0;
         
    end

endmodule
