module full_adder( 
  input A,
  input B,
  input Cin,
  output sum,
  output carry_out
  );
   wire t1, t2, t3;  
   
   
   assign t1 = A^B;
   assign t2 = A&B;
   assign sum = t1^Cin;
   assign t3 = t1&Cin;
   assign carry_out = t3|t2; 
 endmodule
  
  
