`timescale 1ns/1ps

module sdram(data_out,data_in,ram_addr,write_en,clk);
input clk,write_en;
input [7:0]data_in;
input [5:0]ram_addr;
output [7:0]data_out;

reg [7:0]memory[31:0];  //memory 
reg [5:0]addr_register; //address buffer

initial
begin

end

always @(posedge clk)
begin
	if(write_en)
		memory[ram_addr] <= data_in;
	else
		addr_register <= ram_addr;
end

assign data_out = memory[ram_addr];
endmodule


