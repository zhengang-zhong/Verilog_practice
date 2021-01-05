`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2020 12:15:41 AM
// Design Name: 
// Module Name: single_port_ram_tb
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


module single_port_ram_tb();
    reg [7:0] data;
    reg [5:0] addr;
    reg we;
    reg clk;
    wire [7:0] q;
    
    single_port_ram single_port_ram(
        .data(data),
        .addr(addr),
        .we(we),
        .clk(clk),
        .q(q)
    );
    
    initial
    begin
        clk = 1'b1;
        forever #50 clk = ~clk;
    end
    
    initial
    begin
        data = 8'h01;
        addr = 5'd0;
        we = 1'b1;
        #100
    
        data = 8'h02;
        addr = 5'd01;
        #100
        
        data = 8'h03;
        addr = 5'd02;
        #100
    
    
        addr = 5'd0;
        we = 1'b0;
        #100;
        
        addr = 5'd1;
        #100;
        
        addr = 5'd2;
        #100;
        
    end


endmodule
