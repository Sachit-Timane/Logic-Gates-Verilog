# Multiple Logic Gates — Verilog RTL Design

## Overview

This project implements a digital logic gate system using Verilog HDL, demonstrating the design, simulation and verification of combinational logic circuits.

The design was developed using Xilinx Vivado and includes a dedicated RTL module, simulation testbench and FPGA constraints for a Xilinx Spartan-7 device.

## Tools and Technologies

| Category | Details |
|---|---|
| Hardware Description Language | Verilog HDL |
| Development Environment | Xilinx Vivado |
| Target FPGA | Spartan-7 XC7S50-CSGA324-1 |
| Design Methodology | RTL Design |
| Circuit Type | Combinational Logic |
| Verification | Verilog Testbench |
| Simulation | Vivado Behavioral Simulation |
| FPGA Constraints | XDC |

## Design Description

The project demonstrates the implementation of fundamental digital logic operations using synthesizable Verilog HDL.

The RTL design processes binary input signals and generates corresponding logic outputs.

### Key Features

- Combinational logic design using Verilog HDL.
- Modular RTL implementation.
- Dedicated testbench for functional verification.
- Behavioral simulation and waveform analysis using Vivado.
- FPGA-oriented design with XDC pin constraints.

## RTL Design and Verification

The design is implemented in `multiple_logic_gate_system.v`.

A dedicated testbench, `tb_multiple_logic_gate_system.v`, is used to apply input combinations and observe the corresponding logic outputs.

Behavioral simulation in Xilinx Vivado enables verification of the implemented Boolean logic and
