	
# Variables
VERILOG_PATH = ..

RTL_PATH = /home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180/synthesis/rtl

#RTL_PATH = /home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180/synthesis/output


SCL_SIM_MODELS=  /home/dhanvanti/scl_pdk_v2/stdlib/fs120/verilog/vcs_sim_model/

SCL_PDK_PATH ?= /home/dhanvanti/scl_pdk_v2
#SCL_PADK_PATH_ENV ?= ../scl180

RISCV_TYPE ?= rv32imc

FIRMWARE_PATH = ..

GCC_PATH?=/home/dhanvanti/Downloads/riscv32/bin

GCC_PREFIX?=riscv32-unknown-elf



SIM_DEFINES = -DFUNCTIONAL -DSIM
VVP = vvp
GTKWAVE = gtkwave

# Simulation file
TB_FILE = hkspi_tb.v    # Replace this with your testbench file name
VCD_FILE = hkspi.vcd

# Default target
all: run

# Compile Verilog files to generate .vvp
%.vvp: %.v
	iverilog -Ttyp -v $(SIM_DEFINES)  \
	-I $(FIRMWARE_PATH) \
	-I $(RTL_PATH) \
	-I $(SCL_PDK_PATH)/stdlib/fs120/verilog/vcs_sim_model/ \
	-I $(SCL_PDK_PATH)/iolib/cio150/verilog/tsl18cio150/zero/ \
	$< -o $@ 

# Run the .vvp file to generate the .vcd file
%.vcd: %.vvp
	$(VVP) $<

# Run simulation and open the waveform in gtkwave
run: $(TB_FILE:.v=.vcd)
	$(GTKWAVE) $(VCD_FILE)

# Clean generated files
clean:
	rm -f *.vvp *.vcd

.PHONY: all run clean
	






