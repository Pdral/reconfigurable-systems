module mux_4bits_tb();
  
  logic [3:0] a;
  logic [3:0] b;
  logic [3:0] c; 
  logic [3:0] d;
  logic [1:0] sel;
  logic [3:0] y;
  
  mux_4bits mux_4bitsg(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    
    a = 4'b0101;
    b = 4'b1001;
    c = 4'b0011;
    d = 4'b0001;
    
    $display("Test a");
    sel = 0;
    display;
    
    $display("Test b");
    sel = 1;
    display;
    
    $display("Test c");
    sel = 2;
    display;
    
    $display("Test d");
    sel = 3;
    display;
  end
  
  task display;
    #2 $display ("sel:%b, y:%b", sel, y);
  endtask
  
endmodule
