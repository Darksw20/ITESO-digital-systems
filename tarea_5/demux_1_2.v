`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 08:26:23
// Design Name: 
// Module Name: demux_1_2
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


module demux_1_2(
    input [1:0]a,
    input sel;
    output reg [1:0]f0, f1
    );
    always @(a or sel)
        begin
            case(sel)
            1'b0: f0= a;
            1'b1: f1 =a;
            endcase
        end
endmodule
