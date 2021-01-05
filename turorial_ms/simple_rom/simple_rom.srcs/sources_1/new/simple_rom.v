`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2020 11:34:11 PM
// Design Name: 
// Module Name: simple_rom
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


module simple_rom(
        input [1:0] addr,
        output reg [7:0] data
    );
    
    always @(*)
    begin
        case(addr)
            0: data = 8'd05;
            1: data = 8'd10;
            2: data = 8'd15;
            3: data = 8'd20;
        endcase
    end
endmodule
