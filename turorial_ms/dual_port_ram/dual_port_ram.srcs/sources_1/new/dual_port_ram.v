`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2020 12:30:57 AM
// Design Name: 
// Module Name: dual_port_ram
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


module dual_port_ram(
    input [7:0] data_a, data_b,
    input [5:0] addr_a, addr_b,
    input we_a,we_b,
    input clk,
    output reg [7:0] q_a, q_b
    );
    
    reg [7:0] ram[63:0];
    
    
    always @(posedge clk)
    begin
        if(we_a)
        begin
            ram[addr_a] <= data_a;
        end    
        else
        begin
            q_a <= ram[addr_a];
        end
    end
    
    always @(posedge clk)
    begin
        if(we_b)
        begin
            ram[addr_b] <= data_b;
        end    
        else
        begin
            q_b <= ram[addr_b];
        end
    end
    
    
    
endmodule
