`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:03 06/27/2020 
// Design Name: 
// Module Name:    MUX4T1_32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX4T1_32(
    input [1:0] s,
    input [31:0] I0,
    input [31:0] I1,
    input [31:0] I2,
    input [31:0] I3,
    output [31:0] out
    );

    wire EN0 = (~s[1]) & (~s[0]);
    wire EN1 = (~s[1]) & ( s[0]);
    wire EN2 = ( s[1]) & (~s[0]);
    wire EN3 = ( s[1]) & ( s[0]);
    
    
    assign out = ({32{EN0}} & I0) | ({32{EN1}} & I1) | ({32{EN2}} & I2) | ({32{EN3}} & I3);
    

endmodule
