module Toggle_flip_flop (Q, T, Clk, rst);
    output 	Q;
    input	T, Clk, rst;
    reg 	Q;
  always @ (posedge Clk, negedge rst)	
    if (!rst) Q <= 1'b0;
    else if (T) Q <= !Q;	 
endmodule

module counter(
    input clock, reset,
    output [2:0] A
    );
    wire T_A1_in, T_A2_in;
    Toggle_flip_flop T_A0(A[0], 1'b1, clock, reset);
    Toggle_flip_flop T_A1(A[1], T_A1_in, clock, reset);
    Toggle_flip_flop T_A2(A[2], T_A2_in, clock, reset);
    assign T_A1_in = A[0];
    assign T_A2_in =  A[1] & A[0];
endmodule
