module tb_memory;
	reg Enable, ReadWrite;
	reg [3:0] DataIn;
	reg [5:0] Address;
	wire [3:0] DataOut;
	
	memory M1(
		.Enable(Enable), 
		.ReadWrite(ReadWrite),
		.Address(Address), 
		.DataIn(DataIn),
		.DataOut(DataOut)
	);
	initial #500 $finish;
	initial begin 
		Enable = 1'b0;
		ReadWrite = 1'b0;
		Address = 6'b0;
		DataIn = 4'b0;
		#20 Enable = 1'b1;
		repeat(10)
		  begin
			#20  Address = Address + 1'b1;
			        DataIn = DataIn + 1'b1;
		  end
		#20 Enable = 1'b0;
		#20 Address = 6'b0; ReadWrite = 1'b1; Enable = 1'b1;
		repeat(10)
             			#20 Address = Address + 1'b1;
    
	end
endmodule
