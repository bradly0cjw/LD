module tb_problem5();
reg x,clk,rst;
wire y;
problem5 M0(x,y,clk,rst);
initial #200 $finish;
initial begin clk=0;forever #5 clk=~clk;end
initial fork
    #0 rst=0;
    #2 rst=1;
    #0 x=0;
    #10 x=0;
    #20 x=1;
    #30 x=0;
    #40 x=1;
    #50 x=0;
    #60 x=1;
    #70 x=0;
    #80 x=1;
    #90 x=0;
    #110 x=0;
    #120 x=1;
    #130 x=0;
    #140 x=1;
    #145 rst=0;
    #147 rst=1;
    #150 x=0;
    #160 x=1;
    #170 x=0;
    #180 x=1;
    #190 x=0;
join
endmodule