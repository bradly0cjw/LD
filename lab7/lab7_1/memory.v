// Read and write operations of memory
// Memory size is 64 words of four bits each

module memory(Enable, ReadWrite, Address, DataIn, DataOut);
	input Enable, ReadWrite;
	input [3:0] DataIn;
	input [5:0] Address;
	output [3:0] DataOut;
	reg [3:0] DataOut;
	reg [3:0] Mem [0:63];	// 64 x 4 memory
	always @ (Enable, ReadWrite, Address)
		if(Enable)
			if(ReadWrite)
				DataOut = Mem[Address];	// Read
			else
				Mem[Address] = DataIn;	// Write
		else
			DataOut = 4'bz;			// High impendence state
endmodule
