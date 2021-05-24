interface ram_bus_if(input logic clk);
    logic [31:0] addr;
    logic [7:0]  data;
    modport master(output addr, input  data, input clk);    
    modport slave (input  addr, output data, input clk);    
endinterface //ram_bus_if