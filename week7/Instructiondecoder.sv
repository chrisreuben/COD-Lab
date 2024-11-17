module decoder (
	input logic [31:0]inst,
	output logic [4:0]rs1,
	output logic [4:0]rs2,
	output logic [4:0]rd,
	output logic [31:0]Imm,
	output logic [2:0]funct3,
	output logic [6:0]funct7,
	output logic [6:0]opcode
	);
	
	
	always @(*)
	begin
	opcode=inst[6:0];
	case(opcode)
		7'b0110011:begin   //R type
		rd=inst[11:7];
		funct3=inst[14:12];
		rs1=inst[19:15];
		rs2=inst[24:20];
		funct7=inst[31:25];
		end
		
		7'b0010011:begin   //I type
		rd=inst[11:7];
		funct3=inst[14:12];
		rs1=inst[19:15];
		Imm[11:0]=inst[31:20];
		end	
		
		7'b0000011:begin  //Load
		rd=inst[11:7];
		funct3=inst[14:12];
		rs1=inst[19:15];
		Imm[11:0]=inst[31:20];
		end
		
		7'b0100011:begin  //Store
		Imm[4:0]=inst[11:7];
		funct3=inst[14:12];
		rs1=inst[19:15];
		rs2=inst[24:20];
		Imm[11:5]=inst[31:25];
		end
		
		7'b1100011:begin  //Branch
		Imm[4:1]=inst[11:8];
		Imm[11]=inst[7];
		funct3=inst[14:12];
		rs1=inst[19:15];
		rs2=inst[24:20];
		Imm[10:5]=inst[30:25];
		Imm[12]=inst[31];
		end
	endcase
	end
endmodule