DOC = Virtual_FPGA_L1

.PHONY: help
help:
	@echo "Targets"
	@echo "  doc, all    Rebuild .html from .adoc using asciidoctor"

.PHONY: all
all: doc

.PHONY: doc
doc:
	asciidoctor $(DOC).adoc

# ================================================================

.PHONY: clean
clean:
	rm -r -f  *~  Doc/*~  Doc/Figs/*~

.PHONY: full_clean
full_clean: clean
