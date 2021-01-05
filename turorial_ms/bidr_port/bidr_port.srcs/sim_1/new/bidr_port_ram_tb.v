`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2020 03:38:15 PM
// Design Name: 
// Module Name: bidr_port_ram_tb
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


module bidr_port_ram_tb();

    reg clk;
    reg we;
    reg [7:0] address;
    wire [7:0] data;
    reg [7:0] data_reg;
    
    bidr_port_ram bidr_port_ram(
        clk,
        we,
        address,
        data
    );

    assign data = (we)?data_reg:8'bz;
    
    initial begin
        clk = 1'b1;
        forever #50 clk = ~clk;
    end
    
    initial begin
        data_reg = 8'h01;
        address = 8'h00;
        we = 1'b1;
        #100;
        
        data_reg = 8'h02;
        address = 8'h01;
        we = 1'b1;
        #100;
                
    
        data_reg = 8'h03;
        address = 8'h02;
        we = 1'b1;
        #100;
            
        address = 8'h00;
        we = 1'b0;
        #100;
        
        address = 8'h01;
        we = 1'b0;
        #100;
        
        address = 8'h02;
        we = 1'b0;
        #100;
        
    
        $stop;
    end





endmodule
