`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 01:10:20 PM
// Design Name: 
// Module Name: Lab3Sim
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


module Lab3Sim(

    );
    /* 
    input [3:0] A, // For RCA
    input [3:0] B, // For RCA
    output [6:0] seg,
    output [3:0] an 
    */
    
    logic [3:0] A, B, an;
    logic [6:0] seg;
    
    Lab3 Lab3_Instance (.*);
    
    initial
        begin
        
        //Test 0
        A = 0;
        B = 0;
        #10
        if (seg !== 7'b1000000 && an !== 0) $display ("Error: A:%h B:%h", A, B);
        
        //Test 1a
        A = 5;
        B = 3;
        #10
        if (seg !== 7'b0000000 && an !== 0) $display ("Error: A:%h B:%h", A, B);
        
        //Test 1b
        A = 5;
        B = 7;
        #10
        if (seg !== 7'b1000110 && an !== 0) $display ("Error: A:%h B:%h", A, B);
        
        //Test 2
        A = 8;
        B = 8;
        #10
        if (seg !== 7'b1000000 && an !== 1) $display ("Error: A:%h B:%h", A, B);
        
        $display ("Finished");
    end
    
endmodule
