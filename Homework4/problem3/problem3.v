module tff(y,x,clk,rst);
input x,clk,rst;
output reg y;
always@(posedge clk,negedge rst)
    if(rst==0)y=0;
    else
        y<=x;
endmodule
module problem3(state,clk,rst);
input clk,rst;
output [2:0] state;
wire A,B,C;
assign A=state[2]^state[1];
assign B=state[0]|(state[2]&(~state[1]));
assign C=((~state[2])&(~state[1])&(~state[0]));
tff M0(state[0],C,clk,rst);
tff M1(state[1],B,clk,rst);
tff M2(state[2],A,clk,rst);
endmodule
