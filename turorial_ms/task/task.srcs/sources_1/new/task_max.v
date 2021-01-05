task task_max;
    input [7:0] d_in_x, d_in_y;
    output [7:0] d_out ;
    
    begin
        if(d_in_x > d_in_y)
            d_out = d_in_x;
        else
            d_out = d_in_y;
            
        end
    
    
endtask