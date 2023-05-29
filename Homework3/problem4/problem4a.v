module problem4a(x,y,clk,rst);
input x,clk,rst;
output y;
reg [1:0]state,next,y;
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
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