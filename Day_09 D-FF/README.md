D Flip-Flop (DFF) — Overview
Definition
A D Flip-Flop (Data Flip-Flop) is a sequential logic circuit that stores one bit of data.

It captures the input D at the rising edge (or falling edge) of the clock and holds it until the next clock edge.

It’s the fundamental building block for registers, counters, and memory elements.

Inputs & Outputs
Inputs:

D → Data input

CLK → Clock signal

RST → Reset (forces output to 0)

Outputs:

Q → Stored data

QB → Complement of Q

Working Principle
On each posedge CLK:

If RST = 1 → Q = 0

Else → Q = D

QB always mirrors the complement of Q.


<img width="826" height="539" alt=Simulation
Run in ModelSim/Vivado:

<img width="859" height="475" alt="image" src="https://github.com/user-attachments/assets/0b20ed23-e79c-4425-b0ba-4597d068ac9f" />
<img width="1299" height="798" alt="image" src="https://github.com/user-attachments/assets/985b0247-5478-431f-b730-5d0f64ebd740" />

