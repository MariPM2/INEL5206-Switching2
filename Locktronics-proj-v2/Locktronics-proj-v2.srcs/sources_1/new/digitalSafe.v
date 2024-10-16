`timescale 1ns / 1ps

module digitalSafe(
    input [15:0] in, //Enter the 4 bit code
    output [1:0] status //lock or unlock
    );
    
//    parameter code=5'b0110; //code to unlock
    parameter code = 16'b0001001000110100; // Example 4-digit code: 1, 2, 3, 4
        
//    assign status[1] = ~(in[0]^code[0]) & ~(in[1]^code[1]) & ~(in[2]^code[2]) & ~(in[3]^code[3]); //lock
    assign status[1] = ~(in[0] ^ code[0]) & 
                   ~(in[1] ^ code[1]) & 
                   ~(in[2] ^ code[2]) & 
                   ~(in[3] ^ code[3]) & 
                   ~(in[4] ^ code[4]) & 
                   ~(in[5] ^ code[5]) & 
                   ~(in[6] ^ code[6]) & 
                   ~(in[7] ^ code[7]) & 
                   ~(in[8] ^ code[8]) & 
                   ~(in[9] ^ code[9]) & 
                   ~(in[10] ^ code[10]) & 
                   ~(in[11] ^ code[11]) & 
                   ~(in[12] ^ code[12]) & 
                   ~(in[13] ^ code[13]) & 
                   ~(in[14] ^ code[14]) &
                   ~(in[15] ^ code[15]);

    assign status[0] = ~status[1];
    
endmodule