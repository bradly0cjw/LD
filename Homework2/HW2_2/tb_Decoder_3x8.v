module tb_Decoder;
reg [2:0] A;
wire [7:0] B;
    
Decoder_3x8 uut(A[2],A[1],A[0],B);
initial begin
    A=0;
    repeat(7)
    #20 A=A+2'h1;
    
end

initial #150 $finish;
initial begin
    $display ("                  time   Select D_out");
    $monitor ($time, "    %b       %b",A,B);
end
endmodule
