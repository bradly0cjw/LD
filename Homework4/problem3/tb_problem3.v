module tb_problem3;
reg clk,rst;
wire [2:0] out;
problem3 M0(out,clk,rst);
initial #200 $finish;
always #5 clk=~clk;
initial fork
    #0 clk=0;
    #0 rst=0;
    #1 rst=1;
join
endmodule