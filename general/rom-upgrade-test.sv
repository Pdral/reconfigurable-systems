module rom_tb;
  logic [7:0] address;
  logic [7:0] data;
  logic read_en;
  logic ce;
  integer i;
  
  rom U(
  	address,
    data,
    read_en,
    ce
  );
  
  initial begin
    ce = 1;
    read_en = 1;
    address = 0;
    #10 $monitor ("address = %d, data = %d", 
                  address, data);
    for(i=0; i<256; i++) begin
      #5 address = i;
    end
  end
  
endmodule
