module rom_tb;
  logic [7:0] address;
  logic [7:0] data;
  integer i;
  
  rom_using_case U(
  	address,
    data
  );
  
  initial begin
    address = 0;
    #10 $monitor ("address = %d, data = %d", 
                  address, data);
    for(i=0; i<4; i++) begin
      #5 address = i;
    end
  end
  
endmodule
