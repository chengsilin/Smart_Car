`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/09/07 09:11:17
// Design Name: 
// Module Name: PWM_Controller_Int
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PWM_Controller # (
	parameter integer period = 20)
( 
	input Clk,
	input [31:0] DutyCycle,
	input Reset,
	output reg PWM_out,
	output reg Interrupt,
	output reg [period-1:0] count
);
	//Sets PWMPeriod. Must be calculated vs. input clk period.
	//For example,setting this to 20 will divide the input clock by 2^20, or 1 Million. 
	//So a 50MHz input clock will bedivided by 1e6, thus this will have a period of 1/50
	always @( posedge Clk )
		if(!Reset)
			count <= 0;
		else
			count <= count + 1;

	always @( posedge Clk )
		if(count < DutyCycle)
			PWM_out <= 1;
		else
			PWM_out <= 0;
	always @( posedge Clk )
		if(!Reset)
			Interrupt <= 0;
		else if(DutyCycle > 990000)
			Interrupt <= 1;
		else
			Interrupt <= 0;
endmodule