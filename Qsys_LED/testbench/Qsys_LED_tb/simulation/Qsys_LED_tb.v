// Qsys_LED_tb.v

// Generated using ACDS version 17.0 595

`timescale 1 ps / 1 ps
module Qsys_LED_tb (
	);

	wire        qsys_led_inst_clk_bfm_clk_clk;                            // Qsys_LED_inst_clk_bfm:clk -> [Qsys_LED_inst:clk_clk, Qsys_LED_inst_reset_bfm:clk]
	wire  [0:0] qsys_led_inst_key_external_connection_bfm_conduit_export; // Qsys_LED_inst_key_external_connection_bfm:sig_export -> Qsys_LED_inst:key_external_connection_export
	wire  [9:0] qsys_led_inst_led_external_connection_export;             // Qsys_LED_inst:led_external_connection_export -> Qsys_LED_inst_led_external_connection_bfm:sig_export
	wire        qsys_led_inst_reset_bfm_reset_reset;                      // Qsys_LED_inst_reset_bfm:reset -> Qsys_LED_inst:reset_reset_n

	Qsys_LED qsys_led_inst (
		.clk_clk                        (qsys_led_inst_clk_bfm_clk_clk),                            //                     clk.clk
		.key_external_connection_export (qsys_led_inst_key_external_connection_bfm_conduit_export), // key_external_connection.export
		.led_external_connection_export (qsys_led_inst_led_external_connection_export),             // led_external_connection.export
		.reset_reset_n                  (qsys_led_inst_reset_bfm_reset_reset)                       //                   reset.reset_n
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (100000000),
		.CLOCK_UNIT (1)
	) qsys_led_inst_clk_bfm (
		.clk (qsys_led_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_conduit_bfm qsys_led_inst_key_external_connection_bfm (
		.sig_export (qsys_led_inst_key_external_connection_bfm_conduit_export)  // conduit.export
	);

	altera_conduit_bfm_0002 qsys_led_inst_led_external_connection_bfm (
		.sig_export (qsys_led_inst_led_external_connection_export)  // conduit.export
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) qsys_led_inst_reset_bfm (
		.reset (qsys_led_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (qsys_led_inst_clk_bfm_clk_clk)        //   clk.clk
	);

endmodule
