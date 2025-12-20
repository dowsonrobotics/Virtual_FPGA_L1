// Copyright (c) 2025-2026 Rishiyur S. Nikhil

package Virtual_FPGA_DUT;

// ================================================================
// This package contains the mkVirtual_FPGA_DUT module with
// Virtual_FPGA_DUT_IFC interface.

// ================================================================
// BSV library imports

import Clocks :: *;

// ----------------
// Imports from additional libs

import AXI4_BSV_RTL :: *;
import Semi_FIFOF   :: *;

// ================================================================

export Virtual_FPGA_DUT_IFC (..);
export mkVirtual_FPGA_DUT;

// ****************************************************************
// DUT Interface

interface Virtual_FPGA_DUT_IFC;
   // AXI4 from host
   interface AXI4_RTL_S_IFC #(16, 64, 512, 0) host_AXI4_S;

   // Interrupts to host
   interface FIFOF_O #(Bit #(64)) tohost_interrupts;

   // DDR interfaces
   interface AXI4_RTL_M_IFC #(16, 64, 512, 0) ddr_A_M;
   interface AXI4_RTL_M_IFC #(16, 64, 512, 0) ddr_B_M;
endinterface

// ****************************************************************
// DUT Module

(* synthesize *)
module mkVirtual_FPGA_DUT #(Clock clk1, Clock clk2, Clock clk3, Clock clk4, Clock clk5)
   (Virtual_FPGA_DUT_IFC);

   // ... empty, for this proxy generator

endmodule

// ================================================================

endpackage
