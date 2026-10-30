# Day 07: 4-Bit Multiplier

This project implements a 4-bit binary multiplier in Verilog using a shift-and-add style approach. It multiplies two 4-bit inputs, `A` and `B`, and produces an 8-bit product `P`.

## Objective

Design a combinational multiplier that computes:

P = A × B

where:

- `A` and `B` are 4-bit inputs
- `P` is an 8-bit output

## Design Approach

The multiplier creates partial products for each bit of `A` and then shifts and adds them together.

For each bit of `A`, a mask is created by ANDing that bit with all bits of `B`:

- `M0 = {4{A[0]}} & B`
- `M1 = {4{A[1]}} & B`
- `M2 = {4{A[2]}} & B`
- `M3 = {4{A[3]}} & B`

These partial products are then shifted according to their bit position and summed:

```verilog
assign s1 = {4'b0000, M0} + ({4'b0000, M1} << 1);
assign s2 = s1 + ({4'b0000, M2} << 2);
assign s3 = s2 + ({4'b0000, M3} << 3);
assign P = s3;
```

This method is efficient and easy to follow for implementing multiplication in hardware.

## Verilog Code

```verilog
module multiplier_4bit (
  input [3:0] A, B,
  output [7:0] P
);

  wire [3:0] M0, M1, M2, M3;
  wire [7:0] s1, s2, s3;

  assign M0 = {4{A[0]}} & B[3:0];
  assign M1 = {4{A[1]}} & B[3:0];
  assign M2 = {4{A[2]}} & B[3:0];
  assign M3 = {4{A[3]}} & B[3:0];

  assign s1 = {4'b0000, M0} + ({4'b0000, M1} << 1);
  assign s2 = s1 + ({4'b0000, M2} << 2);
  assign s3 = s2 + ({4'b0000, M3} << 3);

  assign P = s3;
endmodule
```

## Files

- `multiplexer_4bit.v` — 4-bit multiplier implementation
- `multiplier_tb.v` — testbench to verify multiple multiplication cases
- `REDEME.md` — project documentation

## Testbench

The testbench applies several sample values to test the multiplier:

```verilog
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
- shift-and-add multiplication methods
- combinational arithmetic circuit design in Verilog
- simulation and waveform verification

It is a practical example of how integer multiplication can be implemented efficiently in digital hardware.
