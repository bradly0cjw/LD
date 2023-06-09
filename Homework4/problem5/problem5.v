module dff(y,x,clk,rst);
input x,clk,rst;
output reg y;
always@(posedge clk ,negedge rst)
    if (rst==0)y=0;
    else
        y<=x;
endmodule
module problem5(out,clk,rst);
input clk,rst;
output [3:0] out;
wire a,b,c,d;
assign out= {a,b,c,d};
dff M0(a,~d,clk,rst);
dff M1(b,a,clk,rst);
dff M2(c,b,clk,rst);
dff M3(d,c,clk,rst);
endmodule