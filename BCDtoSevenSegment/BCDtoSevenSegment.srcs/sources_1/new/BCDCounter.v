`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2024 03:10:01 PM
// Design Name: 
// Module Name: BCDCounter
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


module BCDCounter (COUNT, CLEAR, Q); 
    input COUNT, CLEAR; 
    output reg[3:0] Q; 
    always @ (posedge COUNT, posedge CLEAR)
       if(CLEAR==1) Q <=0; 
       else     
            begin
                    if(Q==4'b1001)
                        Q<=0; 
                    else 
                        Q<= Q + 1'b1; 
            end 
endmodule
