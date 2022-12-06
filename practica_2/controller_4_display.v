`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2022 07:22:51
// Design Name: 
// Module Name: controller_4_display
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


module controller_4_display(
    input [3:0] a,b,c,d,
    input clk,
    output [6:0] disp,
    output [3:0] transistor
    );
    wire [7:0] count;
    wire mux_disp;
      
    decoder_7seg_4b i_decoder(
        .in(mux_disp),
        .out(disp)
    );
    
    soft_gtv i_soft_gtv(
        .rst(0),
        .clk(clk),
        .spd_btn(0),
        .mode(0),
        .evnt(0),
        .count(count)
    );
    
    mux_4_1_4b i_mux(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(count[1:0]),
        .z(mux_disp)
    );
    
    one_cold_2b_coder i_one_cold(
        .en(1'b1),
        .din(count[1:0]),
        .dout(transistor)
    );
    
endmodule
