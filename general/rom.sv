module rom_using_case (
  input logic [7:0] addres,
  output logic [7:0] data
);
  
  always_comb begin
    case (addres)
      0: data = 10;
      1: data = 20;
      2: data = 30;
      3: data = 40;
     endcase
  end
endmodule
     
