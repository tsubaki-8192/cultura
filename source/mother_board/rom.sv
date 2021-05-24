module rom(mem_bus_if.slave mem_bus);
  logic [7:0] rom_array [16];
  initial begin
    $display("Loading rom.");
    $readmemh("program/rom_data.mem", rom_array);
  end
  assign mem_bus.data = rom_array[mem_bus.addr];
endmodule