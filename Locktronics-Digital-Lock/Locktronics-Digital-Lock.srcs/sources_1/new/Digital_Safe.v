`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 09:48:41 AM
// Design Name: 
// Module Name: Digital_Safe
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


module Digital_Safe(
    input [4:0] in, //Enter the 5 bit code
    output [1:0] status //lock or unlock
    );
    
    parameter code=5'b01100; //code to unlock
    
    assign status[1] = ~(in[0]^code[0]) & ~(in[1]^code[1]) & ~(in[2]^code[2]) & ~(in[3]^code[3]) & ~(in[4]^code[4]); //lock
    
    assign status[0] = ~status[1];
    
endmodule
