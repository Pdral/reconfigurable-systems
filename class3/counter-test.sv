module contador_tb();
  
  logic [3:0] data_in;
  logic clk;
  logic rst;
  logic load;
  logic con;
  logic cup;
  logic [3:0] data_out;
  
  parameter clock_periodo = 10;
  
  contador ct(.*);
  
  initial begin
    
    clk = 0;
    
  end
  
  always #(clock_periodo/2) clk = ~clk;
  
  initial begin
    
    data_in <= 1;
    
    load = 0;
    
    con = 1;
    
    cup = 1;
    
    rst = 1;
    display;
    #10
    rst = 0;
    display;
    display;
    display;
    display;
    display;
    display;
    display;
    display;
    // contador ate 8
    
    con=0;
    display;
    display;
    display;
    // contador pausado
    
    con=1;
    display;
    display;
    // despausando ate 10
    
    cup=0;
    display;
    display;
    display;
    // decrementando até o 7
    
    load = 1;
    cup = 1;
    display;
    load=0;
    display;
    display;
    display;
    display;
    display;
    display;
    display;
    
    
    #500
    $finish;
    
  end
  
  task display;
    #10 $display ("%b", data_out);
  endtask
  
endmodule
