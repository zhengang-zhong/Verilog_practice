`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2020 09:42:30 AM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input clk_in,
    input rst_n,
    output reg clk_out
    );
    
    reg[1:0] count;
    
    always @(posedge clk_in or negedge rst_n)
    begin
        if(!rst_n) 
        begin
            count = 0;
            clk_out = 0;
        end
        else
        begin
            if (count == 0)
            begin
                clk_out <= ~clk_out;
            end
            count <= count + 1; 
        end
    end
    
    
endmodule
