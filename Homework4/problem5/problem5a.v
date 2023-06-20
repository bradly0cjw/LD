module jkff(y,j,k,clk,rst);
input j,k,clk,rst;
output reg y;
always@(posedge clk,negedge rst)
if(rst==0)y<=0;
else case({j,k})
2'b01:y<=0;
2'b10:y<=1;
2'b11:y<=~y;
endcase
endmodule
module problem5a(out,clk,rst);
input clk,rst;
output [3:0] out;
wire [3:0]ff;
assign out=ff;
jkff t1(ff[3],~ff[0],ff[0],clk,rst);
jkff t2(ff[2],ff[3],~ff[3],clk,rst);
jkff t3(ff[1],ff[2],~ff[2],clk,rst);
jkff t4(ff[0],ff[1],~ff[1],clk,rst);
endmodule