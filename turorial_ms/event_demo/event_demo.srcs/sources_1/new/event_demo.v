`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2020 07:56:40 PM
// Design Name: 
// Module Name: event_demo
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


module event_demo();
    reg clk,reset;
    event reset_trigger, reset_done_trigger;
    
    always
    #5 clk = !clk;
    
    initial begin
        clk = 0;
        reset = 0;
        
    end
    
    initial begin
        forever begin
            @(reset_trigger);
            reset =1 ;
            $display ("reset_trigger is triggered at %t",$time);
            #20 reset =0;
            ->reset_done_trigger;
        end
    end

    initial begin
        #10->reset_trigger;
        forever begin 
            @(reset_done_trigger);
            $display ("reset_done_trigger is triggered at %t",$time);
        end
    end
endmodule
