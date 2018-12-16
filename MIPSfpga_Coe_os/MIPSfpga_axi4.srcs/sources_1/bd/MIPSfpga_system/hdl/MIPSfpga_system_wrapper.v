//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Sun Dec 16 13:44:11 2018
//Host        : DESKTOP-PJGMRVB running 64-bit major release  (build 9200)
//Command     : generate_target MIPSfpga_system_wrapper.bd
//Design      : MIPSfpga_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPSfpga_system_wrapper
   (BLUE_UART_RXD_OUT,
    BLUE_UART_TXD_IN,
    CLK100MHZ,
    CPU_RESETN,
    DDR2_SDRAM_addr,
    DDR2_SDRAM_ba,
    DDR2_SDRAM_cas_n,
    DDR2_SDRAM_ck_n,
    DDR2_SDRAM_ck_p,
    DDR2_SDRAM_cke,
    DDR2_SDRAM_cs_n,
    DDR2_SDRAM_dm,
    DDR2_SDRAM_dq,
    DDR2_SDRAM_dqs_n,
    DDR2_SDRAM_dqs_p,
    DDR2_SDRAM_odt,
    DDR2_SDRAM_ras_n,
    DDR2_SDRAM_we_n,
    DIR_clk,
    DIR_enable,
    DIR_latch,
    DIR_serial,
    JB1,
    JB2,
    JB3,
    JB4,
    JB7,
    JB8,
    LED,
    PWM_B_L,
    PWM_B_R,
    PWM_F_L,
    PWM_F_R,
    UART_RXD_OUT,
    UART_TXD_IN);
  output BLUE_UART_RXD_OUT;
  input BLUE_UART_TXD_IN;
  input CLK100MHZ;
  input CPU_RESETN;
  output [12:0]DDR2_SDRAM_addr;
  output [2:0]DDR2_SDRAM_ba;
  output DDR2_SDRAM_cas_n;
  output [0:0]DDR2_SDRAM_ck_n;
  output [0:0]DDR2_SDRAM_ck_p;
  output [0:0]DDR2_SDRAM_cke;
  output [0:0]DDR2_SDRAM_cs_n;
  output [1:0]DDR2_SDRAM_dm;
  inout [15:0]DDR2_SDRAM_dq;
  inout [1:0]DDR2_SDRAM_dqs_n;
  inout [1:0]DDR2_SDRAM_dqs_p;
  output [0:0]DDR2_SDRAM_odt;
  output DDR2_SDRAM_ras_n;
  output DDR2_SDRAM_we_n;
  output DIR_clk;
  output DIR_enable;
  output DIR_latch;
  output DIR_serial;
  input JB1;
  input JB2;
  output JB3;
  input JB4;
  input JB7;
  input JB8;
  output [15:0]LED;
  output PWM_B_L;
  output PWM_B_R;
  output PWM_F_L;
  output PWM_F_R;
  output UART_RXD_OUT;
  input UART_TXD_IN;

  wire BLUE_UART_RXD_OUT;
  wire BLUE_UART_TXD_IN;
  wire CLK100MHZ;
  wire CPU_RESETN;
  wire [12:0]DDR2_SDRAM_addr;
  wire [2:0]DDR2_SDRAM_ba;
  wire DDR2_SDRAM_cas_n;
  wire [0:0]DDR2_SDRAM_ck_n;
  wire [0:0]DDR2_SDRAM_ck_p;
  wire [0:0]DDR2_SDRAM_cke;
  wire [0:0]DDR2_SDRAM_cs_n;
  wire [1:0]DDR2_SDRAM_dm;
  wire [15:0]DDR2_SDRAM_dq;
  wire [1:0]DDR2_SDRAM_dqs_n;
  wire [1:0]DDR2_SDRAM_dqs_p;
  wire [0:0]DDR2_SDRAM_odt;
  wire DDR2_SDRAM_ras_n;
  wire DDR2_SDRAM_we_n;
  wire DIR_clk;
  wire DIR_enable;
  wire DIR_latch;
  wire DIR_serial;
  wire JB1;
  wire JB2;
  wire JB3;
  wire JB4;
  wire JB7;
  wire JB8;
  wire [15:0]LED;
  wire PWM_B_L;
  wire PWM_B_R;
  wire PWM_F_L;
  wire PWM_F_R;
  wire UART_RXD_OUT;
  wire UART_TXD_IN;

  MIPSfpga_system MIPSfpga_system_i
       (.BLUE_UART_RXD_OUT(BLUE_UART_RXD_OUT),
        .BLUE_UART_TXD_IN(BLUE_UART_TXD_IN),
        .CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN),
        .DDR2_SDRAM_addr(DDR2_SDRAM_addr),
        .DDR2_SDRAM_ba(DDR2_SDRAM_ba),
        .DDR2_SDRAM_cas_n(DDR2_SDRAM_cas_n),
        .DDR2_SDRAM_ck_n(DDR2_SDRAM_ck_n),
        .DDR2_SDRAM_ck_p(DDR2_SDRAM_ck_p),
        .DDR2_SDRAM_cke(DDR2_SDRAM_cke),
        .DDR2_SDRAM_cs_n(DDR2_SDRAM_cs_n),
        .DDR2_SDRAM_dm(DDR2_SDRAM_dm),
        .DDR2_SDRAM_dq(DDR2_SDRAM_dq),
        .DDR2_SDRAM_dqs_n(DDR2_SDRAM_dqs_n),
        .DDR2_SDRAM_dqs_p(DDR2_SDRAM_dqs_p),
        .DDR2_SDRAM_odt(DDR2_SDRAM_odt),
        .DDR2_SDRAM_ras_n(DDR2_SDRAM_ras_n),
        .DDR2_SDRAM_we_n(DDR2_SDRAM_we_n),
        .DIR_clk(DIR_clk),
        .DIR_enable(DIR_enable),
        .DIR_latch(DIR_latch),
        .DIR_serial(DIR_serial),
        .JB1(JB1),
        .JB2(JB2),
        .JB3(JB3),
        .JB4(JB4),
        .JB7(JB7),
        .JB8(JB8),
        .LED(LED),
        .PWM_B_L(PWM_B_L),
        .PWM_B_R(PWM_B_R),
        .PWM_F_L(PWM_F_L),
        .PWM_F_R(PWM_F_R),
        .UART_RXD_OUT(UART_RXD_OUT),
        .UART_TXD_IN(UART_TXD_IN));
endmodule
