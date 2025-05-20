module fulladdr(
  input logic a,
  input logic b,
  input logic cin, 
  output logic s,
  output logic cout
);
  
/*  assign cout = (a&b)|(a&cin)|(b&cin);
  	assign s = a^b^cin;
*/
  
  always_comb begin
    cout = (a&b)|(a&cin)|(b&cin);
    s = a^b^cin;
  end
  
endmodule
