module ejemplo(
    input [1:0] a,
    input [1:0] b,
    output [1:0] out  
);

assign out = a & b;
endmodule