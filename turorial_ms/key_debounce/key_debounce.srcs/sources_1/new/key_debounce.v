`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2020 03:42:12 PM
// Design Name: 
// Module Name: key_debounce
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


module key_debounce(
    input i_clk,
    input i_rst,
    input i_key,
    output o_key_db
    );


reg key_rst;

always @(posedge i_clk or posedge i_rst)  //buffer the key value
    if (i_rst) key_rst <= 1'b1;
    else key_rst <= i_key;
   
reg key_rst_r;

always @(posedge i_clk or posedge i_rst)
    if (i_rst) key_rst_r <= 1'b1;
    else key_rst_r <= key_rst;
   
wire cnt_rst = (~key_rst_r) & key_rst;

reg[19:0] cnt;

always @(posedge i_clk or posedge i_rst)
    if (i_rst) cnt <= 20'd0;
    else if (cnt_rst) cnt <= 20'd0;
    else cnt <= cnt + 1'b1;
   
reg low_sw;

always @(posedge i_clk or posedge i_rst)
    if(i_rst) low_sw <=1'b0;
    else if (cnt == 20'hf_ffff) low_sw <= i_key;
    
reg low_sw_r;

always @(posedge i_clk or posedge i_rst)
    if (i_rst ) low_sw_r <= 1'b0;
    else low_sw_r <= low_sw;
    
assign o_key_db = (~low_sw_r)& (low_sw);
   
   
   
   
   
   
   
endmodule