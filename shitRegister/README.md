vhdl
====

shift register with control

if ctrl = 00: keep the value 

if ctrl = 01: 1 bit shift-left 

if ctrl = 10: 1 bit shift-right 

if ctrl = 11: Load (q <- d) 

To compile and simulate, go to the folder in Modelsim and run:

<code>
do compile.tcl
</code>

status: Working! (02/12/13)
