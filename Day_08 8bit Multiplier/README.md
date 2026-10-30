# Day 08: 8-Bit Multiplier

This project implements an 8-bit binary multiplier in Verilog using a shift-and-add style design. It multiplies two 8-bit inputs, `A` and `B`, and produces a 16-bit product `P`.

## Objective

Design a combinational multiplier that computes:

P = A × B

where:

- `A` and `B` are 8-bit inputs
- `P` is a 16-bit output

## Design Approach

The multiplier generates partial products for each bit of `A` and then shifts and adds them together.

For each bit of `A`, a mask is created by ANDing that bit with all bits of `B`:

- `M0 = {8{A[0]}} & B`
- `M1 = {8{A[1]}} & B`
- `M2 = {8{A[2]}} & B`
- `M3 = {8{A[3]}} & B`
- `M4 = {8{A[4]}} & B`
- `M5 = {8{A[5]}} & B`
- `M6 = {8{A[6]}} & B`
- `M7 = {8{A[7]}} & B`

These partial products are then shifted according to their bit position and summed:

```verilog
assign s1 = {8'b00000000, M0} + ({8'b00000000, M1} << 1);
assign s2 = s1 + ({8'b00000000, M2} << 2);
assign s3 = s2 + ({8'b00000000, M3} << 3);
assign s4 = s3 + ({8'b00000000, M4} << 4);
assign s5 = s4 + ({8'b00000000, M5} << 5);
assign s6 = s5 + ({8'b00000000, M6} << 6);
assign s7 = s6 + ({8'b00000000, M7} << 7);
assign P = s7;
```

This method is simple, scalable, and easy to verify in simulation.

## Verilog Code

```verilog
module multiplier_8bit (
  input [7:0] A, B,
  output [15:0] P
);

  wire [7:0] M0, M1, M2, M3, M4, M5, M6, M7;
  wire [15:0] s1, s2, s3, s4, s5, s6, s7;

  assign M0 = {8{A[0]}} & B[7:0];
  assign M1 = {8{A[1]}} & B[7:0];
  assign M2 = {8{A[2]}} & B[7:0];
  assign M3 = {8{A[3]}} & B[7:0];
  assign M4 = {8{A[4]}} & B[7:0];
  assign M5 = {8{A[5]}} & B[7:0];
  assign M6 = {8{A[6]}} & B[7:0];
  assign M7 = {8{A[7]}} & B[7:0];

  assign s1 = {8'b00000000, M0} + ({8'b00000000, M1} << 1);
  assign s2 = s1 + ({8'b00000000, M2} << 2);
  assign s3 = s2 + ({8'b00000000, M3} << 3);
  assign s4 = s3 + ({8'b00000000, M4} << 4);
  assign s5 = s4 + ({8'b00000000, M5} << 5);
  assign s6 = s5 + ({8'b00000000, M6} << 6);
  assign s7 = s6 + ({8'b00000000, M7} << 7);

  assign P = s7;
endmodule
```

## Files

- `multiplexer_8bit.v` — 8-bit multiplier implementation
- `README.md` — project documentation

## Testbench

The testbench verifies several multiplication cases including small and maximum-value inputs:

```verilog
module tb_multiplier_8bit;
  reg [7:0] A, B;
  wire [15:0] P;

  multiplier_8bit uut (.A(A), .B(B), .P(P));

  initial begin
    $display("Time\tA\tB\tProduct");
    $monitor("%0t\t%d\t%d\t%d", $time, A, B, P);

    A = 8'd3;  B = 8'd5;  #10;   // 3 * 5 = 15
    A = 8'd7;  B = 8'd9;  #10;   // 7 * 9 = 63
    A = 8'd15; B = 8'd15; #10;   // 15 * 15 = 225
    A = 8'd10; B = 8'd12; #10;   // 10 * 12 = 120
    A = 8'd8;  B = 8'd4;  #10;   // 8 * 4 = 32
    A = 8'd255; B = 8'd255; #10; // 255 * 255 = 65025

    $finish;
  end
endmodule
```

## Simulation Results

### ModelSim Output

<img width="1533" height="910" alt="ModelSim output" src="https://github.com/user-attachments/assets/6edd8921-1b4c-48cd-b90c-4678cbd09197" />

### Vivado Waveform

<img width="1262" height="747" alt="Vivado waveform" src="https://github.com/user-attachments/assets/4a5d6bab-0093-47ad-9b81-464de55e74f9" />

## Learning Outcome

This project develops understanding of:

- binary multiplication
- partial product generation
- shift-and-add arithmetic
- combinational logic design in Verilog
- simulation and verification using testbenches and waveforms

It is a practical example of how integer multiplication is implemented efficiently in digital hardware.

