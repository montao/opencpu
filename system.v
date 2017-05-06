// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Sat May  6 12:45:02 2017"

module system(
	operation1,
	operation0,
	cin,
	in0,
	in1,
	in2,
	in3,
	clock,
	result0,
	result1,
	result2,
	result3,
	cout,
	reg0,
	reg1,
	reg2,
	reg3
);


input wire	operation1;
input wire	operation0;
input wire	cin;
input wire	in0;
input wire	in1;
input wire	in2;
input wire	in3;
input wire	clock;
output wire	result0;
output wire	result1;
output wire	result2;
output wire	result3;
output wire	cout;
output wire	reg0;
output wire	reg1;
output wire	reg2;
output wire	reg3;

reg	DFF_inst2;
reg	DFF_inst3;
reg	DFF_inst4;
reg	DFF_inst5;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_10;

assign	result0 = SYNTHESIZED_WIRE_1;
assign	result1 = SYNTHESIZED_WIRE_4;
assign	result2 = SYNTHESIZED_WIRE_7;
assign	result3 = SYNTHESIZED_WIRE_10;
assign	reg0 = DFF_inst2;
assign	reg1 = DFF_inst3;
assign	reg2 = DFF_inst4;
assign	reg3 = DFF_inst5;
assign	SYNTHESIZED_WIRE_12 = 1;




alu4bit	b2v_inst(
	.operation1(operation1),
	.operation0(operation0),
	.a0(DFF_inst2),
	.a1(DFF_inst3),
	.a2(DFF_inst4),
	.a3(DFF_inst5),
	.b0(in0),
	.b1(in1),
	.b2(in2),
	.b3(in3),
	.cin(cin),
	.result0(SYNTHESIZED_WIRE_1),
	.result1(SYNTHESIZED_WIRE_4),
	.result2(SYNTHESIZED_WIRE_7),
	.result3(SYNTHESIZED_WIRE_10),
	.carryout(cout));


always@(posedge clock or negedge SYNTHESIZED_WIRE_12 or negedge SYNTHESIZED_WIRE_12)
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst2 <= 1;
	end
else
	begin
	DFF_inst2 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_12 or negedge SYNTHESIZED_WIRE_12)
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst3 <= 1;
	end
else
	begin
	DFF_inst3 <= SYNTHESIZED_WIRE_4;
	end
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_12 or negedge SYNTHESIZED_WIRE_12)
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst4 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst4 <= 1;
	end
else
	begin
	DFF_inst4 <= SYNTHESIZED_WIRE_7;
	end
end


always@(posedge clock or negedge SYNTHESIZED_WIRE_12 or negedge SYNTHESIZED_WIRE_12)
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst5 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_inst5 <= 1;
	end
else
	begin
	DFF_inst5 <= SYNTHESIZED_WIRE_10;
	end
end



endmodule
