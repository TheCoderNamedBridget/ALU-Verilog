`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2021 09:36:22 AM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();

 //Inputs to uut
    reg [31:0] A_tb;
    reg [31:0] B_tb;
    reg [0:3] ALUoperation_tb;
    
    reg [0:8] Ainput[0:15];
    reg [0:8] Binput[0:15];
    reg [0:3] ALUoperationinput[0:15];
    //outputs of uut
    wire ALUout_tb;
    wire C_tb;
    wire Z_out;
    wire N_out;
    wire V_out;
    
    //Testbeanch Specific
    integer i;
    
    //Instatiate Unit under test
    ALU uut1(.A(A_tb), .B(B_tb), .ALUoperation(ALUoperation_tb), .C(C_tb), .Z(Z_tb), .N(N_tb), .V(V_tb), .ALUout(ALUout_tb));
    
    
    initial begin
        $timeformat( -9, 1, " ns", 9);
        $display(" ");
        $display(" ");
        $display(" ");
        //Define test cases
        Ainput[0] = 'hF0F03C3C;
        Ainput[1] = 'hF0F03C3C;
        Ainput[2] = 'hF0F03C3C;
        Ainput[3] = 'h00000001;
        Ainput[4] = 'h6389754F;
        Ainput[5] = 'h00000001;
        Ainput[6] = 'h6389754F;
        Ainput[7] = 'hFFFFFFFF;
        Ainput[8] = 'h00000000;
        Ainput[9] = 'hF9684783;
        Ainput[10] = 'hF0F03C3C;
        Ainput[11] = 'h89BCDE34;
        Ainput[12] = 'hF0F03C3C;
        Ainput[13] = 'hF0F03C3C;
        Ainput[14] = 'hF0F03C3C;
        Ainput[15] = 'hF0F03C3C;
        
        Binput[0] = 'hBF0FF5F5;
        Binput[1] = 'hBF0FF5F5;
        Binput[2] = 'hBF0FF5F5;
        Binput[3] = 'hFFFFFFFF;
        Binput[4] = 'hAD5624E6;
        Binput[5] = 'hFFFFFFFF;
        Binput[6] = 'hAD5624E6;
        Binput[7] = 'hFFFFFFFF;
        Binput[8] = 'h00000001;
        Binput[9] = 'hF998D562;
        Binput[10] = 'hBF0FF5F5;
        Binput[11] = 'hC53BD687;
        Binput[12] = 'hBF0FF5F5;
        Binput[13] = 'hBF0FF5F5;
        Binput[14] = 'hBF0FF5F5;
        Binput[15] = 'hBF0FF5F5;
       
        ALUoperationinput[0] = 4'b0000;
        ALUoperationinput[1] = 4'b0001;
        ALUoperationinput[2] = 4'b0011;
        ALUoperationinput[3] = 4'b0010;
        ALUoperationinput[4] = 4'b0010;
        ALUoperationinput[5] = 4'b0010;
        ALUoperationinput[6] = 4'b0010;
        ALUoperationinput[7] = 4'b0010;
        ALUoperationinput[8] = 4'b0110;
        ALUoperationinput[9] = 4'b0110;
        ALUoperationinput[10] = 4'b1100;
        ALUoperationinput[11] = 4'b0111;
        ALUoperationinput[12] = 4'b1101;
        ALUoperationinput[13] = 4'b1111;
        ALUoperationinput[14] = 4'b1010;
        ALUoperationinput[15] = 4'b1110;
        
        for ( i = 0; i < 16; i = i + 1) begin
            A_tb = Ainput[i];
            B_tb = Binput[i];

            ALUoperation_tb = ALUoperationinput[i];
            #5 $display("time=%t A=%0h B=%0h ALUoperation=%0b|| F2=%0h", $time, A_tb, B_tb, ALUoperation_tb, ALUout_tb);
        end  
        $finish;
    end
endmodule
