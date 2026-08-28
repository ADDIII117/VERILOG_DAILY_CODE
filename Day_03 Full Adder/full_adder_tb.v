  module full_adder_tb ;
    reg A, B, Cin;
    wire sum, carry_out; 
    
     full_adder uut ( .A(A), .B(B), .Cin(Cin), 
     .sum(sum), .carry_out(carry_out));
     
     initial 
     begin
        
        A=0; B=0; Cin=0; #10;
        $display ( "%b %b %b | %b %b" ,A, B, Cin, sum, carry_out);
        
        A=0; B=0; Cin=1; #10;
        $display ( "%b %b %b | %b %b" ,A, B, Cin, sum, carry_out);
        
        A=0; B=1; Cin=0; #10;
        $display ( "%b %b %b | %b %b" ,A, B, Cin, sum, carry_out);
        
        A=0; B=1; Cin=1; #10;
        $display ( "%b %b %b | %b %b" ,A, B, Cin, sum, carry_out);
        
        A=1; B=0; Cin=0; #10;
        $display ( "%b %b %b | %b %b" ,A, B, Cin, sum, carry_out);
        
        A=1; B=0; Cin=1; #10;
        $display ( "%b %b %b | %b %b" ,A, B, Cin, sum, carry_out);
        
        A=1; B=1; Cin=0; #10;
        $display ( "%b %b %b | %b %b" ,A, B, Cin, sum, carry_out);
        
        A=1; B=1; Cin=1; #10;
        $display ( "%b %b %b | %b %b" ,A, B, Cin, sum, carry_out);
        
        $finish;
      end
    endmodule
