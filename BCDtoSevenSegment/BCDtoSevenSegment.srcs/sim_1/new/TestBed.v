`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2024 03:29:01 PM
// Design Name: 
// Module Name: TestBed
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


//module TestBed(

//    );
//endmodule

module TestBed;
    reg COUNT;
    reg CLEAR;
    wire [6:0] seg;
    wire an;

    System uut (
        .COUNT(COUNT),
        .CLEAR(CLEAR),
        .seg(seg),
        .an(an)
    );

//    initial begin
//        // Initialize inputs
//        COUNT = 0;
//        CLEAR = 1;
//        #10 CLEAR = 0; // Clear at the start

//        // Simulate counting
//        for (int i = 0; i < 20; i = i + 1) begin
//            #10 COUNT = 1; // Trigger COUNT
//            #10 COUNT = 0; // Reset COUNT
//        end

//        $finish; // End simulation
//    end
endmodule

