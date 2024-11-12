## Introduction to Logic Synthesis

Logic Synthesis converts high-level design specifications (e.g., in Verilog) into gate-level implementations, aiming to optimize for area, timing, and power.

Example Verilog code for synthesis:
```
module model_code (input a, input b, input c, output z);
assign y = (a & b) | (b & c) | (c & a);
endmodule
```

#### Key Considerations:

Different implementations may be functionally correct, but choosing the best one depends on area, delay, and design constraints.

Constraints guide the synthesis tool to pick suitable library cells that align with design goals.


#### Setting up Synopsys Design Compiler (DC)
Design Compiler (DC) is a widely used synthesis tool in ASIC design.

File Types:
.lib: Standard cell libraries.\
.db: Binary format libraries for DC.\
.ddc: Synopsys proprietary format to store design information.\
SDC (Synopsys Design Constraints): Specifies timing, area, and power constraints.

#### Steps to Invoke DC Shell

```
csh
dc_shell

read_db <path_to_database>
set target_library <path_to_target_library>
set link_library {* <path_to_link_library>}

link

compile

write -format verilog -output <output_filename>.v

write -format ddc -output <output_filename>.ddc
```

