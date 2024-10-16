`timescale 1ns / 1ps

module top(
//    input [15:0] sw, // input code, sw=switch?
    output [1:0] status, //lock, unlock
    output [6:0] seg,
    output [3:0] an, // enable for 7-segment
    
    input clk_100MHz,   // from Basys 3
    input [3:0] rows,   // Pmod JB pins 10 to 7
    output [3:0] cols  // Pmod JB pins 4 to 1
//    output [3:0] an,    // 7 segment anodes
//    output [6:0] seg    // 7 segment cathodes
    );
    
    //povering-up 7-segment Display, Right most (Active-Low)
    assign an=4'b1110; //using the right most led on basys 3 board
    
    wire [3:0] w_dec1;
    wire [3:0] w_dec2;
    wire [3:0] w_dec3;
    wire [3:0] w_dec4;
    
    //instantiate the two modules, seven segment and digital safe system
//    decoder
    decoder d1(.clk_100MHz(clk_100MHz), .row(rows), .col(cols), .dec_out(w_dec1));
	decoder d2(.clk_100MHz(clk_100MHz), .row(rows), .col(cols), .dec_out(w_dec2));
	decoder d3(.clk_100MHz(clk_100MHz), .row(rows), .col(cols), .dec_out(w_dec3));
	decoder d4(.clk_100MHz(clk_100MHz), .row(rows), .col(cols), .dec_out(w_dec4));
	
    sevenSegment U0(status, seg);
   
    digitalSafe U1({w_dec1, w_dec2, w_dec3, w_dec4}, status);
    
endmodule