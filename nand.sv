module nandgate(
  input logic a,
  input logic b,
  input logic c,
  output logic d
);
  
  always_comb begin
    d = !(a&b&c);
  end

endmodule
