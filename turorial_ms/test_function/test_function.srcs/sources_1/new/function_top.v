`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2020 07:21:43 PM
// Design Name: 
// Module Name: function_top
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


module function_top(d_in, d_out);
    input [7:0] d_in;
    output reg [3:0] d_out;
    
    `include "count_zero.v"
    
    always @ (d_in)
        d_out = count_zero(d_in);
endmodule
