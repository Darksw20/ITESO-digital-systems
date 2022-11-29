`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:34 08/15/2013 
// Design Name: 
// Module Name:    soft_gtv 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module soft_gtv(
    input rst,
	 input clk,
    input spd_btn,
    input [2:0] mode,
    input evnt,
    output [7:0] count
    );

    reg evnt_ff;
    reg gtv_tm_flg;
    wire gtv_ev_flg;
    reg [7:0] gtv_cnt;
    reg [7:0] gtv_cnt_ff;	 
    reg [24:0] base_cnt;
    reg [24:0] base_cnt_ff;	 
    reg [28:0] spd_ff;	 
    assign count = gtv_cnt_ff;
	 
	always @(posedge clk)
	    evnt_ff <= evnt;
		
	assign gtv_ev_flg = evnt & ~evnt_ff;
	 
	always @(posedge clk or posedge rst)
	    if (rst) spd_ff <= 28'b0;
		else spd_ff <= spd_ff + spd_btn;
		
	 
	always @* begin
	    gtv_tm_flg = 1'b0;
	    base_cnt = base_cnt_ff;
        if (base_cnt_ff == (25'd250000-25'd1+spd_ff[28:4])) begin
		    gtv_tm_flg = 1'b1;
		    base_cnt = 25'b0;
            end 
        else begin
		    base_cnt = base_cnt_ff + 25'b1;
            end
    end
	 
	always @(posedge clk) begin
	    base_cnt_ff <= base_cnt;
	end
	 
	always @* begin
	    gtv_cnt = gtv_cnt_ff;
		
	    case (mode)
		    0: if(gtv_tm_flg) gtv_cnt = gtv_cnt_ff - 8'b1;
		    1: if(gtv_tm_flg) gtv_cnt = gtv_cnt_ff + 8'b1;
		    4: if(gtv_ev_flg) gtv_cnt = gtv_cnt_ff - 8'b1;
		    5: if(gtv_ev_flg) gtv_cnt = gtv_cnt_ff + 8'b1;
		    default: gtv_cnt = gtv_cnt_ff;
		endcase
	end
	 
	always @(posedge clk or posedge rst) begin
	    if (rst) gtv_cnt_ff <= 8'b0;
		else gtv_cnt_ff <= gtv_cnt;
	end
