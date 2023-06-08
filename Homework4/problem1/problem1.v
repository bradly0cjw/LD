module problem1(y_in,clk,shift,rst);
input y_in,clk,shift,rst;
reg [3:0] x,y;
reg jk;
wire s;
always@(posedge clk,negedge rst)
    if (shift)
    if (rst==0)begin x=4'b0101;y=4'b0111; end
    else
        begin
            x<={(s),x[3:1]};
            y<={y_in,y[3:1]};
        end

always@(posedge clk,negedge rst)
    if (shift)begin
    if (rst==0)jk=0;
    else case({(x[0]&y[0]),~(x[0]|y[0])})
            2'b00: jk<=jk;
            2'b01: jk<=0;
            2'b10: jk<=1;
            2'b11: jk<=~jk;
        endcase
    end
assign s=x[0]^y[0]^jk;
endmodule