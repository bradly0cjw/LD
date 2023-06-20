module tff(y,t,clk,rst);
input t,clk,rst;
output reg y;
always@(posedge clk,negedge rst)
if(rst==0)y<=0;
else case(t)
1'b0:y<=y;
1'b1:y<=~y;
endcase
endmodule
module problem5b(out,clk,rst);
input clk,rst;
output [3:0] out;
wire [3:0]ff;
assign out=ff;
tff t1(ff[3],ff[3]^(~ff[0]),clk,rst);
tff t2(ff[2],ff[2]^ff[3],clk,rst);
tff t3(ff[1],ff[1]^ff[2],clk,rst);
tff t4(ff[0],ff[0]^ff[1],clk,rst);
endmodule