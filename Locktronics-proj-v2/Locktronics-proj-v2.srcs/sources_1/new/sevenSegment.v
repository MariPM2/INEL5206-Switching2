`timescale 1ns / 1ps

module sevenSegment(
    input [1:0] status, // inputs, out_L & out_U
    output reg [6:0] seg // 7-segments
    );
    
    always @ (status)
    begin
        case(status)
            2'b01: seg=7'b1000111; // "L", locked, g, f, e, d, c, b, a
            2'b10: seg=7'b1000001; // "U", unlocked, 
        endcase
    end 
    
endmodule