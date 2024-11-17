module instructionmemory #(parameter N = 32) 
(
    input logic [31:0] addr,          
    input logic reset,
    input logic clk,  // Add a clock input for synchronous read
    output logic [31:0] inst     
);
    logic [31:0] memory[0:1023];

    always_ff @(posedge clk) begin
        if (reset)
            inst <= 0;         
        else
            inst <= memory[addr];  
    end 
endmodule
