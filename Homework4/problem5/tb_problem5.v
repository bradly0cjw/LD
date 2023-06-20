module tb_problem5;
reg clk,rst;
wire [3:0] out,out2,out3;
problem5 M0(out,clk,rst);
problem5a M1(out2,clk,rst);
problem5b M2(out3,clk,rst);
initial #120 $finish;
always #5 clk=~clk;
initial fork
    #0 clk=1;
    #0 rst=0;
    #1 rst=1;
join
endmodule