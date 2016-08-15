module LED (clk,leda);
input clk;
output [3:0]leda;

reg [3:0]leda;

parameter MAX= 1_000;

integer count;

always @ (posedge clk)
begin
	if(count == MAX)
	begin
		count <= 0;
		leda <= leda + 1'b1;
	end
	else
		count <= count + 1'b1;
end
endmodule