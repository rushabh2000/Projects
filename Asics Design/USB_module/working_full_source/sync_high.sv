// $Id: $
// File name:   sync_high.sv
// Created:     2/15/2021
// Author:      Leah Crisco
// Lab Section: 337-002
// Version:     1.0  Initial Design Entry
// Description: reset to logic high synchronizer
module sync_high (clk,  n_rst, async_in,  sync_out);
input clk, n_rst, async_in;
output reg sync_out;
reg data;

always_ff @ (posedge clk, negedge n_rst)
begin : REG_LOGIC
	if(1'b0 == n_rst)begin
		data <= 1'b1;
		sync_out <= 1'b1;
	end
	else begin
		data <= async_in;
		sync_out <= data;
end
end

endmodule
