module problem6(x,y,clk,rst);
input x,clk,rst;
output y;
reg [1:0]state;
parameter S0=3'b00,S1=3'b01,S2=3'b10,S3=3'b11;
always@(posedge clk,negedge rst)
    if(rst==0) state<=S0;
    else case(state)
        S0:if(~x)state<=S0;else state<=S1;
        S1:if(~x)state<=S1;else state<=S2;
        S2:if(~x)state<=S3;else state<=S1;
        S3:if(~x)state<=S2;else state<=S0;
    endcase
    assign y=((state[1])|(state[0]));
endmodule