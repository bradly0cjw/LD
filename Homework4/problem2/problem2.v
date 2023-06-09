module JKff(x,j,k,clk,clr);
input j,k,clk,clr;
output reg x;
always@(negedge clk,negedge clr)
    if (clr==0)x=0;
    else case({j,k})
    2'b00: x<=x;
    2'b01: x<=0;
    2'b10: x<=1;
    2'b11: x<=~x;
    endcase    
endmodule
module problem2(q,count,clr);
input count,clr;
output [3:0] q;
JKff M0(q[0],1,1,count,clr);    
JKff M1(q[1],~q[3],1,q[0],clr);    
JKff M2(q[2],1,1,q[1],clr);    
JKff M3(q[3],(q[1]&q[2]),1,q[0],clr);    
endmodule
