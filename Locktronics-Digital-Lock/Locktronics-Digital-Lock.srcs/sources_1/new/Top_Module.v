`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 10:07:38 AM
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input [4:0] sw, // input code, sw=switch?
    output [1:0] status, //lock, unlock
    output [6:0] seg,
    output [3:0] an // enable for 7-segment
    );
    
    //povering-up 7-segment Display, Right most (Active-Low)
    assign an=4'b1110; //using the right most led on basys 3 board
    
    //instantiate the two modules, seven segment and digital safe system
    
    Seven_Segment U0(status, seg);
    Digital_Safe U1(sw, status);
    
endmodule
