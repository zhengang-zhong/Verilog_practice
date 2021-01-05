`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2020 05:05:19 PM
// Design Name: 
// Module Name: key_debounce _state_machine
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


module key_debounce_state_machine(
    input i_clk,
    input i_rst,
    input i_key,
    output reg o_key_press,
    output reg o_key_release
    );
    
    localparam
        IDLE = 4'b0001,
        FILTER0 = 4'b0010,
        DOWN = 4'b0100,
        FILTER1 = 4'b1000;
        
    reg [19:0] cnt;
    reg en_cnt;
    
    reg key_in_sa, key_in_sb;
    always @(posedge i_clk or posedge i_rst)
    if(i_rst) begin
        key_in_sa <= 1'b0;
        key_in_sb <= 1'b0;
    end else begin
        key_in_sa <= i_key;
        key_in_sb <= key_in_sa;
    end
    
    
    //save two temp value to calculate the posedge and negedge 
    reg key_tmpa,key_tmpb;
    always @(posedge i_clk or posedge i_rst)
    if(i_rst) begin
        key_tmpa <= 1'b0;
        key_tmpb <= 1'b0;
    end else begin
        key_tmpa <= key_in_sb;
        key_tmpb <= key_tmpa;
    end    
    
    wire pedge,nedge;
    assign nedge = !key_tmpa& key_tmpb;
    assign pedge = key_tmpa& (!key_tmpb);
    
    reg [3:0] state;
    reg cnt_full;
    always @(posedge i_clk or posedge i_rst)
    if (i_rst) begin
        en_cnt <= 1'b0;
        state <= IDLE;
        o_key_press <= 1'b0;
        o_key_release <= 1'b0;
    end else begin
        case(state)
            IDLE:
                begin
                    o_key_press <= 1'b0;
                    o_key_release <= 1'b0;
                    if(nedge) begin
                        state <= FILTER0;
                        en_cnt <= 1'b1;
                    end else 
                        state <= IDLE;
                end
            FILTER0:
                if(cnt_full) begin
                    o_key_press <= 1'b1;
                    en_cnt <= 1'b0;
                    state <= DOWN;
                end else if (pedge) begin
                    state <= IDLE;
                    en_cnt <= 1'b0;
                end else
                    state <=FILTER0;
            DOWN:
                begin
                    o_key_press <= 1'b0;
                    o_key_release <= 1'b0;
                    if (pedge) begin
                        state <= FILTER1;
                        en_cnt <= 1'b1;
                    end else
                        state <= DOWN;
                    end
            FILTER1:
                if(cnt_full) begin
                    o_key_release <= 1'b1;
                    en_cnt <= 1'b0;
                    state <= IDLE;
                end else if (nedge) begin
                    en_cnt  <= 1'b0;
                    state <= DOWN;
                end else
                    state <= FILTER1;
            
            default:
                begin
                    o_key_press <= 1'b0;
                    o_key_release <= 1'b0;
                    if(nedge) begin
                        state <= FILTER0;
                        en_cnt <= 1'b1;
                    end else 
                        state <= IDLE;
                end
            endcase
        end
    
    always @(posedge i_clk or negedge i_rst)
        if (i_rst)
            cnt <= 20'd0;
        else if (en_cnt)
            cnt <= cnt + 1'b1;
        else 
            cnt <= 20'd0;
            
    always @(posedge i_clk or negedge i_rst)
        if (i_rst)
            cnt_full <= 1'b0;
        else if (cnt == 999_999)
            cnt_full <= 1'b1;
        else
            cnt_full <= 1'b0;
    
                    
endmodule
