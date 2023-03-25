/*  Create two intermediate wires (named anything you want) to connect the AND and OR gates together. 
    Note that the wire that feeds the NOT gate is really wire out, so you do not necessarily need to declare a third wire here. 
    Notice how wires are driven by exactly one source (output of a gate), but can feed multiple inputs.
*/

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire w1, w2;
    and g1(w1,a,b);
    and g2(w2,c,d);
    or(out,w1,w2);
    not(out_n,out);

/* wire w1, w2;		// Declare two wires (named w1 and w2)
	assign w1 = a&b;	// First AND gate
	assign w2 = c&d;	// Second AND gate
	assign out = w1|w2;	// OR gate: Feeds both 'out' and the NOT gate

	assign out_n = ~out;	// NOT gate
*/

endmodule
