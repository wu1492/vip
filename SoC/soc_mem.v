`timescale 1ns / 1ps

module soc_mem ( doa, dia, addra, clka, wea, rsta );

	output [31:0] doa;

	input  [31:0] dia;
	input  [11:0] addra;
	input  [3:0] wea;
	input  clka;
	input  rsta;


	blk_mem_gen_1 inst (
		.clka(clka),            // input wire clka
		.rsta(rsta),            // input wire rsta
		.wea(wea),              // input wire [3 : 0] wea
		.addra(addra),          // input wire [31 : 0] addra
		.dina(dia),            // input wire [31 : 0] dina
		.douta(doa),          // output wire [31 : 0] douta
		.rsta_busy()  // output wire rsta_busy
	);


endmodule