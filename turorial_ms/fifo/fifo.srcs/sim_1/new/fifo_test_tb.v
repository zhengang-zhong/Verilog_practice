
`define wrclk_period 20
`define rdclk_period 10



module fifo_test_tb();


  reg rst;
  reg wr_clk;
  reg rd_clk;
  reg [7:0] din;
  reg wr_en;
  reg rd_en;
  wire [7:0] dout;
  wire full;
  wire empty;

    fifo_test fifo_test_U1 (
      .rst(rst),
      .wr_clk(wr_clk),
      .rd_clk(rd_clk),
      .din(din),
      .wr_en(wr_en),
      .rd_en(rd_en),
      .dout(dout),
      .full(full),
      .empty(empty)
    );
    
    initial wr_clk = 1;
    always #(`wrclk_period/2) wr_clk = ~ wr_clk;

    initial rd_clk = 1;
    always #(`rdclk_period/2) rd_clk = ~ rd_clk;
    
    integer i,j;
    
    initial begin
        din = 0;
        wr_en = 0;
        rd_en = 0;
        rst = 0;
        #`wrclk_period;
        
        
        rst = 1;
        #`wrclk_period;
        
        rst =0;
        #(`wrclk_period * 3)
    
        #`wrclk_period;
        
        for (i=0;i<=5;i=i+1) begin
            wr_en = 1;
            din = i;
            #`wrclk_period; 
        end
        
        wr_en = 0;
        #`wrclk_period;
        
        #`wrclk_period;
        for(j = 0; j <= 5; j = j+1) begin
            rd_en = 1;
            #`rdclk_period;
        end
        
        rd_en = 0;
        #`rdclk_period;
        
        $stop;
     end

endmodule