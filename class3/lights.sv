module pisca_pisca(
  input logic clk,
  input logic rst,
  output logic pisca
);
  
  always_ff @(posedge clk) begin
    
    if(rst) begin
      pisca <= 0;
    end
    
    else begin
      pisca <= ~pisca;
    end
    
  end
  
endmodule
