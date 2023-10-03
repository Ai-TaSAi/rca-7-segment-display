`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 12:00:17 PM
// Design Name: 
// Module Name: HASim
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


module HASim(

    );
    
    logic A, B;
    logic Co;
    logic S;
    
    HA Half_Adder_Inst ( .A(A), .B(B), .Co(Co), .S(S) );
    
    initial
        begin
        // TC0
        A = 0; B = 0;
        #10
        if ((S !== 0) & (Co !== 0)) $display ("Error A:%b B:%b", A, B);
        
        // TC1
        A = 0; B = 1;
        #10
        if ((S !== 1) & (Co !== 0)) $display ("Error A:%b B:%b", A, B);
        
        // TC2
        A = 1; B = 0;
        #10
        if ((S !== 1) & (Co !== 0)) $display ("Error A:%b B:%b", A, B);
        
        // TC3
        A = 1; B = 1;
        #10
        if ((S !== 0) & (Co !== 1)) $display ("Error A:%b B:%b", A, B);
        
        $display ("Finished");
    end
endmodule
