module problem4a(x,y,clk,rst);
input x,clk,rst;
output y;
reg [1:0]state,next,y;
parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011;
always@(posedge clk,negedge rst)
    if(rst==0) state<=S0;
    else state<=next; 
always@(state,x)    
case(state)
        S1:next<=S1;
        S0:if(~x)next<=S2;else next<=S1;
        S2:if(~x)next<=S3;else next<=S1;
        S3:if(~x)next<=S2;else next<=S1;
endcase
always@(state,x)
    assign y=((~state[1]&x)|(~state[0]));
endmodule