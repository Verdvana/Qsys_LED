// Qsys_LED.v

// Generated using ACDS version 18.0 614

`timescale 1 ps / 1 ps
module Qsys_LED (
		input  wire       clk_clk,                        //                     clk.clk
		input  wire       key_external_connection_export, // key_external_connection.export
		output wire [9:0] led_external_connection_export, // led_external_connection.export
		input  wire       reset_reset_n                   //                   reset.reset_n
	);

	wire  [31:0] nios2_data_master_readdata;                           // mm_interconnect_0:nios2_data_master_readdata -> nios2:d_readdata
	wire         nios2_data_master_waitrequest;                        // mm_interconnect_0:nios2_data_master_waitrequest -> nios2:d_waitrequest
	wire         nios2_data_master_debugaccess;                        // nios2:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2_data_master_debugaccess
	wire  [17:0] nios2_data_master_address;                            // nios2:d_address -> mm_interconnect_0:nios2_data_master_address
	wire   [3:0] nios2_data_master_byteenable;                         // nios2:d_byteenable -> mm_interconnect_0:nios2_data_master_byteenable
	wire         nios2_data_master_read;                               // nios2:d_read -> mm_interconnect_0:nios2_data_master_read
	wire         nios2_data_master_readdatavalid;                      // mm_interconnect_0:nios2_data_master_readdatavalid -> nios2:d_readdatavalid
	wire         nios2_data_master_write;                              // nios2:d_write -> mm_interconnect_0:nios2_data_master_write
	wire  [31:0] nios2_data_master_writedata;                          // nios2:d_writedata -> mm_interconnect_0:nios2_data_master_writedata
	wire  [31:0] nios2_instruction_master_readdata;                    // mm_interconnect_0:nios2_instruction_master_readdata -> nios2:i_readdata
	wire         nios2_instruction_master_waitrequest;                 // mm_interconnect_0:nios2_instruction_master_waitrequest -> nios2:i_waitrequest
	wire  [17:0] nios2_instruction_master_address;                     // nios2:i_address -> mm_interconnect_0:nios2_instruction_master_address
	wire         nios2_instruction_master_read;                        // nios2:i_read -> mm_interconnect_0:nios2_instruction_master_read
	wire         nios2_instruction_master_readdatavalid;               // mm_interconnect_0:nios2_instruction_master_readdatavalid -> nios2:i_readdatavalid
	wire         mm_interconnect_0_jtag_avalon_jtag_slave_chipselect;  // mm_interconnect_0:JTAG_avalon_jtag_slave_chipselect -> JTAG:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_avalon_jtag_slave_readdata;    // JTAG:av_readdata -> mm_interconnect_0:JTAG_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_avalon_jtag_slave_waitrequest; // JTAG:av_waitrequest -> mm_interconnect_0:JTAG_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_avalon_jtag_slave_address;     // mm_interconnect_0:JTAG_avalon_jtag_slave_address -> JTAG:av_address
	wire         mm_interconnect_0_jtag_avalon_jtag_slave_read;        // mm_interconnect_0:JTAG_avalon_jtag_slave_read -> JTAG:av_read_n
	wire         mm_interconnect_0_jtag_avalon_jtag_slave_write;       // mm_interconnect_0:JTAG_avalon_jtag_slave_write -> JTAG:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_avalon_jtag_slave_writedata;   // mm_interconnect_0:JTAG_avalon_jtag_slave_writedata -> JTAG:av_writedata
	wire  [31:0] mm_interconnect_0_systemid_control_slave_readdata;    // SystemID:readdata -> mm_interconnect_0:SystemID_control_slave_readdata
	wire   [0:0] mm_interconnect_0_systemid_control_slave_address;     // mm_interconnect_0:SystemID_control_slave_address -> SystemID:address
	wire  [31:0] mm_interconnect_0_nios2_debug_mem_slave_readdata;     // nios2:debug_mem_slave_readdata -> mm_interconnect_0:nios2_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2_debug_mem_slave_waitrequest;  // nios2:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2_debug_mem_slave_debugaccess;  // mm_interconnect_0:nios2_debug_mem_slave_debugaccess -> nios2:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_debug_mem_slave_address;      // mm_interconnect_0:nios2_debug_mem_slave_address -> nios2:debug_mem_slave_address
	wire         mm_interconnect_0_nios2_debug_mem_slave_read;         // mm_interconnect_0:nios2_debug_mem_slave_read -> nios2:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2_debug_mem_slave_byteenable;   // mm_interconnect_0:nios2_debug_mem_slave_byteenable -> nios2:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2_debug_mem_slave_write;        // mm_interconnect_0:nios2_debug_mem_slave_write -> nios2:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2_debug_mem_slave_writedata;    // mm_interconnect_0:nios2_debug_mem_slave_writedata -> nios2:debug_mem_slave_writedata
	wire         mm_interconnect_0_rom_s1_chipselect;                  // mm_interconnect_0:ROM_s1_chipselect -> ROM:chipselect
	wire  [31:0] mm_interconnect_0_rom_s1_readdata;                    // ROM:readdata -> mm_interconnect_0:ROM_s1_readdata
	wire         mm_interconnect_0_rom_s1_debugaccess;                 // mm_interconnect_0:ROM_s1_debugaccess -> ROM:debugaccess
	wire  [13:0] mm_interconnect_0_rom_s1_address;                     // mm_interconnect_0:ROM_s1_address -> ROM:address
	wire   [3:0] mm_interconnect_0_rom_s1_byteenable;                  // mm_interconnect_0:ROM_s1_byteenable -> ROM:byteenable
	wire         mm_interconnect_0_rom_s1_write;                       // mm_interconnect_0:ROM_s1_write -> ROM:write
	wire  [31:0] mm_interconnect_0_rom_s1_writedata;                   // mm_interconnect_0:ROM_s1_writedata -> ROM:writedata
	wire         mm_interconnect_0_rom_s1_clken;                       // mm_interconnect_0:ROM_s1_clken -> ROM:clken
	wire         mm_interconnect_0_ram_s1_chipselect;                  // mm_interconnect_0:RAM_s1_chipselect -> RAM:chipselect
	wire  [31:0] mm_interconnect_0_ram_s1_readdata;                    // RAM:readdata -> mm_interconnect_0:RAM_s1_readdata
	wire  [12:0] mm_interconnect_0_ram_s1_address;                     // mm_interconnect_0:RAM_s1_address -> RAM:address
	wire   [3:0] mm_interconnect_0_ram_s1_byteenable;                  // mm_interconnect_0:RAM_s1_byteenable -> RAM:byteenable
	wire         mm_interconnect_0_ram_s1_write;                       // mm_interconnect_0:RAM_s1_write -> RAM:write
	wire  [31:0] mm_interconnect_0_ram_s1_writedata;                   // mm_interconnect_0:RAM_s1_writedata -> RAM:writedata
	wire         mm_interconnect_0_ram_s1_clken;                       // mm_interconnect_0:RAM_s1_clken -> RAM:clken
	wire         mm_interconnect_0_led_s1_chipselect;                  // mm_interconnect_0:LED_s1_chipselect -> LED:chipselect
	wire  [31:0] mm_interconnect_0_led_s1_readdata;                    // LED:readdata -> mm_interconnect_0:LED_s1_readdata
	wire   [1:0] mm_interconnect_0_led_s1_address;                     // mm_interconnect_0:LED_s1_address -> LED:address
	wire         mm_interconnect_0_led_s1_write;                       // mm_interconnect_0:LED_s1_write -> LED:write_n
	wire  [31:0] mm_interconnect_0_led_s1_writedata;                   // mm_interconnect_0:LED_s1_writedata -> LED:writedata
	wire         mm_interconnect_0_key_s1_chipselect;                  // mm_interconnect_0:key_s1_chipselect -> key:chipselect
	wire  [31:0] mm_interconnect_0_key_s1_readdata;                    // key:readdata -> mm_interconnect_0:key_s1_readdata
	wire   [1:0] mm_interconnect_0_key_s1_address;                     // mm_interconnect_0:key_s1_address -> key:address
	wire         mm_interconnect_0_key_s1_write;                       // mm_interconnect_0:key_s1_write -> key:write_n
	wire  [31:0] mm_interconnect_0_key_s1_writedata;                   // mm_interconnect_0:key_s1_writedata -> key:writedata
	wire         irq_mapper_receiver0_irq;                             // JTAG:av_irq -> irq_mapper:receiver0_irq
	wire         irq_mapper_receiver1_irq;                             // key:irq -> irq_mapper:receiver1_irq
	wire  [31:0] nios2_irq_irq;                                        // irq_mapper:sender_irq -> nios2:irq
	wire         rst_controller_reset_out_reset;                       // rst_controller:reset_out -> [JTAG:rst_n, LED:reset_n, RAM:reset, ROM:reset, SystemID:reset_n, irq_mapper:reset, key:reset_n, mm_interconnect_0:nios2_reset_reset_bridge_in_reset_reset, nios2:reset_n, rst_translator:in_reset]
	wire         rst_controller_reset_out_reset_req;                   // rst_controller:reset_req -> [RAM:reset_req, ROM:reset_req, nios2:reset_req, rst_translator:reset_req_in]
	wire         nios2_debug_reset_request_reset;                      // nios2:debug_reset_request -> rst_controller:reset_in1

	Qsys_LED_JTAG jtag (
		.clk            (clk_clk),                                              //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                      //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                              //               irq.irq
	);

	Qsys_LED_LED led (
		.clk        (clk_clk),                             //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),     //               reset.reset_n
		.address    (mm_interconnect_0_led_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_led_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_led_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_led_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_led_s1_readdata),   //                    .readdata
		.out_port   (led_external_connection_export)       // external_connection.export
	);

	Qsys_LED_RAM ram (
		.clk        (clk_clk),                             //   clk1.clk
		.address    (mm_interconnect_0_ram_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_ram_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_ram_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_ram_s1_write),      //       .write
		.readdata   (mm_interconnect_0_ram_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_ram_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_ram_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),      // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),  //       .reset_req
		.freeze     (1'b0)                                 // (terminated)
	);

	Qsys_LED_ROM rom (
		.clk         (clk_clk),                              //   clk1.clk
		.address     (mm_interconnect_0_rom_s1_address),     //     s1.address
		.debugaccess (mm_interconnect_0_rom_s1_debugaccess), //       .debugaccess
		.clken       (mm_interconnect_0_rom_s1_clken),       //       .clken
		.chipselect  (mm_interconnect_0_rom_s1_chipselect),  //       .chipselect
		.write       (mm_interconnect_0_rom_s1_write),       //       .write
		.readdata    (mm_interconnect_0_rom_s1_readdata),    //       .readdata
		.writedata   (mm_interconnect_0_rom_s1_writedata),   //       .writedata
		.byteenable  (mm_interconnect_0_rom_s1_byteenable),  //       .byteenable
		.reset       (rst_controller_reset_out_reset),       // reset1.reset
		.reset_req   (rst_controller_reset_out_reset_req),   //       .reset_req
		.freeze      (1'b0)                                  // (terminated)
	);

	Qsys_LED_SystemID systemid (
		.clock    (clk_clk),                                           //           clk.clk
		.reset_n  (~rst_controller_reset_out_reset),                   //         reset.reset_n
		.readdata (mm_interconnect_0_systemid_control_slave_readdata), // control_slave.readdata
		.address  (mm_interconnect_0_systemid_control_slave_address)   //              .address
	);

	Qsys_LED_key key (
		.clk        (clk_clk),                             //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),     //               reset.reset_n
		.address    (mm_interconnect_0_key_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_key_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_key_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_key_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_key_s1_readdata),   //                    .readdata
		.in_port    (key_external_connection_export),      // external_connection.export
		.irq        (irq_mapper_receiver1_irq)             //                 irq.irq
	);

	Qsys_LED_nios2 nios2 (
		.clk                                 (clk_clk),                                             //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                     //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                  //                          .reset_req
		.d_address                           (nios2_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2_data_master_read),                              //                          .read
		.d_readdata                          (nios2_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2_data_master_write),                             //                          .write
		.d_writedata                         (nios2_data_master_writedata),                         //                          .writedata
		.d_readdatavalid                     (nios2_data_master_readdatavalid),                     //                          .readdatavalid
		.debug_mem_slave_debugaccess_to_roms (nios2_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2_instruction_master_waitrequest),                //                          .waitrequest
		.i_readdatavalid                     (nios2_instruction_master_readdatavalid),              //                          .readdatavalid
		.irq                                 (nios2_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (nios2_debug_reset_request_reset),                     //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                     // custom_instruction_master.readra
	);

	Qsys_LED_mm_interconnect_0 mm_interconnect_0 (
		.clk_clk_clk                             (clk_clk),                                              //                           clk_clk.clk
		.nios2_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                       // nios2_reset_reset_bridge_in_reset.reset
		.nios2_data_master_address               (nios2_data_master_address),                            //                 nios2_data_master.address
		.nios2_data_master_waitrequest           (nios2_data_master_waitrequest),                        //                                  .waitrequest
		.nios2_data_master_byteenable            (nios2_data_master_byteenable),                         //                                  .byteenable
		.nios2_data_master_read                  (nios2_data_master_read),                               //                                  .read
		.nios2_data_master_readdata              (nios2_data_master_readdata),                           //                                  .readdata
		.nios2_data_master_readdatavalid         (nios2_data_master_readdatavalid),                      //                                  .readdatavalid
		.nios2_data_master_write                 (nios2_data_master_write),                              //                                  .write
		.nios2_data_master_writedata             (nios2_data_master_writedata),                          //                                  .writedata
		.nios2_data_master_debugaccess           (nios2_data_master_debugaccess),                        //                                  .debugaccess
		.nios2_instruction_master_address        (nios2_instruction_master_address),                     //          nios2_instruction_master.address
		.nios2_instruction_master_waitrequest    (nios2_instruction_master_waitrequest),                 //                                  .waitrequest
		.nios2_instruction_master_read           (nios2_instruction_master_read),                        //                                  .read
		.nios2_instruction_master_readdata       (nios2_instruction_master_readdata),                    //                                  .readdata
		.nios2_instruction_master_readdatavalid  (nios2_instruction_master_readdatavalid),               //                                  .readdatavalid
		.JTAG_avalon_jtag_slave_address          (mm_interconnect_0_jtag_avalon_jtag_slave_address),     //            JTAG_avalon_jtag_slave.address
		.JTAG_avalon_jtag_slave_write            (mm_interconnect_0_jtag_avalon_jtag_slave_write),       //                                  .write
		.JTAG_avalon_jtag_slave_read             (mm_interconnect_0_jtag_avalon_jtag_slave_read),        //                                  .read
		.JTAG_avalon_jtag_slave_readdata         (mm_interconnect_0_jtag_avalon_jtag_slave_readdata),    //                                  .readdata
		.JTAG_avalon_jtag_slave_writedata        (mm_interconnect_0_jtag_avalon_jtag_slave_writedata),   //                                  .writedata
		.JTAG_avalon_jtag_slave_waitrequest      (mm_interconnect_0_jtag_avalon_jtag_slave_waitrequest), //                                  .waitrequest
		.JTAG_avalon_jtag_slave_chipselect       (mm_interconnect_0_jtag_avalon_jtag_slave_chipselect),  //                                  .chipselect
		.key_s1_address                          (mm_interconnect_0_key_s1_address),                     //                            key_s1.address
		.key_s1_write                            (mm_interconnect_0_key_s1_write),                       //                                  .write
		.key_s1_readdata                         (mm_interconnect_0_key_s1_readdata),                    //                                  .readdata
		.key_s1_writedata                        (mm_interconnect_0_key_s1_writedata),                   //                                  .writedata
		.key_s1_chipselect                       (mm_interconnect_0_key_s1_chipselect),                  //                                  .chipselect
		.LED_s1_address                          (mm_interconnect_0_led_s1_address),                     //                            LED_s1.address
		.LED_s1_write                            (mm_interconnect_0_led_s1_write),                       //                                  .write
		.LED_s1_readdata                         (mm_interconnect_0_led_s1_readdata),                    //                                  .readdata
		.LED_s1_writedata                        (mm_interconnect_0_led_s1_writedata),                   //                                  .writedata
		.LED_s1_chipselect                       (mm_interconnect_0_led_s1_chipselect),                  //                                  .chipselect
		.nios2_debug_mem_slave_address           (mm_interconnect_0_nios2_debug_mem_slave_address),      //             nios2_debug_mem_slave.address
		.nios2_debug_mem_slave_write             (mm_interconnect_0_nios2_debug_mem_slave_write),        //                                  .write
		.nios2_debug_mem_slave_read              (mm_interconnect_0_nios2_debug_mem_slave_read),         //                                  .read
		.nios2_debug_mem_slave_readdata          (mm_interconnect_0_nios2_debug_mem_slave_readdata),     //                                  .readdata
		.nios2_debug_mem_slave_writedata         (mm_interconnect_0_nios2_debug_mem_slave_writedata),    //                                  .writedata
		.nios2_debug_mem_slave_byteenable        (mm_interconnect_0_nios2_debug_mem_slave_byteenable),   //                                  .byteenable
		.nios2_debug_mem_slave_waitrequest       (mm_interconnect_0_nios2_debug_mem_slave_waitrequest),  //                                  .waitrequest
		.nios2_debug_mem_slave_debugaccess       (mm_interconnect_0_nios2_debug_mem_slave_debugaccess),  //                                  .debugaccess
		.RAM_s1_address                          (mm_interconnect_0_ram_s1_address),                     //                            RAM_s1.address
		.RAM_s1_write                            (mm_interconnect_0_ram_s1_write),                       //                                  .write
		.RAM_s1_readdata                         (mm_interconnect_0_ram_s1_readdata),                    //                                  .readdata
		.RAM_s1_writedata                        (mm_interconnect_0_ram_s1_writedata),                   //                                  .writedata
		.RAM_s1_byteenable                       (mm_interconnect_0_ram_s1_byteenable),                  //                                  .byteenable
		.RAM_s1_chipselect                       (mm_interconnect_0_ram_s1_chipselect),                  //                                  .chipselect
		.RAM_s1_clken                            (mm_interconnect_0_ram_s1_clken),                       //                                  .clken
		.ROM_s1_address                          (mm_interconnect_0_rom_s1_address),                     //                            ROM_s1.address
		.ROM_s1_write                            (mm_interconnect_0_rom_s1_write),                       //                                  .write
		.ROM_s1_readdata                         (mm_interconnect_0_rom_s1_readdata),                    //                                  .readdata
		.ROM_s1_writedata                        (mm_interconnect_0_rom_s1_writedata),                   //                                  .writedata
		.ROM_s1_byteenable                       (mm_interconnect_0_rom_s1_byteenable),                  //                                  .byteenable
		.ROM_s1_chipselect                       (mm_interconnect_0_rom_s1_chipselect),                  //                                  .chipselect
		.ROM_s1_clken                            (mm_interconnect_0_rom_s1_clken),                       //                                  .clken
		.ROM_s1_debugaccess                      (mm_interconnect_0_rom_s1_debugaccess),                 //                                  .debugaccess
		.SystemID_control_slave_address          (mm_interconnect_0_systemid_control_slave_address),     //            SystemID_control_slave.address
		.SystemID_control_slave_readdata         (mm_interconnect_0_systemid_control_slave_readdata)     //                                  .readdata
	);

	Qsys_LED_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.receiver1_irq (irq_mapper_receiver1_irq),       // receiver1.irq
		.sender_irq    (nios2_irq_irq)                   //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.reset_in1      (nios2_debug_reset_request_reset),    // reset_in1.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
