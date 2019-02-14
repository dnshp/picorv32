`timescale 1 ns / 1 ps

module testbench;
	reg clk = 1;
	wire trap;

	always #5 clk = ~clk;

	top dut (
		.clk(clk),
		.trap(trap)
	);

	initial begin
		$display("hello");
		// repeat(100) @posedge(clk);
		// $display("done");
	end

	always @(posedge clk) $display("%d", trap);
endmodule