module tb_problem3();
wire y;
reg x,clk,rst;
problem3 M0(x,y,clk,rst);
initial #115 $finish;
initial begin clk=0;forever #5 clk=~clk;end
initial fork
    #0 rst=0;
    #10 rst=1;
join
initial begin
    #10 x=0;
    #10 x=1;
    #10 x=0;
    #10 x=1;
    #10 x=0;
    #10 x=0;
    #10 x=1;
    #10 x=0;
    #10 x=1;
    #10 x=1;
    #10 x=1;
end
endmodule
