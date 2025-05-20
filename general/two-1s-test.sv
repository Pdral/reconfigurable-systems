// Test bench
module test;

  logic clk, rst, w;
  logic zs, zb, zf;

  // Instantiate design under test
//   fsm_s struc(clk, rst, w, zs);
  fsm_f funct(clk, rst, w, zf);
  fsm_b behav(clk, rst, w, zb);
  
  // generate clock
  always begin
    clk = 1; #50; clk = 0; #50;
  end
    
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
 rst = 0; w = 0;
    #75 rst = 1;
    #100 rst = 0;
    #100 w = 0;
    #100 w = 0;
    #100 w = 0;
    #200 w = 1;
    #100 w = 0;
    #100 w = 0;
    #100 w = 0;
    #300 w = 1;
    #100 w = 0;
    #100 w = 1;
    #50 w = 0;
    $finish;
  end
endmodule
