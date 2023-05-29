module problem6a(x,y,clk,rst);
input x,clk,rst;
output reg y;
reg [1:0]state,next;
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
always@(posedge clk,negedge rst)
    if(rst==0) state<=S0;
    else state<=next; 
always@(state,posedge clk)    
case(state)
        S0:if(~x)next<=S0;else next<=S1;
        S1:if(~x)next<=S1;else next<=S2;
        S2:if(~x)next<=S3;else next<=S1;
        S3:if(~x)next<=S2;else next<=S0;
endcase
always@(state)
    assign y=((state[1])|(state[0]));
endmodule