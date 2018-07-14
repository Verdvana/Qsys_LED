
module Qsys_LED (
	clk_clk,
	key_external_connection_export,
	led_external_connection_export,
	reset_reset_n);	

	input		clk_clk;
	input	[3:0]	key_external_connection_export;
	output	[9:0]	led_external_connection_export;
	input		reset_reset_n;
endmodule
