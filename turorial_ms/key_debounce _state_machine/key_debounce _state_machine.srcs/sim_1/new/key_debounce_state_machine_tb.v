`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2020 05:43:01 PM
// Design Name: 
// Module Name: key_debounce_state_machine_tb
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

`define clk_period 20

module key_debounce_state_machine_tb();
reg i_clk;
reg i_rst;
reg i_key;
wire o_key_press;
wire o_key_release;


key_debounce_state_machine KEY_DEBOUNCE_STATE_MACHINE(
    i_clk,
    i_rst,
    i_key,
    o_key_press,
    o_key_release
);

    initial i_clk=1;
    always #(`clk_period/2) i_clk = ~i_clk;

    initial begin
        i_rst =1'b1;
        i_key = 0;
        
        #(`clk_period);
        i_rst = 1'b0;
             
        #(`clk_period*2);
        
        

        i_key = 0;
        #(`clk_period);
        i_key = 1;
        #(`clk_period);
        i_key = 0;
        #(`clk_period);        
        i_key = 1;
        #(`clk_period);
        i_key = 0;
        #(`clk_period);
        i_key = 1;
        #(`clk_period);
        i_key = 0;
        #(`clk_period);        
        i_key = 1;
        #(`clk_period);
        i_key = 0;
        #(`clk_period);        
        i_key = 1;
        #(`clk_period);
        i_key = 0;

        
                
        #(`clk_period * (24'h30_0000));         

        #(`clk_period);        
        i_key = 0;
        #(`clk_period);
        i_key = 1;
        #(`clk_period);
        i_key = 0;
        #(`clk_period);
        i_key = 1;
        #(`clk_period);
        i_key = 1;
        #(`clk_period * (24'h30_0000));        

        $stop;    


    end
endmodule
