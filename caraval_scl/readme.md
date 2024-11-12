# Caravel RISC-V Core

## Overview

The **Caravel RISC-V Core** is an open-source SoC platform developed by Efabless, optimized for custom silicon prototyping on the SkyWater 130nm and 180nm nodes. 

## Repository structure
The directory structure is organized as follows:


```
vsdscl180/
├── caravel_scl180/          # Caravel project adapted for the SCL180 process node
    ├── hkspi/                # Contains various testbench files for the project
    ├── rtl/                  # Verilog files for the project's RTL design
    ├── scl180/               # Wrapper files for integrating the SCL180 node
├── caravel_130/             # Caravel project adapted for the SCL130 process node
├── synthesis/               # Scripts for setup, simulation, and synthesis
```

### Testbench 
Make sure you have installed the riscv gcc toolchain\
To install the toolchain refer this repo [link](https://github.com/riscv-collab/riscv-gnu-toolchain)
