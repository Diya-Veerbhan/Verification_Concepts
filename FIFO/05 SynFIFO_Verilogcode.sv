## Verilog code
  --------------------------------------------------------------------------------
  module synchronous_fifo #(parameter DEPTH=8, DATA_WIDTH=8) (
  input clk, rst_n,
  input w_en, r_en,
  input [DATA_WIDTH-1:0] data_in,
  output reg [DATA_WIDTH-1:0] data_out,
  output full, empty
);
  
  reg [$clog2(DEPTH)-1:0] w_ptr, r_ptr;
  reg [DATA_WIDTH-1:0] fifo[DEPTH];
  reg [$clog2(DEPTH)-1:0] count;
  
  // Set Default values on reset.
  always@(posedge clk) begin
    if(!rst_n) begin
      w_ptr <= 0; r_ptr <= 0;
      data_out <= 0;
      count <= 0;
    end
    else begin
      case({w_en,r_en})
        2'b00, 2'b11: count <= count;
        2'b01: count <= count - 1'b1;
        2'b10: count <= count + 1'b1;
      endcase
    end
  end
  
  // To write data to FIFO
  always@(posedge clk) begin
    if(w_en & !full)begin
      fifo[w_ptr] <= data_in;
      w_ptr <= w_ptr + 1;
    end
  end
  
  // To read data from FIFO
  always@(posedge clk) begin
    if(r_en & !empty) begin
      data_out <= fifo[r_ptr];
      r_ptr <= r_ptr + 1;
    end
  end
  
  assign full = (count == DEPTH);
  assign empty = (count == 0);
endmodule

-------------------------------------------------------------------------------------------------------

  Testbench Code 


  
module sync_fifo_TB;
  parameter DATA_WIDTH = 8;
 //reg inputs and wire outputs wrt verilog module 
  reg clk, rst_n;
  reg w_en, r_en;
  reg [DATA_WIDTH-1:0] data_in;
  wire [DATA_WIDTH-1:0] data_out;
  wire full, empty;
  
  // Queue to push data_in
  reg [DATA_WIDTH-1:0] wdata_q[$], wdata;

  synchronous_fifo s_fifo(clk, rst_n, w_en, r_en, data_in, data_out, full, empty);

  always #5ns clk = ~clk;
  
  initial begin
    clk = 1'b0; rst_n = 1'b0;
    w_en = 1'b0;
    data_in = 0;
    
    repeat(10) @(posedge clk);
    rst_n = 1'b1;

    repeat(2) begin
      for (int i=0; i<30; i++) begin
        @(posedge clk);
        w_en = (i%2 == 0)? 1'b1 : 1'b0; //simply generating some random w_en values
        if (w_en & !full) begin
          data_in = $urandom; //Random data_in values are are generated 
          wdata_q.push_back(data_in);// and pushed back in a queue in oreder to check later whether the values stored in queue and the values 
          // we got from data_out from FIFO are correct or not
        end //end of data_in
      end // end of for loop
      #50;
    end //end of repeat
  end

  initial begin
    clk = 1'b0; rst_n = 1'b0;
    r_en = 1'b0;

    repeat(20) @(posedge clk);
    rst_n = 1'b1;

    repeat(2) begin
      for (int i=0; i<30; i++) begin
        @(posedge clk);
        r_en = (i%2 == 0)? 1'b1 : 1'b0;
        if (r_en & !empty) begin
          #1;
          wdata = wdata_q.pop_front();
          if(data_out !== wdata) $error("Time = %0t: Comparison Failed: expected wr_data = %h, rd_data = %h", $time, wdata, data_out);
          else $display("Time = %0t: Comparison Passed: wr_data = %h and rd_data = %h",$time, wdata, data_out);
        end
      end
      #50;
    end

    $finish;
  end
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule

  
