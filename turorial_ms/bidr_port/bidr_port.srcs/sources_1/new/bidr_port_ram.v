`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2020 03:23:24 PM
// Design Name: 
// Module Name: bidr_port_ram
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


module bidr_port_ram(
    input clk,
    input we,
    input [7:0] address,
    inout [7:0] data
    );
    
    reg [7:0] data_out;
    reg [7:0] mem [2:0]; //ram: 8bit x 3
    
    assign data = (!we)? data_out : 8'bz;
    
    
    always @ (*)
    begin
        if (we) begin
            mem[address] <= data;
        end else
            data_out <= mem[address];
    end
endmodule
