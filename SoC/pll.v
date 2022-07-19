///////////////////////////////////////////////////////////////////////////////
//	Input frequency:             125.000Mhz
//	Clock information:
//		Clock name	| Frequency 	| Phase shift
//		clk0_out  	| 75.000 MHZ	| 0  DEG     
///////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 100 fs

module pll(refclk,
		reset,
		clk0_out);

	input refclk;
	input reset;
	output clk0_out;

	  clk_wiz_0 inst
   (
    // Clock out ports
    .clk_out1(clk0_out),
    // Status and control signals
    .reset(reset), // input reset
   // Clock in ports
    .clk_in1(refclk));      // input clk_in1

endmodule
