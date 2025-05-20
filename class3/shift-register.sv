module reg_des(
  input logic data_in,
  input logic clock,
  input logic reset,
  output logic data_out
);
  
  logic [3:0] data_reg;
  
  always_comb begin
    
    data_out = data_reg[0];
    
  end
  
  always_ff @(posedge clock) begin
    
    if(reset == 1) data_reg <=0;
    
    else data_reg <= {data_in, data_reg[3:1]};
    
  end
  
endmodule
