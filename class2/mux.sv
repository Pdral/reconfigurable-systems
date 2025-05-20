module mux_4bits(
  input logic [3:0] a,
  input logic [3:0] b,
  input logic [3:0] c, 
  input logic [3:0] d,
  input logic [1:0] sel,
  output logic [3:0] y
);
  
  always_comb begin
    case(sel)
      2'b00: y <= a;
      2'b01: y <= b;
      2'b10: y <= c;
      default: y <= d;
    endcase
  end
  
endmodule
