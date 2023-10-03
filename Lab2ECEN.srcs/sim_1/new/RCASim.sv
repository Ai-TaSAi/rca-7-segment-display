`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 01:08:09 PM
// Design Name: 
// Module Name: RCASim
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


module RCASim(

    );
    
    logic [3:0] A, B, S;
    logic Co;
    
    RCA RCA_Instance(.*);
    
    initial
        begin
        
        //Test 1
        A = 5;
        B = 3;
        #10
        if (S !== 8 && Co !== 0) $display ("Error: A:%h B:%h", A, B);
        
        //Test 2
        A = 8;
        B = 9;
        #10
        if (S !== 1 && Co !== 1) $display ("Error: A:%h B:%h", A, B);
        
        $display ("Finished");
    end
    
endmodule
