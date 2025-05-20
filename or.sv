module orgate(
  input logic a,
  input logic b,
  output logic c
);
  
  always_comb begin
    c = a | b;
  end

endmodule
