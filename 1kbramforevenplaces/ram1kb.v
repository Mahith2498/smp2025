`timescale 1ns / 1ps
// Create Date: 07/16/2025 07:23:48 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: ram1kb
// Project Name: 1KB RAM with even address writing feature 
module ram1kb(
input [7:0]a,
input clk,
input rst,
input [9:0]addr,
input rd,
input wr,
output reg [7:0]out

    );
    integer i;
    reg [7:0]memloc[1023:0];  // 1kb RAM with 1024 memlocations each memloc can store 8 bits of data total it can store 1KB of data
    initial begin
    memloc[addr]<= 8'b00000000;
    out<= 8'b00000000;
    end
    always@(posedge clk)begin // helps in clock synchronization
    if(rst)begin // if reset enabled 
    if(wr)begin // if write enabled
    if(addr[0]==1'b0)begin // checks the memory location as odd or even 
    memloc[addr]<= a; // if it's even at that memory location  the data will be writeen 
    end
    end
    if(rd)begin
    out<= memloc[addr]; // if the read has been enables then the data will read from both even and odd memory locations
    end
    end
    end
endmodule
