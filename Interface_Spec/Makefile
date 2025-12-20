.PHONY: help
help:
	@echo "This Makefile is for generating an empty DUT inside Virtual FPGA Layer 1"
	@echo "  Requires 'bsc' compiler installation."
	@echo "  Requires various external libraries (see 'vendor' directory)."
	@echo ""
	@echo "Available targets:"
	@echo "  v_compile, v_all    bsc-compile to Verilog"
	@echo ""
	@echo "  clean               Remove temporary intermediate files"
	@echo "  full_clean          Restore to pristine state"

.PHONY: all
v_all: v_compile

# ****************************************************************
# Common bsc args

TOPFILE   ?= ./Virtual_FPGA_DUT.bsv
TOPMODULE ?= mkVirtual_FPGA_DUT

VENDOR = ../vendor

LIBS1 += $(VENDOR)/bsc-contrib_Libraries/AMBA_Fabrics/AXI4
LIBS2 += $(VENDOR)/bsc-contrib_Libraries/Misc

BSCPATH_V = $(LIBS1):$(LIBS2):+

# ****************************************************************
# Verilog generation

BSCDIRS_V = -bdir build_v  -info-dir build_v  -vdir verilog

build_v:
	mkdir -p $@

verilog:
	mkdir -p $@

.PHONY: v_compile
v_compile: build_v verilog
	@echo "Compiling for Verilog (Verilog generation) ..."
	bsc -u -elab -verilog  $(BSCDIRS_V)  -p $(BSCPATH_V)  $(TOPFILE)
	@echo "Verilog generation finished"

# ****************************************************************

.PHONY: clean
clean:
	rm -r -f  *~  .*~

.PHONY: full_clean
full_clean: clean
	rm -r -f  build_v  verilog

# ****************************************************************
