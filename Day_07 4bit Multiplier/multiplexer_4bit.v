
module multiplier_4bit (
  input [3:0] A, B,
  output [7:0] P
  );
  
  wire [3:0] M0, M1, M2, M3;
    
    wire [7:0] s1,s2, s3;
    
    assign M0= {4{A[0]}} & B[3:0];
    assign M1= {4{A[1]}} & B[3:0];
    assign M2= {4{A[2]}} & B[3:0]; 
    assign M3= {4{A[3]}} & B[3:0];
     
     assign s1 = {4'b0000, M0} + ({4'b0000, M1}<<1);
     assign s2=  s1 + ({4'b0000, M2}<<2);
     assign s3= s2 + ({4'b0000, M3}<<3);
     
     assign P=s3;
   endmodule 
   
   
   
   ///////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////
   
   `timescale 1ns/1ps

module tb_multiplier_4bit;
  reg [3:0] A, B;       
  wire [7:0] P;        


  multiplier_4bit uut (.A(A), .B(B), .P(P) );

  initial begin
    $display("Time\tA\tB\tProduct");
    $monitor("%0t\t%d\t%d\t%d", $time, A, B, P);

    
    A = 4'd3;  B = 4'd5;  #10;   // 3 * 5 = 15
    A = 4'd7;  B = 4'd9;  #10;   // 7 * 9 = 63
    A = 4'd15; B = 4'd15; #10;   // 15 * 15 = 225
    A = 4'd10; B = 4'd12; #10;   // 10 * 12 = 120
    A = 4'd8;  B = 4'd4;  #10;   // 8 * 4 = 32

    $finish;
  end
endmodule
