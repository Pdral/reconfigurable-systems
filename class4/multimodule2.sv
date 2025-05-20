module design(
  input logic a,
  input logic b,
  input logic c,
  input logic d,
  output logic s
);
  
  logic and_out, and2_out, xor_out;
  
  andgate andg(.a(a), .b(b), .c(and_out));
  andgate andg2(.a(and_out), .b(c), .c(and2_out));
  xorgate xorg(.a(c), .b(d), .c(xor_out));
  orgate org(.a(and2_out), .b(xor_out), .c(s));

endmodule
