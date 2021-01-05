`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2020 02:06:29 PM
// Design Name: 
// Module Name: rst_example
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


module rst_example(
    input clk,
    input rst,
    input i_data_01,
    input i_data_02,
    output reg o_data_01,
    output reg o_data_02
    );
    
    wire rst_n;
    assign rst_n  = !rst;
    
    always @(posedge clk)
        if (rst_n) begin
            o_data_01 <= 0;
            o_data_02 <= 0;
        end else begin
            o_data_01 <= i_data_01;
            o_data_02 <= i_data_02;
        end
        
endmodule
