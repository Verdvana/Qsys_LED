	component Qsys_LED is
		port (
			clk_clk                        : in  std_logic                    := 'X';             -- clk
			key_external_connection_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			led_external_connection_export : out std_logic_vector(9 downto 0);                    -- export
			reset_reset_n                  : in  std_logic                    := 'X'              -- reset_n
		);
	end component Qsys_LED;

	u0 : component Qsys_LED
		port map (
			clk_clk                        => CONNECTED_TO_clk_clk,                        --                     clk.clk
			key_external_connection_export => CONNECTED_TO_key_external_connection_export, -- key_external_connection.export
			led_external_connection_export => CONNECTED_TO_led_external_connection_export, -- led_external_connection.export
			reset_reset_n                  => CONNECTED_TO_reset_reset_n                   --                   reset.reset_n
		);

