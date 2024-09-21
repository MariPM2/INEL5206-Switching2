`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2024 03:26:13 PM
// Design Name: 
// Module Name: System
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


module System (
    input COUNT,
    input CLEAR,
    output [6:0] seg,
    output an
);
    wire [3:0] bcd;

    BCDCounter bcd_counter (
        .COUNT(COUNT),
        .CLEAR(CLEAR),
        .Q(bcd)
    );

    BCDtoSevenSegment display (
        .bcd(bcd),
        .seg(seg),
        .an(an)
    );
endmodule

