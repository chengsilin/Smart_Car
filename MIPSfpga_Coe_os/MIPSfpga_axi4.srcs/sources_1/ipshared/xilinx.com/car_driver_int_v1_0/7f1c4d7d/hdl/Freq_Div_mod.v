`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/09/10 18:41:20
// Design Name: 
// Module Name: Freq_Div_mod
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


module Freq_Div_mod(
	input Clk_in,
	output reg Clk_out
    );
	reg [32:0] count = 0;
    initial Clk_out = 1'b0;
    always @(posedge Clk_in)
        if(count == 50000)
        begin
            Clk_out = ~Clk_out;
            count = 0;
        end
        else count = count + 1;
endmodule
