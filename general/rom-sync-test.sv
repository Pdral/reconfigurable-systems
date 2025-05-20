module rom_tb;
  logic [7:0] address;
  logic [7:0] data;
  logic read_en;
  logic ce;
  logic clk;
  integer i;
  
  rom_sync U(
  	address,
    data,
    read_en,
    ce,
    clk
  );
  
  always begin
		clk <= 1;
		#5;
		clk <= 0;
		#5;
  end
  
  initial begin
    ce = 1;
    read_en = 1;
    address = 0;
    #10 $monitor ("address = %d, data = %d", 
                  address, data);
    for(i=0; i<256; i++) begin
      #5 address = i;
    end
    address = 88;
    address = 89;
  end
  
endmodule
