`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2020 11:43:12 PM
// Design Name: 
// Module Name: simple_rom_tb
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


module simple_rom_tb();
    reg [1:0] addr;
    wire [7:0] data;
    
    simple_rom simple_rom(
        .addr(addr),
        .data(data)
    );
    
    initial begin
        addr = 2'd3;
        #10;      
        addr = 2'd2;
        #10;       
        addr = 2'd1;
        #10;
        addr = 2'd0;
        #10;
        $stop;
        
    end
endmodule
