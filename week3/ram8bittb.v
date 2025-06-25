`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2025 12:11:31 AM
// Design Name: 
// Module Name: ram8bittb
// Project Name: 8-BIT RAM SMP 3rd week
module ram8bittb;
reg clk;
reg rst;
reg [7:0]data;
reg wr;
reg rd;
reg [2:0]addr;
wire [7:0]out;
ram8bit dut(
.clk(clk),
.rst(rst),
.data(data),
.addr(addr),
.rd(rd),
.wr(wr),
.out(out)
);
initial begin
clk = 0;
end
always begin
#10; clk = ~clk;

end
initial begin
rst = 1; data = 8'b00000000; addr = 3'b000 ; rd = 1 ; wr = 1 ; #10;
rst = 1; data = 8'b00000001; addr = 3'b001 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b00000010; addr = 3'b010 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b00000100; addr = 3'b011 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b00001000; addr = 3'b100 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b00010000; addr = 3'b101 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b00100000; addr = 3'b110 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b01110000; addr = 3'b111 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b00011100; addr = 3'b001 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b10000000; addr = 3'b010 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b01000000; addr = 3'b011 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b00100000; addr = 3'b100 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b11110000; addr = 3'b101 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b10101010; addr = 3'b110 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b00001001; addr = 3'b111 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b01100000; addr = 3'b011 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b10110000; addr = 3'b000 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b00010110; addr = 3'b010 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b11100000; addr = 3'b011 ; rd = 0 ; wr = 1 ; #10;
rst = 1; data = 8'b00111000; addr = 3'b100 ; rd = 1 ; wr = 0 ; #10;
rst = 1; data = 8'b11111111; addr = 3'b110 ; rd = 0 ; wr = 1 ; #10;
$finish;
end


    
endmodule
