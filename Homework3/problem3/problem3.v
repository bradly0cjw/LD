module problem3(x,y,clk,rst);
input x,clk,rst;
output y;
reg [2:0]state,y;
parameter a=3'b000,b=3'b001,d=3'b011,f=3'b101,g=3'b110;
always@(posedge clk,negedge rst)
    if(rst==0) begin state<=a;assign y=0; end
    else case(state)
        a:if(x) begin state<=b;assign y=0; end else begin state<=f;assign y=0; end
        b:if(x) begin state<=a;assign y=0; end else begin state<=d;assign y=0; end
        d:if(x) begin state<=a;assign y=0; end else begin state<=g;assign y=1; end
        f:if(x) begin state<=b;assign y=1; end else begin state<=f;assign y=1; end
        g:if(x) begin state<=d;assign y=1; end else begin state<=g;assign y=0; end
    endcase
 
endmodule
