module problem2(x,y,clk,rst);
input x,clk,rst;
output y;
reg [2:0]state;
parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101,S6=3'b110;
always@(posedge clk,negedge rst)
    if(rst==0)state<=S0;
    else case(state)
        S0:if(~x)state<=S1;else state<=S0;
        S1:if(x)state<=S2;else state<=S1;
        S2:state<=S3;
        S3:state<=S4;
        S4:state<=S5;
        S5:state<=S6;
        S6:state<=S0;
    endcase
    assign y=((~state[2]&state[1])|(~state[0]&~state[1]&state[2]));
endmodule