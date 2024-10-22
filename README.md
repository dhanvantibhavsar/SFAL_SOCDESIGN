# SFAL SOC Design Journey
## Day0
### Digital VLSI SOC Design and Planning
![image](./images/Screenshot%202024-10-22%20200619.png)
The image explains a high-level overview of the System-on-Chip (SoC) design flow, breaking down the key stages involved in the process from chip modeling to RTL (Register Transfer Level) design and eventual SoC integration. Let's see the overall process:

1. **Chip Modeling (O1)**
   - **Specs (C Model)**: The process begins with specifying the system's design using a high-level C model. This is where the functional behavior of the chip is modeled and tested using a C-based testbench.
   - The **C model** represents the initial step for verifying the architecture before translating it into hardware.

2. **RTL Architect (O2)**
   - **Soft Copy of Hardware Using RTL (Verilog)**: Once the high-level specifications are verified, the design moves to the RTL phase. At this stage, the hardware design is described using RTL (often in Verilog). This stage produces a soft copy of the hardware.
   - The design is split into components like **Processors**, **Peripherals/IPs**, and other logic blocks.

3. **Synthesis and SoC Design**
   - The RTL is synthesized to produce gate-level netlists. There are several synthesized components:
     - **Gate Level Netlist (Synth P1)**: The processor and peripheral IP blocks are converted into a gate-level design.
     - **Macros (Synth RTL)**: Pre-designed blocks or **Macros** (such as memory blocks or custom logic) are synthesized from RTL.
     - **Analog IPs (Func RTL)**: Some analog components are also designed and integrated at this stage.
   
4. **SoC Integration (O3)**
   - After synthesis, the next step is **SoC integration**, where all the digital and analog blocks are connected together, including GPIOs (General Purpose Input/Output). This is the stage where components like processors and IPs are assembled into a complete chip.
   - Physical design tasks like **floorplanning**, **placement**, **clock tree synthesis (CTS)**, and **routing** are performed, ensuring that all blocks are physically laid out on the chip.

5. **Floorplanning and Macros**
   - In this step, **macros and analog IP libraries** are hardened into fixed layouts (known as **hard macros** or HM). The processor can sometimes be hard macro as well, depending on the design.
   - The layout also involves defining the placement of each block and ensuring proper routing of signals.

### Tools Installtion

