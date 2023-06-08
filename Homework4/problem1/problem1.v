module problem1(x_in,y_in,x_out,y_out,clk,shift,clr);
input x_in,y_in,clk,shift,clr;
output reg x_out,y_out;
reg [3:0] x,y;
reg jk
wire s,j,k;
always@(posedge clk)
    if (shift)
        begin
            x<={s,x[3:1]};
            y<={x_in,y[3:1];};
            assign k=x[0]|y[0];
            assign j=x[0]&y[0];
        end
always@(posedge clk,negedge rst)
    if (shift)begin
    if (rst==0)jk=0;
    else case({j,k})
            2b'00: jk<=jk;
            2b'01: jk<=0;
            2b'10: jk<=1;
            2b'11: jk<=~jk;
        endcase
    end
assign s=x[0]^y[0]^jk
endmodule