module rom_sync (
  input logic [7:0] address,
  output logic [7:0] data,
  input logic read_en,
  input logic ce,
  input logic clk
);
  
  logic [7:0] mem [0:255];
  
  initial begin
    $readmemb("memory.list", mem);
  end
  
  always_ff @(posedge clk) begin
    assign data = (ce && read_en) ? mem[address] : 8'b0;
  end
  
endmodule
