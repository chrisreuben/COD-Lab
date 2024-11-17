module df # (parameter N = 32) 
(
    input clk,
    input logic [N-1:0] pc_next,
    input logic reset,
    output logic [N-1:0] pc
);
    always @(posedge clk or posedge reset)
    begin 
        if (reset)
            pc <= 0;  // On reset, set q to 0
        else 
            pc <= pc_next;  // On clock, set q to d
    end
endmodule
 