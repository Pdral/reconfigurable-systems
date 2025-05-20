module test();
  
  parameter CLOCK_PERIOD = 20;
  
  logic clk;
  logic [4:0] address_write;
  logic [7:0] data_write;
  logic [4:0] address_read;
  logic [7:0] data_read;
  logic write_enable;
  
  ram #(8, 5, 32) RAM (
    .clk(clk),
    .address_write(address_write),
    .data_write(data_write),
    .write_enable(write_enable),
    .address_read(address_read),
    .data_read(data_read));
  
  initial begin
    clk = 0;
  end
  
  always #(CLOCK_PERIOD/2) clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, test);
    
    write_enable = 0;
    address_read = 5'h1B;
    address_write = 5'h1B;
    
    $display("Read initial data.");
    $display("data[%0h]: %0h", address_read, data_read);
    
    $display("Write new data............");
    write_enable = 1;
    data_write = 8'hC5;
    #50
    write_enable = 0;
    
    $display("Read new data..........");
    $display("data[%0h]: %0h", address_read, data_read);
    
    $finish;
  end
endmodule
