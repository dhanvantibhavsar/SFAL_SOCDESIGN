# SFAL_SOCDESIGN  
**A Step-by-Step Journey in SoC Design**  

## Overview  
Digital chip design is a multi-step process that transforms a high-level functional specification into a fully manufacturable silicon chip. It begins with defining the design requirements, followed by **Register Transfer Level (RTL) coding** using hardware description languages like **Verilog or VHDL**. The RTL design is then verified to ensure functional correctness before being synthesized into a gate-level netlist.  

Once synthesized, the **physical design phase** begins, which includes **floorplanning, placement, clock tree synthesis (CTS), and routing** to create the actual chip layout. After routing, the design undergoes extensive **timing analysis, power optimization, and physical verification** (DRC/LVS) to ensure manufacturability. The final design is then prepared for **GDSII tapeout**, marking the transition from design to fabrication.  

This repository provides a **structured, hands-on guide** through the **RTL-to-GDSII** flow using **Synopsys tools**. Each stage is covered in detail, offering insights into **design optimization, best practices, and industry-standard methodologies** to help users efficiently navigate the SoC design process.  

---

## 📌 Project Contents
 
<details> 
<summary> DAY 0 - Introduction & Setup</summary>

### Day 0 - Introduction & Setup  
- Overview of the SoC design flow  
- Installing and setting up required tools  
- Understanding the design environment
</details> 

<details> 
<summary> Day 1 - RTL Design & Simulation</summary>

### Day 1 - RTL Design & Simulation  
- Introduction to verilog RTLdesign and Synthesis  
- Functional simulation using Synopsys tools  
- Testbench creation and waveform analysis using GTK Wave  
</details> 

<details> 
<summary> Day 2 - Synthesis & Constraints</summary>

### Day 2 - Synthesis & Constraints  
- introduction to timing libs  
- Hierarchial vs Flat Synthesis  
- Flop Coding Styles  
</details>

<details> 
<summary> Day 3 - Combinational and sequential optimizations</summary>

### Day 3 - Combinational and sequential optimizations
- Introduction to optimizations  
- Combinational Logic Optimizations 
- Sequential Logic Optimizations 
- Sequential Optimizations for Unused Outputs
</details>

<details> 
<summary> Day 4 - GLS, Blocking vs Non-blocking, and Synthesis-Simulation Mismatch</summary>

### Day 4 - GLS, Blocking vs Non-blocking, and Synthesis-Simulation Mismatch  
- GLS, Synthesis-Simulation Mismatch, and Blocking/Non-blocking Statements 
- Labs on GLS and Synthesis  
</details>

<details> 
<summary> Day 5 - Introduction to Logic Synthesis</summary>

### Day 5 - Introduction to Logic Synthesis  
- PDK Used- SCL180  
- Getting started with DC shell  
</details>

<details> 
<summary> Day 6 - Basics of STA </summary>

### Day 6 - Basics of STA 
- Introduction to STA and its contraints 
- Timing .libs and Exploration   
</details>

### VexRiscV Harnessed with Efabless's Caravel and SCL180 PDK
- VexRiscV Harnessed with Efabless's Caravel and SCL180 PDK is a reference project demonstrating the synthesis and gate-level simulation (GLS) of the Caravel design using the SCL180 PDK.

---

## 🛠️ Tools Used  
- **SCL180 PDK** ( SCL180 PDK)
- **Skywater 130 PDK** (will be replaced in future for por)
- **RiscV32-uknown-elf.gcc** (building functional simulation files)
- **Caravel User Project Framework** from Efabless
- **Synopsis tools** for synthesis
- **Verilog Simulator** (e.g., Icarus Verilog)
- **GTKWAVE** (used for visualizing testbench waves)

---

## 📚 References  
- https://github.com/efabless/caravel/ 
- Industry resources on ASIC and SoC design  

## Acknowledgement
- Special thanks to [Mr. Kunal Ghosh](https://github.com/kunalg123), Co-founder, VSD Corp. Pvt. Ltd. for his mentorship and guidance in this project.
---
  
  
