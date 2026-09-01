//////////////////////////////////////////////////////////////////////////////////
// Create Date: 08/31/2026 
// Design Name: Aditya Singh 
// Module Name: adder_subctractor
// 
//////////////////////////////////////////////////////////////////////////////

module full_adder ( 
  input A, B, M,
  output sum, Carry_out
   );
  
  assign sum = A^B^M;
  assign Carry_out = A&B | (M & (A^B));
endmodule  

module adder_subctractor (
  input [3:0] A, B,
  input M,
  output [3:0] sum,
  output Carry_out
  );
  
  wire C1, C2, C3;
  wire [3:0] D;
  
  assign D = {4{M}}^B;
  
   full_adder FA0 (A[0], D[0], M, sum[0], C1);
   full_adder FA1 (A[1], D[1], C1, sum[1], C2);
   full_adder FA2 (A[2], D[2], C2, sum[2], C3);
   full_adder FA3 (A[3], D[3], C3, sum[3], Carry_out);
 endmodule