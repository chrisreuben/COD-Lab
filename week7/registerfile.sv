module registerfile(
input logic [4:0] rs1_addr,
input logic [4:0]rs2_addr,
input logic [4:0]rd_addr,
input logic [4:0]regwrite,
input logic [32:0] wr_data,
input logic reset,
input logic wr_en,
output logic [32:0]rs1,
output logic[32:0] rs2
);
logic[31:0] rf[31:0];
always @(*)
begin 
	if(reset) begin
	rs1=0;
	rs2=0;
	end
		else
		begin
		rs1=rf[rs1_addr];
		rs2=rf[rs2_addr];
		end
	if(wr_en) begin
	rf[rd_addr] = wr_data;
	end
end
endmodule

	
	