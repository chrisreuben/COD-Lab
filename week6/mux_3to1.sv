module mux_3to1 (
    input  logic [1:0] sel, // 2-bit select signal
    input  logic a,         // Input 0
    input  logic b,         // Input 1
    input  logic c,         // Input 2
    output logic y          // Output
);

    always_comb begin
        case (sel)
            2'b00: y = a;   // When sel is 00, select input a
            2'b01: y = b;   // When sel is 01, select input b
            2'b10: y = c;   // When sel is 10, select input c
            default: y = 1'b0; // Default case to avoid latches
        endcase
    end

endmodule
