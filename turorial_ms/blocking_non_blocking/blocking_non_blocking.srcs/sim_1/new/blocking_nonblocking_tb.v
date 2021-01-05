`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2020 09:13:09 PM
// Design Name: 
// Module Name: blocking_nonblocking_tb
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
`define clock_period 10

module blocking_nonblocking_tb();
 
    reg clk;
    reg a;
    wire b;
    
    blocking_nonblocking blocking_nonblocking(
        .clk(clk),
        .a(a),
        .b(b)
    );

    initial clk = 1;
    always #(`clock_period/2) clk = ~clk;
    
    initial begin
        a= 0;
        #(`clock_period);
        a= 1;
        #(`clock_period);
        a= 0;
        #(`clock_period);
        a= 1;
        #(`clock_period);
        a= 0;
        #(`clock_period);
        $stop; 
    end
endmodule
