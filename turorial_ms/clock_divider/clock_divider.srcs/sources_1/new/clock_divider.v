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
    input CLK,
    output reg [3:0] led
    );

    reg [32:0] counter;

    always @ (posedge CLK) 
    begin
        if (key == 0)
        begin
            counter <= counter + 1;
            led[0] <= counter[26];
        end
    end
endmodule