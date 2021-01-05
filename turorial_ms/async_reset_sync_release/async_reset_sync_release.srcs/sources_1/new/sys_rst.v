`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2020 03:26:43 PM
// Design Name: 
// Module Name: sys_rst
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


module sys_rst(
    input clk,
    input i_rst,
    output reg o_rst
    );
    
    reg rst_state0;
    
    always @(posedge clk or posedge i_rst)
        if (i_rst) begin
            rst_state0 <= 1'b1;
            o_rst <= 1'b1;
        end else begin
            rst_state0 <= 1'b0;
            o_rst <= rst_state0;
        end

endmodule
