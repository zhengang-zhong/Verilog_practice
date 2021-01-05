`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2020 03:26:43 PM
// Design Name: 
// Module Name: top_func
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


module top_func(
    input clk,
    input rst,
    input i_d1,
    output reg o_d1
    );
    
    wire sys_rst;
    
    sys_rst SYS_RST(
        .clk(clk),
        .i_rst(rst),
        .o_rst(sys_rst)
        );
        
    always @(posedge clk or posedge sys_rst)
        if (sys_rst) begin
            o_d1 <=0;
        end else begin
            o_d1 <= i_d1;
        end
    
    
    
endmodule
