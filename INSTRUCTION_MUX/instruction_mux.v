module msrv32_instruction_mux(flush_in, instr_in, opcode_out, funct3_out, funct7_out, rs1addr_out, rs2addr_out, rdaddr_out, csr_addr_out, instr_31_7_out);
input flush_in;
input [31:0] instr_in;
output [6:0] opcode_out;
output [2:0] funct3_out;
output [6:0] funct7_out;
output [4:0] rs1addr_out;
output [4:0] rs2addr_out;
output [4:0] rdaddr_out;
output [11:0] csr_addr_out;
output [24:0] instr_31_7_out;
wire [31:0] w;
assign w = flush_in?32'h00000013:instr_in;
assign opcode_out = w[6:0];
assign funct3_out = w[14:12];
assign funct7_out = w[31:25];
assign rs1addr_out = w[19:15];
assign rs2addr_out = w[24:20];
assign rdaddr_out = w[11:7];
assign csr_addr_out = w[31:20];
assign instr_31_7_out = w[31:7];
endmodule