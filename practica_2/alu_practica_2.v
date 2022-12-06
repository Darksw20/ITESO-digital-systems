`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2022 07:22:51
// Design Name: 
// Module Name: alu
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


module alu_practica_2(
    input [3:0] a,b,
    input [2:0]sel,
    input clk,
    );
    wire [3:0] out;
    wire [7:0] flags;
        
    alu i_alu(
        .a(a),
        .b(b),
        .sel(sel),
        .s(out),
        .flags(flags)
    );

    controller_4_display i_controller_4_display(
        .a(a),
        .b(b),
        .d(out),
        .c(co),
        .clk(clk)
    );
    
endmodule
