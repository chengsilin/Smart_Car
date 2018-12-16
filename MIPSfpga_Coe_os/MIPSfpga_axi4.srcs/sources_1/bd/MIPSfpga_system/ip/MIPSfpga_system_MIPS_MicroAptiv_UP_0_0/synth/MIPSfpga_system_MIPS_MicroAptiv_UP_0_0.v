// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:MIPS_MicroAptiv_UP:1.0
// IP Revision: 4

// Forward declaration of the netlist blackbox
(* black_box = "1" *)
module MIPS_MicroAptiv_UP (
  EJ_DINT,
  EJ_TCK,
  EJ_TDI,
  EJ_TDO,
  EJ_TMS,
  EJ_TRST_N,
  HCLK,
  HMASTLOCK,
  HREADY,
  HRESETn,
  HRESP,
  HWRITE,
  SI_ClkIn,
  SI_ColdReset,
  SI_Reset,
  HADDR,
  HBURST,
  HPROT,
  HRDATA,
  HSIZE,
  HTRANS,
  HWDATA,
  SI_Int
);
input wire EJ_DINT;
input wire EJ_TCK;
input wire EJ_TDI;
output wire EJ_TDO;
input wire EJ_TMS;
input wire EJ_TRST_N;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HCLK CLK" *)
output wire HCLK;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HMASTLOCK" *)
output wire HMASTLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HREADY" *)
input wire HREADY;
output wire HRESETn;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HRESP" *)
input wire HRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HWRITE" *)
output wire HWRITE;
input wire SI_ClkIn;
input wire SI_ColdReset;
input wire SI_Reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HADDR" *)
output wire [31 : 0] HADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HBURST" *)
output wire [2 : 0] HBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HPROT" *)
output wire [3 : 0] HPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HRDATA" *)
input wire [31 : 0] HRDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HSIZE" *)
output wire [2 : 0] HSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HTRANS" *)
output wire [1 : 0] HTRANS;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HWDATA" *)
output wire [31 : 0] HWDATA;
input wire [7 : 0] SI_Int;
endmodule
// End of netlist blackbox

(* X_CORE_INFO = "MIPS_MicroAptiv_UP,Vivado 2015.2" *)
(* CHECK_LICENSE_TYPE = "MIPSfpga_system_MIPS_MicroAptiv_UP_0_0,MIPS_MicroAptiv_UP,{}" *)
(* CORE_GENERATION_INFO = "MIPSfpga_system_MIPS_MicroAptiv_UP_0_0,MIPS_MicroAptiv_UP,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=MIPS_MicroAptiv_UP,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module MIPSfpga_system_MIPS_MicroAptiv_UP_0_0 (
  EJ_DINT,
  EJ_TCK,
  EJ_TDI,
  EJ_TDO,
  EJ_TMS,
  EJ_TRST_N,
  HCLK,
  HMASTLOCK,
  HREADY,
  HRESETn,
  HRESP,
  HWRITE,
  SI_ClkIn,
  SI_ColdReset,
  SI_Reset,
  HADDR,
  HBURST,
  HPROT,
  HRDATA,
  HSIZE,
  HTRANS,
  HWDATA,
  SI_Int
);

input wire EJ_DINT;
input wire EJ_TCK;
input wire EJ_TDI;
output wire EJ_TDO;
input wire EJ_TMS;
input wire EJ_TRST_N;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HCLK CLK" *)
output wire HCLK;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HMASTLOCK" *)
output wire HMASTLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HREADY" *)
input wire HREADY;
output wire HRESETn;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HRESP" *)
input wire HRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HWRITE" *)
output wire HWRITE;
input wire SI_ClkIn;
input wire SI_ColdReset;
input wire SI_Reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HADDR" *)
output wire [31 : 0] HADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HBURST" *)
output wire [2 : 0] HBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HPROT" *)
output wire [3 : 0] HPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HRDATA" *)
input wire [31 : 0] HRDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HSIZE" *)
output wire [2 : 0] HSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HTRANS" *)
output wire [1 : 0] HTRANS;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 AHB_Lite HWDATA" *)
output wire [31 : 0] HWDATA;
input wire [7 : 0] SI_Int;

  MIPS_MicroAptiv_UP inst (
    .EJ_DINT(EJ_DINT),
    .EJ_TCK(EJ_TCK),
    .EJ_TDI(EJ_TDI),
    .EJ_TDO(EJ_TDO),
    .EJ_TMS(EJ_TMS),
    .EJ_TRST_N(EJ_TRST_N),
    .HCLK(HCLK),
    .HMASTLOCK(HMASTLOCK),
    .HREADY(HREADY),
    .HRESETn(HRESETn),
    .HRESP(HRESP),
    .HWRITE(HWRITE),
    .SI_ClkIn(SI_ClkIn),
    .SI_ColdReset(SI_ColdReset),
    .SI_Reset(SI_Reset),
    .HADDR(HADDR),
    .HBURST(HBURST),
    .HPROT(HPROT),
    .HRDATA(HRDATA),
    .HSIZE(HSIZE),
    .HTRANS(HTRANS),
    .HWDATA(HWDATA),
    .SI_Int(SI_Int)
  );
endmodule
