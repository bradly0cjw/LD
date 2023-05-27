module problem4(x,y,clk,rst);
input x,clk,rst;
output y;
reg [1:0]state;
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
always@(posedge clk,negedge rst)
    if(rst==0) state<=S0;
    else case(state)
        S0:if(~x)state<=S2;else state<=S1;
        S1:state<=S1;
        S2:if(~x)state<=S3;else state<=S1;
        S3:if(~x)state<=S2;else state<=S1;
    endcase
    assign y=((~state[1]&x)|(~state[0]));
endmodule