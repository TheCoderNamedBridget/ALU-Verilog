`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2021 06:43:28 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] A,
    input [31:0] B,
    input [0:3] ALUCntl,
    output reg [31:0] ALUout,
    //c = carry, z = zero, n = negative, v = overflow
    output reg C,
    output Z,
    output reg N,
    output reg V
    );
    
    //takes care of zero
    assign Z = ( ALUout == 0 )? 1'b1 : 1'b0;
    
    always@(*) begin
        case( ALUCntl )
            4'b0000: begin //AND Operation
                        ALUout = A & B;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b0001: begin //OR Operation
                        ALUout = A | B;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b0011: begin //XOR Operation
                        ALUout = A ^ B;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b0010: begin //ADD Unisigned
                        ALUout = A + B;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b0110: begin //Subtraction unsigned
                        ALUout = A - B;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b1100: begin //NOr Operation
                        ALUout = ~(A | B);
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b0111: begin //NOT Operation
                        ALUout = ~A;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b1101: begin //Shift Left Logical
                        ALUout = A << 1;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b1010: begin //ADD Operation
                        ALUout = A + B;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
            4'b1101: begin //Subtract Operation
                        ALUout = A - B;
                        C = 1'bx;
                        V = 1'bx;
                        N = ALUout[31];
                    end
                  
            default: begin
                        ALUout = 32'bx;
                        {C, V, N} = 3'bxxx;
                     end
                
        endcase
    end
    
    
    
endmodule
