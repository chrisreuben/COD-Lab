module adder #(parameter N = 32) 
(
  input logic [N-1:0]pc,
  output logic [N-1:0] pcFour);
  assign pcFour = pc+4; 
  endmodule