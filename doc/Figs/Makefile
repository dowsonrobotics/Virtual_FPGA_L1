# This Makefile is for generating .png files from .svg files.
# Requires Inkscape installation.

.PHONY: help
help:
	@echo "This Makefile is for generating .png files from .svg files"
	@echo "(requires Inkscape installation)."
	@echo "Available 'make' targets:"
	@echo "  help        Show this help text and exit"
	@echo ""
	@echo "  <file>.png  Generate '<file>.png' from '<file>.svg'"
	@echo ""
	@echo "  all         Generate, from corresponding .svg files, all the following:"
	@echo "        $(FILES)"
	@echo ""
	@echo "  clean       remove temporary intermediate files"
	@echo "  full_clean  restore directory to pristine state"

# ================================================================

FILES += RSN_2025-12-17.000.00_virtual_FPGA_arch.png
FILES += RSN_2025-12-19.000.00_virtual_FPGA_modules.png

.PHONY: all
all: $(FILES)

# ================================================================
# The following is generic rule converts an .svg file into a .png file

%.png: %.svg
	inkscape --export-filename=$@  --export-area-drawing  -d 300 -y 0.0 $<

# ================================================================

.PHONY: clean
clean:
	rm -r -f *~

.PHONY: full_clean
full_clean: clean
