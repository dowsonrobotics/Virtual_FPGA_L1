This directory provides an empty DUT module to be plugged into the Virtual FPGA.

Purpose: serve as a template that defines the interface between the
    DUT and the Virtual FPGA Layer 1 infastructure.

Developers of Virtual FPGA Layer 1 infastructure can use this as a proxy for the DUT.

Developers of DUTs can use this as a starting point, and fill in the empty body.

Requires 'bsc' compiler installation.
Requires various external libraries (see 'vendor' directory).

Then,

    $ make v_compile

will create and populate:    verilog/mkVirtual_FPGA_DUT.v

mkVirtual_FPGA_DUT.v contains a Verilog module that has the specified
interface input and output ports to the Virtual FPGA Layer 1.

The module is empty (no internal logic); to be filled in per application.
