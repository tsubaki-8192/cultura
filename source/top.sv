module top(
	input  logic pin_clock,
	input  logic pin_n_reset,
	input  logic [3:0] pin_switch,
	output logic [3:0] pin_led,
	output logic [7:0] pin_seg7_0
);
	logic clk;
	
	prescaler #(.RATIO(30_000_000)) prescaler(
		.quick_clock(pin_clock),
		.slow_clock(clk)
	);

	ctrl_bus_if ctrl_bus();
	assign ctrl_bus.clk		= clk;
	assign ctrl_bus.n_reset	= pin_n_reset;

	io_bus_if #(.WIDTH(4)) io_bus();
	assign io_bus.switch	= pin_switch;
	assign pin_led			= io_bus.led;
	assign pin_seg7_0		= io_bus.seg7_0;
	
	mother_board mother_board(.ctrl_bus, .io_bus);


endmodule