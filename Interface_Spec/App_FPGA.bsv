// Copyright (c) 2025-2026 Rishiyur S. Nikhil

package App_FPGA;

// ================================================================
// This package contains the mkApp_FPGA module with
// App_FPGA_IFC interface.

// ================================================================
// BSV library imports

import Clocks :: *;

// ----------------
// Imports from additional libs

import AXI4_BSV_RTL :: *;
import Semi_FIFOF   :: *;

// ================================================================

export App_FPGA_IFC (..);
export mkApp_FPGA;

// ****************************************************************
// DUT Interface

interface App_FPGA_IFC;
   // AXI4 from host
   interface AXI4_RTL_S_IFC #(16, 64, 512, 0) host_AXI4_S;

   // Interrupts to host
   interface FIFOF_O #(Bit #(64)) tohost_interrupts;

   // DDR interfaces
   interface AXI4_RTL_M_IFC #(16, 64, 512, 0) ddr_A_AXI4_M;
   interface AXI4_RTL_M_IFC #(16, 64, 512, 0) ddr_B_AXI4_M;
endinterface

// ****************************************************************
// DUT Module

(* synthesize *)
module mkApp_FPGA #(Clock clk1, Clock clk2, Clock clk3, Clock clk4, Clock clk5)
   (App_FPGA_IFC);

   // ... empty, for this proxy generator

endmodule

// ================================================================

endpackage
