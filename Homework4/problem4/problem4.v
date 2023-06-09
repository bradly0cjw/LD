module dff(y,x,clk,rst);
input x,clk,rst;
output reg y;
always@(posedge clk ,negedge rst)
    if (rst==0)y=0;
    else
        y<=x;
endmodule
module problem4(in,out,clk,rst);
input in,clk,rst;
output out;
wire a,b,c;
dff M0(a,in,clk,rst);
dff M1(b,a,clk,rst);
dff M2(c,b,clk,rst);
dff M3(out,c,clk,rst);
endmodule