module tb_Mul_4x3;
reg [2:0] A;
reg [3:0] B;
wire [5:0] C;
Mul_4x3 uut(A,B,C);
initial begin
    
    // A=0;
    // B=2;
    // repeat(8) begin
    //     #10 A=A+3'h1;
    // end
    // A=2;
    // B=0;
    // repeat(16)begin
    //     #10 B=B+4'h1;
    // end
    A=0;
    B=0;
    repeat(7) begin
        #10 A=A+3'h1;
        #10 B=B+4'h1;
    end
    end
initial begin
    $display ("                  time  Multiple_A Multiple_B Result");
    $monitor ($time, "    %b        %b       %b",A,B,C);
end
initial #150 $finish;
// initial #390 $finish;
endmodule