module multiplier_2bit ( 
  input [1:0] A, B,
  output[3:0] P
  );
  wire PP1, PP2, PP3, C1;
  
  assign P[0]= A[0]&B[0];
  assign PP1=A[1]&B[0];
  assign PP2=A[0]&B[1];
  assign PP3=A[1]&B[1];
  
  
  assign P[1]=PP1^PP2;
  assign C1=PP1&PP2;
  assign P[2]=C1^PP3;
  assign P[3]=PP3&C1;
  
endmodule 