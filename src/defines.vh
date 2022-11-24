// ALU_A_SEL mux controls
`define ALU_A_SEL_RS1               1'b0
`define ALU_A_SEL_PC                1'b1

// ALU_B_SEL mux controls
`define ALU_B_SEL_IMM               1'b0
`define ALU_B_SEL_RS2               1'b1

// RD_DATA_SEL mux controls
`define RD_DATA_SEL_ALU             2'b00
`define RD_DATA_SEL_PC4             2'b01
`define RD_DATA_SEL_LSU             2'b10
`define RD_DATA_SEL_IMM             2'b11

// BRANCH_BASE mux controls
`define BRANCH_BASE_SEL_PC          1'b0
`define BRANCH_BASE_SEL_RS1         1'b1

// LSU DATAWIDTH controls
`define DATAWIDTH_BYTE              2'b00
`define DATAWIDTH_SHORT             2'b01
`define DATAWIDTH_WORD              2'b10

// DECODER IMMEDIATE SELECT
`define IMM_SEL_I                   3'b000
`define IMM_SEL_S                   3'b001
`define IMM_SEL_B                   3'b010
`define IMM_SEL_U                   3'b011
`define IMM_SEL_J                   3'b100

// BRANCHER CONDITION controls
`define BRANCH_ALU_ZERO             2'b00
`define BRANCH_ALU_NONZERO          2'b01
`define BRANCH_FORCE_FALSE          2'b10
`define BRANCH_FORCE_TRUE           2'b11

// REGFILE controls
`define REGFILE_WRITE_DISABLE       1'b0
`define REGFILE_WRITE_ENABLE        1'b1

// LSU controls
`define LSU_WRITE_DISABLE           1'b0
`define LSU_WRITE_ENABLE            1'b1
`define LSU_SIGN_EXTENDED           1'b1
`define LSU_NOT_SIGN_EXTENDED       1'b0

// ALU module control signals (funct7[5], funct3)
`define ALU_ADD                     4'b0000
`define ALU_SUB                     4'b1000
`define ALU_SLL                     4'b0001
`define ALU_LT                      4'b0010
`define ALU_LTU                     4'b0011
`define ALU_XOR                     4'b0100
`define ALU_SRL                     4'b0101
`define ALU_SRA                     4'b1101
`define ALU_OR                      4'b0110
`define ALU_AND                     4'b0111

// OPCODES
`define OPCODE_LUI                  7'b0110111
`define OPCODE_AUIPC                7'b0010111
`define OPCODE_JAL                  7'b1101111
`define OPCODE_JALR                 7'b1100111
`define OPCODE_BRANCH               7'b1100011
    // BRANCH FUNCT3
    `define FUNCT3_BEQ              3'b000
    `define FUNCT3_BNE              3'b001
    `define FUNCT3_BLT              3'b100
    `define FUNCT3_BGE              3'b101
    `define FUNCT3_BLTU             3'b110
    `define FUNCT3_BGEU             3'b111

`define OPCODE_LOAD                 7'b0000011
    // LOAD FUNCT3
    `define FUNCT3_LB               3'b000
    `define FUNCT3_LH               3'b001
    `define FUNCT3_LW               3'b010
    `define FUNCT3_LBU              3'b100
    `define FUNCT3_LHU              3'b101

`define OPCODE_STORE                7'b0100011
    // STORE FUNCT3
    `define FUNCT3_SB               3'b000
    `define FUNCT3_SH               3'b001
    `define FUNCT3_SW               3'b010

`define OPCODE_OP_IMM               7'b0010011
    // OP_IMM FUNCT3
    `define FUNCT3_ADDI             3'b000
    `define FUNCT3_SLTI             3'b010
    `define FUNCT3_SLTIU            3'b011
    `define FUNCT3_XORI             3'b100
    `define FUNCT3_ORI              3'b110
    `define FUNCT3_ANDI             3'b111
    `define FUNCT3_SLLI             3'b001
    `define FUNCT3_SRLI_SRAI        3'b101
        // SRLI_SRAI FUNCT7
        `define FUNCT7_SRLI         7'b0000000
        `define FUNCT7_SRAI         7'b0100000
`define OPCODE_OP                   7'b0110011
    // OP FUNCT3
    `define FUNCT3_ADD_SUB          3'b000
        // ADD_SUB FUNCT7
        `define FUNCT7_ADD          7'b0000000
        `define FUNCT7_SUB          7'b0100000
    `define FUNCT3_SLL              3'b001
    `define FUNCT3_SLT              3'b010
    `define FUNCT3_SLTU             3'b011
    `define FUNCT3_XOR              3'b100
    `define FUNCT3_SRL_SRA          3'b101
        // SRL_SRA FUNCT7
        `define FUNCT7_SRL          7'b0000000
        `define FUNCT7_SRA          7'b0100000
    `define FUNCT3_OR               3'b110
    `define FUNCT3_AND              3'b111
`define OPCODE_MISC_MEM             7'b0001111
    // MISC_MEM FUNCT3
    `define FUNCT3_FENCE            3'b000
`define OPCODE_SYSTEM               7'b1110011
    // SYSTEM FUNCT3
    `define FUNCT3_ECALL_EBREAK     3'b000