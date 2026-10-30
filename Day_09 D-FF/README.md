# Day 09: D Flip-Flop (D-FF)

## Overview
A D Flip-Flop (DFF) is a fundamental sequential logic circuit that stores one bit of data. It captures the value of the `D` input at the active clock edge and holds it until the next clock event.

It is one of the basic building blocks used in:
- registers
- counters
- memory elements
- sequential circuits
- state machines

## Inputs and Outputs

### Inputs
- `D` — Data input
- `CLK` — Clock signal
- `RST` — Reset signal

### Outputs
- `Q` — Stored data output
- `QB` — Complement of `Q`

## Working Principle
On each rising edge of the clock (`posedge CLK`):

- If `RST = 1`, then `Q = 0`
- Else, `Q = D`

The complementary output is always:

- `QB = ~Q`

This means the flip-flop updates its state synchronously with the clock and retains the value between clock pulses.

## Behavior Summary
- `RST = 1` → output resets to `0`
- `RST = 0` and clock edge occurs → output takes the value of `D`
- No clock edge → output remains unchanged

## Simulation
Run the design in ModelSim or Vivado to verify the behavior.

![Simulation](https://github.com/user-attachments/assets/0b20ed23-e79c-4425-b0ba-4597d068ac9f)

![Waveform Result](https://github.com/user-attachments/assets/985b0247-5478-431f-b730-5d0f64ebd740)

## Conclusion
The D Flip-Flop is a core element in digital design. It provides a reliable way to store a single bit of data and synchronize updates with a clock signal, making it essential for modern sequential logic systems.
