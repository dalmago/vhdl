onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -label Ent1 /fulladder_tb/ent1
add wave -noupdate -label Ent2 /fulladder_tb/ent2
add wave -noupdate -label CarryIn /fulladder_tb/carryIn
add wave -noupdate -divider Outputs
add wave -noupdate -divider arch1
add wave -noupdate -label Soma /fulladder_tb/DUV1/S
add wave -noupdate -label CarryOut /fulladder_tb/DUV1/Co
add wave -noupdate -divider arch2
add wave -noupdate -label Soma /fulladder_tb/DUV2/S
add wave -noupdate -label CarryOut /fulladder_tb/DUV2/Co
add wave -noupdate -divider arch3
add wave -noupdate -label Soma /fulladder_tb/DUV3/S
add wave -noupdate -label CarryOut /fulladder_tb/DUV3/Co
add wave -noupdate -divider arch4
add wave -noupdate -label Soma /fulladder_tb/DUV4/S
add wave -noupdate -label CarryOut /fulladder_tb/DUV4/Co
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {0 ps} 0}
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
