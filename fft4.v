// Code your design here
module fft_n4(
	input [31:0]A,
	input [31:0]B,
	input [31:0]C,
	input [31:0]D,
	output [31:0]Xr0,
	output [31:0]Xr1,
	output [31:0]Xr2,
	output [31:0]Xr3,
	output [31:0]Xi0,
	output [31:0]Xi1,
	output [31:0]Xi2,
	output [31:0]Xi3);

assign Xr0 = A+B+C+D;
assign Xi0 = 0;
assign Xr1 = A-C;
assign Xi1 = D-B;
assign Xr2 = A-B+C-D;
assign Xi2 = 0;
assign Xr3 = A-C;
assign Xi3 = B-D;

endmodule
