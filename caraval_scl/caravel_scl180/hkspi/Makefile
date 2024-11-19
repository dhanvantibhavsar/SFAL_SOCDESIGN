# SPDX-FileCopyriightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0






VERILOG_PATH = ..

RTL_PATH = /home/dhanvanti/vsdscl180/vsdscl180/caravel_scl180/rtl



SCL_PDK_PATH ?= /home/dhanvanti/scl_pdk_v2
SCL_PADK_PATH_ENV ?= ../scl180


RISCV_TYPE ?= rv32imc

FIRMWARE_PATH = ..

GCC_PATH?=/home/dhanvanti/Downloads/riscv32/bin

GCC_PREFIX?=riscv32-unknown-elf



SIM_DEFINES = -DFUNCTIONAL -DSIM



.SUFFIXES:



PATTERN = hkspi



all:  ${PATTERN:=.vcd}



hex:  ${PATTERN:=.hex}



%.vvp: %_tb.v %.hex
	iverilog -Ttyp $(SIM_DEFINES) \
	-I $(FIRMWARE_PATH) \
	-I $(RTL_PATH) \
	-I $(SCL_PDK_PATH_ENV)  \
	-I $(SCL_PDK_PATH)/stdlib/fs120/verilog/vcs_sim_model/ \
	-I $(SCL_PDK_PATH)/iolib/cio150/verilog/tsl18cio150/zero/ \
	$< -o $@ 



%.vcd: %.vvp
	vvp $<



%.elf: %.c $(FIRMWARE_PATH)/sections.lds $(FIRMWARE_PATH)/start.s check-env
	${GCC_PATH}/${GCC_PREFIX}-gcc -march=$(RISCV_TYPE) -mabi=ilp32 -Wl,-Bstatic,-T,$(FIRMWARE_PATH)/sections.lds,--strip-debug -ffreestanding -nostdlib -o $@ $(FIRMWARE_PATH)/start.s $<



%.hex: %.elf
	${GCC_PATH}/${GCC_PREFIX}-objcopy -O verilog $< $@
	# to fix flash base address
	 sed -i 's/@10000000/@00000000/g' $@
	

%.bin: %.elf
	 ${GCC_PATH}/${GCC_PREFIX}-objcopy -O binary $< /dev/stdout | tail -c +1048577 > $@
	
	
clean:
	 rm -f  *.vvp *.vcd *.log
	
	
.PHONY: clean hex all





