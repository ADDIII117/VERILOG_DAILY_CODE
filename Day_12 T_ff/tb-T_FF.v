
`timescale 1ns/1ps

module T_FF_tb;

    reg T;
    reg clk;
    reg reset;
    wire Q;
    
    T_FF uut (
        .T(T),
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    always begin
        clk = 0; #5;
        clk = 1; #5;
    end

    initial begin
      
        reset = 1; T = 0;
        #10 reset = 0;   

        
        #10 T = 1;       
        #50 T = 0;    
        #30 T = 1;       
        #50 reset = 1;   
        #10 reset = 0;   
        #20 T = 1;      

        #50 $finish;     
    end

    initial begin
        $monitor("Time=%0t | clk=%b | reset=%b | T=%b | Q=%b", 
                  $time, clk, reset, T, Q);
    end

endmodule
// total time = 230ns