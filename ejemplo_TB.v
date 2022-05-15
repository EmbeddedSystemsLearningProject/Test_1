`include "ejemplo.v"
`timescale 1ps/1ps

module ejemplo_TB();
    reg [1:0] a_reg;
    reg [1:0] b_reg;
    //uut: unit under test
    ejemplo uut(
        .a(a_reg),
        .b(b_reg)
    );

    initial begin
        a_reg = 2'b00;
        b_reg = 2'b00;

        #5;
        a_reg = 2'b10;
        b_reg = 2'b00;

        #5;
        a_reg = 2'b11;
        b_reg = 2'b11;

    end

    initial begin
        $dumpfile("ejemplo_TB.vcd");
        $dumpvars(-1, uut);
        #30 $finish;//debe ser mayor al tiempo que se tenga en todo el 
        
    end


endmodule