module DataMemory(input clk,input[63:0] address,input[63:0] data_in,input read,input write,output[63:0] data_out);

	reg [63:0] memory [0:127];
	
	assign data_out = read ? memory[address] : 64'b0;
	
	always @(posedge clk) begin
		if(write == 1'b1) begin
			memory[address] <= data_in;
		end
	end 
endmodule
