`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2020 09:06:27 PM
// Design Name: 
// Module Name: blocking_nonblocking
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


module blocking_nonblocking(
    input clk,
    input a,
    output reg b
    );
    
    
    reg temp;
    
    always @(posedge clk) begin 
        temp = a;
        b = temp;
    end
endmodule
