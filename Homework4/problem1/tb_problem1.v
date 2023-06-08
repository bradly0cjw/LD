module tb_problem1;
    // reg [3:0]A,B;
    reg y_in;
    reg rst,clk,shift;
    problem1 uut(y_in,clk,shift,rst);
    initial #45 $finish;
    always #5 clk=~clk;
    initial fork
        #0 rst=0;
        #0 shift=1;
        #0 clk=0;
        #2.5 rst=1;
        #0 y_in=0;
    join
    
endmodule