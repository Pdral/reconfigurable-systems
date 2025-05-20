// Detects two consecutives w=1 inputs (Moore model)

// Behavioral design
module fsm_b (clk, rst, w, z);
  input clk, rst, w;
  output z;
  
  logic [2:1] y, Y;
  
  parameter [2:1] A = 2'b00, B = 2'b01, C = 2'b11;
  
  // Define the next state combinational circuit
  always_ff @(w, y)
    case (y)
      A: if (w) Y = B;
       else     Y = A;
      B: if (w) Y = C;
       else     Y = B;
      C: if (w) Y = C;
     default:  Y = 2'bxx;
    endcase
  
  // Define the sequential block 
  always_ff @(posedge rst, posedge clk)
    if (rst) y <= A;
    else     y <= Y;
  // Define output 
  assign z = (y == C);
endmodule

// Functional design
module fsm_f (
  input clk, rst, w,
  output z);
  
  logic y1, y2;

  always_ff @(posedge clk or posedge rst)
    if (rst)
    begin
      y1 <= 0;
      y2 <= 0;
    end
    else
    begin
      if (w) begin
        y1 <= w;
      	y2 <= y1;
      end
    end
  assign z = y1 && y2; 
endmodule

// // Structural design 
// module fsm_s (
//   input clk, rst, w,
//   output z);
  
//   logic y1, y2;

//   dff y1s (clk, rst,  w, y1);
//   dff y2s (clk, rst, y1, y2);
//   and (z, y1, y2);
// endmodule

// // Flip-flop D
// module dff(
//   input clk, rst, d,
//   output logic q, nq);
  
//   always_ff @(posedge clk or posedge rst)
//     if (rst)
//       q = 0;
//     else
//       q = d;
  
//   assign nq = !q;
// endmodule
