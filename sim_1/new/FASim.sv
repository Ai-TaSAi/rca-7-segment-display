`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 12:39:09 PM
// Design Name: 
// Module Name: FASim
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


module FASim(

    );
    
    logic A, B;
    logic Cin;
    logic Co;
    logic S;
    
    FA Full_Adder_Inst ( .A(A), .B(B), .Cin(Cin), .S(S), .Co(Co) );
    
    initial
        begin
        // TC0
        A = 0; B = 0; Cin = 0;
        #10
        if ((S !== 0) & (Co !== 0)) $display ("Error A:%b B:%b Cin:%b", A, B, Cin);
        
        // TC1
        A = 0; B = 0; Cin = 1;
        #10
        if ((S !== 1) & (Co !== 0)) $display ("Error A:%b B:%b Cin:%b", A, B, Cin);
        
        // TC2
        A = 0; B = 1; Cin = 0;
        #10
        if ((S !== 1) & (Co !== 0)) $display ("Error A:%b B:%b Cin:%b", A, B, Cin);
        
        // TC3
        A = 0; B = 1; Cin = 1;
        #10
        if ((S !== 0) & (Co !== 1)) $display ("Error A:%b B:%b Cin:%b", A, B, Cin);
        
        // TC4
        A = 1; B = 0; Cin = 0;
        #10
        if ((S !== 1) & (Co !== 0)) $display ("Error A:%b B:%b Cin:%b", A, B, Cin);
        
        // TC5
        A = 1; B = 0; Cin = 1;
        #10
        if ((S !== 0) & (Co !== 1)) $display ("Error A:%b B:%b Cin:%b", A, B, Cin);
        
        // TC6
        A = 1; B = 1; Cin = 0;
        #10
        if ((S !== 0) & (Co !== 1)) $display ("Error A:%b B:%b Cin:%b", A, B, Cin);
        
        // TC7
        A = 1; B = 1; Cin = 1;
        #10
        if ((S !== 1) & (Co !== 1)) $display ("Error A:%b B:%b Cin:%b", A, B, Cin);
        
        $display ("Finished");
    end
    
endmodule
