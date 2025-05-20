module ram(clk, address_write,
          data_write, write_enable,
           address_read, data_read);
  
  parameter D_WIDTH = 16; parameter A_WIDTH = 4; parameter A_MAX = 16;
  input clk;
  input [A_WIDTH-1:0] address_write;
  input [D_WIDTH-1:0] data_write;
  input write_enable;
  input [A_WIDTH-1:0] address_read;
  output logic [D_WIDTH-1:0] data_read;
  logic [D_WIDTH-1:0] memory [A_MAX-1:0];
  
  always_ff @(posedge clk) begin
    if(write_enable) begin
      memory[address_write] <= data_write;
    end
  end
  
  always_ff @(posedge clk) begin
    data_read <= memory[address_read];
  end
endmodule
