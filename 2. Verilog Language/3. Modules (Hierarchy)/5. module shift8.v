// The module provided to you is: module my_dff8 ( input clk, input [7:0] d, output [7:0] q );

/* You are given a module my_dff8 with two inputs and one output (that implements a set of 8 D flip-flops). 
   Instantiate three of them, then chain them together to make a 8-bit wide shift register of length 3.
   In addition, create a 4-to-1 multiplexer (not provided) that chooses what to output depending on sel[1:0]:
   The value at the input d, after the first, after the second, or after the third D flip-flop.
   (Essentially, sel selects how many cycles to delay the input, from zero to three clock cycles.)  */

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] q1, q2, q3;
    my_dff8 D1(clk, d, q1);
    my_dff8 D2(clk, q1, q2);
    my_dff8 D3(clk, q2, q3);
    
    always@(*) begin
        case(sel)
            0 : q=d;
            1 : q=q1;
            2 : q=q2;
            3 : q=q3;
        endcase
    end
    
endmodule
