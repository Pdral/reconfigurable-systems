module rom (
  input logic [7:0] address,
  output logic [7:0] data,
  input logic read_en,
  input logic ce
);
  
  logic [7:0] mem [0:255];
  
  assign data = (ce && read_en) ? mem[address] : 8'b0;
  
  initial begin
    $readmemb("memory.list", mem);
  end
  
endmodule
     
