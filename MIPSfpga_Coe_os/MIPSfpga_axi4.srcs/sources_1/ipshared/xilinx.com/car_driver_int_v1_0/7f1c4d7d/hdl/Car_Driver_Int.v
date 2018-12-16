`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/09/09 17:08:55
// Design Name: 
// Module Name: Car_Driver_Int
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


module Car_Driver_Int (
input Clk,
	input [31:0] CtrlSig,
	output reg DIR_serial,
	output reg DIR_enable,
	output reg DIR_latch
);
	parameter ST0 = 0, ST1 = 1, ST2 = 2, ST3 = 3, ST4 = 4, ST5 = 5, ST6 = 6, ST7 = 7, ST8 = 8;
	reg [3: 0] p_state = ST8;
	reg [31:0] buff = 0;

	always @ (negedge Clk)
		case (p_state)
			ST0:
				begin
					buff <= CtrlSig;
					p_state <= ST1;
					DIR_serial <= CtrlSig[0];
					DIR_enable <= 1;
					DIR_latch  <= 0;
				end
			ST1:
				begin
					p_state <= ST2;
					DIR_serial <= CtrlSig[1];
					DIR_enable <= 1;
					DIR_latch  <= 0;
				end
			ST2:
				begin
					p_state <= ST3;
					DIR_serial <= CtrlSig[2];
					DIR_enable <= 1;
					DIR_latch  <= 0;
				end
			ST3:
				begin
					p_state <= ST4;
					DIR_serial <= CtrlSig[3];
					DIR_enable <= 1;
					DIR_latch  <= 0;
				end
			ST4:
				begin
					p_state <= ST5;
					DIR_serial <= CtrlSig[4];
					DIR_enable <= 1;
					DIR_latch  <= 0;
				end
			ST5:
				begin
					p_state <= ST6;
					DIR_serial <= CtrlSig[5];
					DIR_enable <= 1;
					DIR_latch  <= 0;
				end
			ST6:
				begin
					p_state <= ST7;
					DIR_serial <= CtrlSig[6];
					DIR_enable <= 1;
					DIR_latch  <= 0;
				end
			ST7:
				begin
					p_state <= ST8;
					DIR_serial <= CtrlSig[7];
					DIR_enable <= 1;
					DIR_latch  <= 0;
				end
			ST8:
				begin
					p_state =  !(CtrlSig ^ buff) ? ST8 : ST0;
					DIR_serial <= CtrlSig[7];
					DIR_enable <= 0;
					DIR_latch  <= 1;
				end
			default:
				begin
					p_state <= ST8;
				end
		endcase
endmodule