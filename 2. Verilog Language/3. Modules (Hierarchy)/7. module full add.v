/* The provided module add16 has the following declaration:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

Within each add16, 16 full adders (module add1, not provided) are instantiated to actually perform the addition. You must write the full adder module that has the following declaration:

module add1 ( input a, input b, input cin, output sum, output cout );

you will create a circuit with two levels of hierarchy. 
Your top_module will instantiate two copies of add16 (provided), each of which will instantiate 16 copies of add1 (which you must write).
Thus, you must write two modules: top_module and add1.  */

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin, cout, c1;
    add16 addLOW ( a[15:0], b[15:0], cin, sum[15:0], c1);
    add16 addHIGH( a[31:16], b[31:16], c1, sum[31:16], cout);

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign sum = a^b^cin;
    assign cout = (a&b)|(b&cin)|(cin&a);

endmodule
