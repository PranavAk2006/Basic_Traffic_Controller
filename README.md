# Basic Traffic Light Controller

This project implements a simple Traffic Light Controller using Verilog HDL and a Finite State Machine (FSM).

The controller manages two roads, Road A and Road B, and cycles through four traffic states:

- Road A Green, Road B Red
- Road A Yellow, Road B Red
- Road A Red, Road B Green
- Road A Red, Road B Yellow

The state transitions are controlled using a counter.

## State Sequence

A_GREEN -> A_YELLOW -> B_GREEN -> B_YELLOW -> A_GREEN

## State Timing

| State | Duration |
|--------|----------|
| A_GREEN | 10 Clock Cycles |
| A_YELLOW | 2 Clock Cycles |
| B_GREEN | 10 Clock Cycles |
| B_YELLOW | 2 Clock Cycles |

## Output Encoding

| Signal | Binary Value |
|---------|-------------|
| GREEN | 3'b001 |
| YELLOW | 3'b010 |
| RED | 3'b100 |

## Files

traffic_controller.v

traffic_controller_tb.v

README.md

## Simulation

The design was verified using a Verilog testbench in Xilinx Vivado Simulator.

Simulation confirms:

- Correct state transitions
- Correct traffic light outputs
- Proper counter operation
- Continuous cyclic operation

## Concepts Used

- Verilog HDL
- Finite State Machine (FSM)
- Moore FSM
- Sequential Logic
- Combinational Logic
- Counter Based Timing

## Future Improvements

- Pedestrian crossing support
- Emergency vehicle priority
- Configurable timing parameters
- Sensor based traffic control

## Author

Pranav Akalankam

B.Tech ECE | VLSI Enthusiast