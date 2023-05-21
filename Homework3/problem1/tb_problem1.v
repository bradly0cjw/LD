module tb_problem1();
wire y;
reg x,Clk,rst;

problem1 M0(x,y,Clk,rst);
initial #100 $finish;
always #5 Clk=~Clk;
initial fork
    #0 rst=0;
    #2 rst=1;
    #0 Clk=0;
    #10 x=0;
    #20 x=1;
    #30 x=0;
    #40 x=1;
    #50 x=1;
    #53 rst=0;
    #57 rst=1;
    #60 x=1;
    #70 x=1;
    #80 x=1;
    #90 x=1;
join
endmodule