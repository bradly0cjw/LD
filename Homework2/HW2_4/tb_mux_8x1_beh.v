module tb_mux_8x1();
reg [3:0] A;
wire F;
mux_8x1 uut(A[3],A[2],A[1],A[0],F);
initial begin
    
    A=0;
    repeat(15) begin
        #10 A=A+4'h1;
    end
    end
initial begin
    $display ("                  time  Mux   Result");
    $monitor ($time, "    %b %b",A,F);
end
initial #160 $finish;
endmodule