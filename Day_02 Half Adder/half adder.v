// Half Adder in Verilog 
// Day-02 thursday
// Name Aditya Singh

module half_adder (
    input  a,      // First input bit
    input  b,      // Second input bit
    output sum,    // Sum output
    output carry   // Carry output
);

    // Logic
    assign sum   = a ^ b;  // XOR gate
    assign carry = a & b;  // AND gate

endmodule

