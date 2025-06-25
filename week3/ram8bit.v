`timescale 1ns / 1ps
// Create Date: 06/25/2025 11:21:47 PM
// Design Name: 
// Module Name: ram8bit
// Project Name: Xchip week3
module ram8bit(
input clk,  //clock signal for synchronization
input rst,  // for active reset(rst) low or high
input [7:0]data, // 8-bit of data
input rd,
input wr,
input [2:0]addr,
output reg [7:0] out

    );
    reg [7:0]memloc[7:0]; // there is a memory which has 8 memory locations and each location can store 8-bit of data
    integer i; // useful for looping
    always@(posedge clk)begin // for posedge of clock signal this will start working
    if(rst==0)begin  // when reset pin is set low
    for(i=0;i<=7;i=i+1)begin // for loop indicating the memloc locations 
    memloc[i] <= 8'b00000000; // all 8 locations will be filled with 0
    out <= 8'b00000000;  // all output will be also filled with 0's only
    end
    end
    else begin // when the reset pin is set high 
    if(rd==1)begin // read control is high 
    out<= memloc[addr]; // here data will be read from all the memolocations and it will be written into the out
    end
    else begin //read control is set low 
    out<= 8'b00000000; // out will be filled with 0's only
    end
    if(wr == 1)begin // write control is set high
    memloc[addr]<= data; // data has been writeen into the different locations of the memory 
    end 
    else begin // write control is set low 
    memloc[addr] <= 8'b00000000; // all locations will get 0's 
    end
    end
    end
    
endmodule

