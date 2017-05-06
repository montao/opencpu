-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
-- CREATED		"Sat May  6 12:46:36 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY system IS 
	PORT
	(
		operation1 :  IN  STD_LOGIC;
		operation0 :  IN  STD_LOGIC;
		cin :  IN  STD_LOGIC;
		in0 :  IN  STD_LOGIC;
		in1 :  IN  STD_LOGIC;
		in2 :  IN  STD_LOGIC;
		in3 :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		result0 :  OUT  STD_LOGIC;
		result1 :  OUT  STD_LOGIC;
		result2 :  OUT  STD_LOGIC;
		result3 :  OUT  STD_LOGIC;
		cout :  OUT  STD_LOGIC;
		reg0 :  OUT  STD_LOGIC;
		reg1 :  OUT  STD_LOGIC;
		reg2 :  OUT  STD_LOGIC;
		reg3 :  OUT  STD_LOGIC
	);
END system;

ARCHITECTURE bdf_type OF system IS 

COMPONENT alu4bit
	PORT(operation1 : IN STD_LOGIC;
		 operation0 : IN STD_LOGIC;
		 a0 : IN STD_LOGIC;
		 a1 : IN STD_LOGIC;
		 a2 : IN STD_LOGIC;
		 a3 : IN STD_LOGIC;
		 b0 : IN STD_LOGIC;
		 b1 : IN STD_LOGIC;
		 b2 : IN STD_LOGIC;
		 b3 : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 result0 : OUT STD_LOGIC;
		 result1 : OUT STD_LOGIC;
		 result2 : OUT STD_LOGIC;
		 result3 : OUT STD_LOGIC;
		 carryout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	DFF_inst2 :  STD_LOGIC;
SIGNAL	DFF_inst3 :  STD_LOGIC;
SIGNAL	DFF_inst4 :  STD_LOGIC;
SIGNAL	DFF_inst5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;


BEGIN 
result0 <= SYNTHESIZED_WIRE_1;
result1 <= SYNTHESIZED_WIRE_4;
result2 <= SYNTHESIZED_WIRE_7;
result3 <= SYNTHESIZED_WIRE_10;
reg0 <= DFF_inst2;
reg1 <= DFF_inst3;
reg2 <= DFF_inst4;
reg3 <= DFF_inst5;
SYNTHESIZED_WIRE_12 <= '1';



b2v_inst : alu4bit
PORT MAP(operation1 => operation1,
		 operation0 => operation0,
		 a0 => DFF_inst2,
		 a1 => DFF_inst3,
		 a2 => DFF_inst4,
		 a3 => DFF_inst5,
		 b0 => in0,
		 b1 => in1,
		 b2 => in2,
		 b3 => in3,
		 cin => cin,
		 result0 => SYNTHESIZED_WIRE_1,
		 result1 => SYNTHESIZED_WIRE_4,
		 result2 => SYNTHESIZED_WIRE_7,
		 result3 => SYNTHESIZED_WIRE_10,
		 carryout => cout);


PROCESS(clock,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst2 <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst2 <= '1';
ELSIF (RISING_EDGE(clock)) THEN
	DFF_inst2 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(clock,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst3 <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst3 <= '1';
ELSIF (RISING_EDGE(clock)) THEN
	DFF_inst3 <= SYNTHESIZED_WIRE_4;
END IF;
END PROCESS;


PROCESS(clock,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst4 <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst4 <= '1';
ELSIF (RISING_EDGE(clock)) THEN
	DFF_inst4 <= SYNTHESIZED_WIRE_7;
END IF;
END PROCESS;


PROCESS(clock,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst5 <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst5 <= '1';
ELSIF (RISING_EDGE(clock)) THEN
	DFF_inst5 <= SYNTHESIZED_WIRE_10;
END IF;
END PROCESS;



END bdf_type;