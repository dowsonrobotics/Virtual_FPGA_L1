This directory provides an empty App_FPGA module to be plugged into the Virtual FPGA.

Purpose: serve as a template that defines the interface between
    App_FPGA and the Virtual FPGA Layer 1 infastructure.

Developers of Virtual FPGA Layer 1 infastructure can use this as a proxy for App_FPGA.

Developers of App_FPGAs can use this as a starting point, and fill in the empty body.

Requires 'bsc' compiler installation.
Requires various external libraries (see 'vendor' directory).

Then,

    $ make v_compile

will create and populate:    verilog/mkApp_FPGA.v

mkApp_FPGA.v contains a Verilog module that has the specified
interface input and output ports to the Virtual FPGA Layer 1.

The module is empty (no internal logic); to be filled in per application.
