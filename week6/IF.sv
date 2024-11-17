module IF #(parameter N=32,Dl=1024)(
	input logic clk,
	input logic reset,
	input logic [N-1:0]pc_branch,
	input logic branch_zero,
	output logic [N-1:0]pc,
	output logic [N-1:0]inst
	);
	
	
	const bit[N-1:0] Four = 4;
	
	df PC_counter (.clk(clk),.pc_next(pc_next),.reset(reset),.pc(pc));
	instruction_memory instruction_memory (.pc(pc),.reset(reset),.inst(inst));
	mux2_1 mux_pc ( .pcFour(pcFour),.pcImmi(pc_branch),.pc_next(branch_zero),.pc_src(pc_next));
	halfadder add4 (.a(Four),.b(pc),.sum(pcFour));
	
	
endmodule