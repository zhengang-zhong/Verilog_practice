`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2020 11:55:16 PM
// Design Name: 
// Module Name: single_port_ram
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


module single_port_ram(
    input [7:0] data,
    input [5:0] addr,
    input we,clk,
    output [7:0] q
    );
    
    reg [7:0] ram[63:0];
    reg [5:0] addr_reg;
    
    always @ (posedge clk)
    begin
        if (we)
            ram[addr] <= data;
    
        else
            addr_reg <= addr;
    end
    
    assign q = ram[addr_reg];

endmodule
