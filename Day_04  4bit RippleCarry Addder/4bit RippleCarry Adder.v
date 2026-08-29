
module full_adder ( 
  input A, B, Cin,
  output sum, Carry_out
  );
  
  assign sum = A^B^Cin;
  assign Carry_out = A&B | (Cin & (A^B));
endmodule  

module ripple_carry_4bit_adder (
  input [3:0] A, B,
  input Cin,
  output [3:0] sum,
  output Carry_out 
  );
  wire C1, C2, C3;
   
   full_adder FA0 (A[0], B[0], Cin, sum[0], C1);
   full_adder FA1 (A[1], B[1], C1, sum[1], C2);
   full_adder FA2 (A[2], B[2], C2, sum[2], C3);
   full_adder FA3 (A[3], B[3], C3, sum[3], Carry_out);
 endmodule  
   