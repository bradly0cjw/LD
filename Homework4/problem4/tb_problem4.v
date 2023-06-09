module tb_problem4;
reg in,clk,rst;
wire out;
problem4 M0(in,out,clk,rst);
initial #200 $finish;
always #5 clk=~clk;
initial fork
    #0 clk=1;
    #0 rst=0;
    #1 rst=1;
join
initial begin
    #00 in=0;
    #10 in=1;
    #10 in=0;
    #10 in=0;
    #10 in=1;
    #10 in=1;
    #10 in=0;
    #10 in=0;
    #10 in=0;
    #10 in=1;
end
endmodule