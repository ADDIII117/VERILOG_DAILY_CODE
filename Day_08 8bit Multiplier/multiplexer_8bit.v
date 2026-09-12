
module multiplier_8bit (
  input [7:0] A, B,
  output [15:0] P
  );
  
  wire [7:0] M0, M1, M2, M3, M4, M5, M6, M7 ;
    
    wire [15:0] s1,s2, s3, s4, s5, s6, s7;
    
    assign M0= {8{A[0]}} & B[7:0];
    assign M1= {8{A[1]}} & B[7:0];
    assign M2= {8{A[2]}} & B[7:0]; 
    assign M3= {8{A[3]}} & B[7:0];
    assign M4= {8{A[4]}} & B[7:0];
    assign M5= {8{A[5]}} & B[7:0];
    assign M6= {8{A[6]}} & B[7:0];
    assign M7= {8{A[7]}} & B[7:0];
    
     
     assign s1 = {8'b00000000, M0} + ({8'b00000000, M1}<<1);
     assign s2= s1 + ({8'b00000000, M2}<<2);
     assign s3= s2 + ({8'b00000000, M3}<<3);
     assign s4= s3 + ({8'b00000000, M4}<<4);
     assign s5= s4 + ({8'b00000000, M5}<<5);
     assign s6= s5 + ({8'b00000000, M6}<<6);
     assign s7= s6 + ({8'b00000000, M7}<<7);
     
     
     assign P=s7;
   endmodule 
   
   
   
   ///////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////
   
   `timescale 1ns/1ps

module tb_multiplier_8bit;
  reg [7:0] A, B;       
  wire [15:0] P;        


  multiplier_8bit uut (.A(A), .B(B), .P(P) );

  initial begin
    $display("Time\tA\tB\tProduct");
    $monitor("%0t\t%d\t%d\t%d", $time, A, B, P);

    
    A = 8'd3;  B = 8'd5;  #10;   // 3 * 5 = 15
    A = 8'd7;  B = 8'd9;  #10;   // 7 * 9 = 63
    A = 8'd15; B = 8'd15; #10;   // 15 * 15 = 225
    A = 8'd10; B = 8'd12; #10;   // 10 * 12 = 120
    A = 8'd8;  B = 8'd4;  #10;   // 8 * 4 = 32
    A = 8'd255; B = 8'd255; #10;   // 255 * 255 = 65025
    
    
    $finish;
  end
endmodule
