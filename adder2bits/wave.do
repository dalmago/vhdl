onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -label A -radix unsigned /adder2bits_tb/valA
add wave -noupdate -label B -radix unsigned /adder2bits_tb/valB
add wave -noupdate -label {Carry In} /adder2bits_tb/c
add wave -noupdate -divider Outputs
add wave -noupdate -label Soma -radix unsigned /adder2bits_tb/Adder2bits/soma
add wave -noupdate -label {Carry Out} /adder2bits_tb/Adder2bits/CarryOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {128 ns}
