`timescale 1ns / 1ps

module rom ( doa, addra, clka, rsta );

	output [31:0] doa;

	input  [12:0] addra;
	input  clka;
	input  rsta;


	blk_mem_gen_2 inst (
		.clka(clka),            // input wire clka
		.rsta(rsta),            // input wire rsta
		.addra(addra),          // input wire [12 : 0] addra
		.douta(doa),          // output wire [31 : 0] douta
		.rsta_busy()  // output wire rsta_busy
	);

endmodule
