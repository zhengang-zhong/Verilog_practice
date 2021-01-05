module task_max_top(d_in_x,d_in_y, d_out);

    input[7:0] d_in_x, d_in_y;
    output [7:0] d_out;
    reg[7:0] d_out;
    
    `include "task_max.v"
    always@(d_in_x,d_in_y)
    begin
        task_max(d_in_x,d_in_y,d_out);    
    end
    
endmodule
