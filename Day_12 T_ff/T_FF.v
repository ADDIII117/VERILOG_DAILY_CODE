module T_FF ( T, clk, reset, Q);
   
    input T;         
    input clk;       
    input reset;      
    output reg Q;     


    always @(posedge clk )
     begin
        if (reset) 
            Q <= 1'b0;         
        else if (T) 
            Q <= ~Q;           
        else 
            Q <= Q;           
    end

endmodule
