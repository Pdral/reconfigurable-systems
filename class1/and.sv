module andgate(
  input logic a,
  input logic b,
  output logic c
);
  
/*  always_comb begin
    c = a & b;
  end
*/
  
  assign c = a & b;
  
endmodule
