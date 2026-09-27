// JK Flip-Flop 
module jk_ff (
    input J, K, CLK, RST,
    output reg Q,
    output QB
);


  always @(posedge CLK or posedge RST) 
   begin
    if (RST) begin
      Q <= 1'b0;              
    end 
    else 
     begin
      case ({J,K})
        2'b00: Q <= Q;       
        2'b01: Q <= 1'b0;     
        2'b10: Q <= 1'b1;     
        2'b11: Q <= ~Q;      
      endcase
    end
  end

  assign QB = ~Q;           

endmodule

