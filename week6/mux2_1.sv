module mux2_1 #(parameter N = 32) 
  (input logic [N-1:0] pcFour,
  input logic [N-1:0] pcImmi,
  input logic pc_src,
  output logic [N-1:0] pc_next
  );
  always_comb
  begin
   if(pc_src==0)
		pc_next=pcFour;
	else
		pc_next=pcImmi;
  end
  endmodule 