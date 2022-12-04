`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Ricardo Navarro
// 
// Create Date: 14.10.2021 09:54:38
// Design Name: 
// Module Name: bin2hex_7seg
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


module bin2hex_7seg(
    input w,
    input x,
    input y,
    input z,
    output seg_a,
    output seg_b,
    output seg_c,
    output seg_d,
    output seg_e,
    output seg_f,
    output seg_g,
    output [3:0] T
    );
    
    assign T = 4'b1110; // para prender solo el digito de la izq(D0)
    
    assign seg_a = (~w&~x&~y&z)|(~w&x&~y&~z)|(w&x&~y&z)|(w&~x&y&z);
    assign seg_b = (~w&x&~y&z)|(x&y&~z)|(w&x&~y&~z)|(w&y&z);
    assign seg_c = (w&y&z)|(w&x&y)|(~w&~x&y&~z);
    assign seg_d = (x&y&z)|(~x&~y&z)|(w&~x&y&~z)|(~w&x&~y&~z);
    assign seg_e = (~w&z)|(~w&x&~y)|(~x&~y&z);
    assign seg_f = (w&x&~y&z)|(~w&~x&z)|(~w&~x&y)|(~w&y&z);
    assign seg_g = (~w&~x&~y)|(w&x&~y&~z)|(~w&x&y&z);
    
    
endmodule
