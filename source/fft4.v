// Code your design here
module fft_n4(
	input [31:0]Ar,
	input [31:0]Ai,
	input [31:0]Br,
	input [31:0]Bi,
	input [31:0]Cr,
	input [31:0]Ci,
	input [31:0]Dr,
	input [31:0]Di,
	output [31:0]Xr0,
	output [31:0]Xi0,
	output [31:0]Xr1,
	output [31:0]Xi1,
	output [31:0]Xr2,
	output [31:0]Xi2,
	output [31:0]Xr3,
	output [31:0]Xi3);

/*
assign Xr0 = Ar+Br+Cr+Dr;
assign Xi0 = Ai+Bi+Ci+Di;
assign Xr1 = Ar+Bi-Cr-Di;
assign Xi1 = Ai-Br-Ci+Dr;
assign Xr2 = Ar-Br+Cr-Dr;
assign Xi2 = Ai-Bi+Ci-Di;
assign Xr3 = Ar-Bi-Cr+Di;
assign Xi3 = Ai+Br-Ci-Dr;
*/
/*
assign br0 = ar0 + ar2;
assign br1 = ar1 + ar3;
assign br2 = ar0 - ar2;
assign br3 = ar1 - ar3;
assign br4 = ar4 + ar6;
assign br5 = ar5 + ar7;
assign br6 = ar4 - ar6;
assign br7 = ar5 - ar7;
*/

assign Xr0 = Ar+Cr;
assign Xi0 = Ai+Ci;
assign Xr1 = Br+Dr;
assign Xi1 = Bi+Di;
assign Xr2 = Ar-Cr;
assign Xi2 = Ai-Ci;
assign Xr3 = Br-Dr;
assign Xi3 = Bi-Di;

endmodule
