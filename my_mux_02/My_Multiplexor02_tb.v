`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2021 18:51:31
// Design Name: 
// Module Name: My_Multiplexor02_tb
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


module My_Multiplexor02_tb;
    
    reg a_s,b_s,sel_s;
    wire y_s;
    
    My_Multiplexor02 UUT(
        .a(a_s),.b(b_s),.sel(sel_s),
        .y(y_s)
    );
    
    initial begin
        a_s=0;
        b_s=0;
        sel_s=0;                     
    end
        
    always begin #10 a_s= ~a_s;end
    always begin #40 b_s= ~b_s;end
    always begin #320 sel_s= ~sel_s;end
        
endmodule
