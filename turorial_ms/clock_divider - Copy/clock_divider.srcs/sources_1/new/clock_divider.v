`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2020 09:59:13 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input key,
    input clk,
    output reg led
    );


reg [22:0] count; 

    always @(posedge clk)
        if (key) begin
            if (count == 0) begin
                led <= -led;
            end
            count <= count + 1;
        end else begin
            led <= 0;
            count <= 1;
        end
endmodule