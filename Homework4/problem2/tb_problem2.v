module tb_problem2;
reg count,clr;
wire [3:0] out;
problem2 M0(out,count,clr);
initial #200 $finish;
always #5 count=~count;
initial fork
    #0 count=0;
    #0 clr=0;
    #1 clr=1;
join
endmodule
