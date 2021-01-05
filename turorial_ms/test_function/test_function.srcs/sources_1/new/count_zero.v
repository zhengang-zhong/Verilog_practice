`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2020 07:17:14 PM
// Design Name: 
// Module Name: count_zero
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


function [3:0] count_zero(input [7:0] data);
    integer i;
    begin
        count_zero = 0;
        for (i=0;i<=7;i=i+1)
            if(data[i] == 0)
                count_zero = count_zero + 1;
    end
endfunction
