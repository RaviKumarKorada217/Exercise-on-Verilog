/*You are provided with a 16-bit adder module, which you need to instantiate twice:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout ); */

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]bxor;
    wire c1, cout;
    assign bxor={32{sub}}^b;
    add16 M1(a[15:0], bxor[15:0], sub, sum[15:0], c1);
    add16 M2(a[31:16], bxor[31:16], c1, sum[31:16], cout);

endmodule
