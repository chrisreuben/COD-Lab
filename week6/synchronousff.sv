module synchronousff (
    input logic clk,      // Clock input
    input logic d,        // Data input
    input logic reset,    // Reset input
    output logic q        // Output
);

    always @(posedge clk)  
    begin
        if (reset)
            q <= 0;       // Reset q to 0 on clock edge
        else
            q <= d;       // Assign input d to output q
    end

endmodule
