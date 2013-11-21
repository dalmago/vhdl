onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -label A -radix unsigned /adder8bits_tb/ent1
add wave -noupdate -label B -radix unsigned /adder8bits_tb/ent2
add wave -noupdate -label {Carry In} /adder8bits_tb/cin
add wave -noupdate -divider Outputs
add wave -noupdate -divider arch1
add wave -noupdate -label Soma -radix unsigned /adder8bits_tb/Adder8bits1/soma
add wave -noupdate -label {Carry Out} /adder8bits_tb/Adder8bits1/CarryOut
add wave -noupdate -divider arch2
add wave -noupdate -label Soma -radix unsigned /adder8bits_tb/Adder8bits2/soma
add wave -noupdate -label {Carry Out} /adder8bits_tb/Adder8bits2/CarryOut
add wave -noupdate -divider arch3
add wave -noupdate -label Soma -radix unsigned /adder8bits_tb/Adder8bits3/soma
add wave -noupdate -label {Carry Out} /adder8bits_tb/Adder8bits3/CarryOut
add wave -noupdate -divider arch4
add wave -noupdate -label Soma -radix unsigned /adder8bits_tb/Adder8bits4/soma
add wave -noupdate -label {Carry Out} /adder8bits_tb/Adder8bits4/CarryOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7833 ps} 0}
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
WaveRestoreZoom {0 ps} {64 ns}
