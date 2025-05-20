module contador(
  input logic [3:0] data_in,
  input logic clk,
  input logic rst,
  input logic load,
  input logic con,
  input logic cup,
  output logic [3:0] data_out
);
  
  logic [3:0] value;
  
  always_comb begin
    
    data_out <= value;
    
  end
  
  always_ff @(posedge clk & con) begin
    
    if(rst == 1) value <= 0;
    
    else begin
      
      if(load == 1) value <= data_in;
      
      else begin
        
        if(cup == 1) begin
          
          if(value == 15);
            
          else value <= value+1;
          
        end
        
        else begin
        
          if(value == 0);
          
          else value <= value-1;
          
        end
        
      end
      
    end
    
  end
  
endmodule
