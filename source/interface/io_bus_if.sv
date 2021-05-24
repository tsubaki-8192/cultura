interface io_bus_if #(parameter WIDTH) ();
    logic [WIDTH-1:0] switch;
    logic [WIDTH-1:0] led;
    logic [7:0] seg7_0;
    modport master (input switch, output led, output seg7_0);
endinterface //io_bus_if