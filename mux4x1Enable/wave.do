onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -label A -radix unsigned /mux4x1enable_tb/a
add wave -noupdate -label B -radix unsigned /mux4x1enable_tb/b
add wave -noupdate -label C -radix unsigned /mux4x1enable_tb/c
add wave -noupdate -label D -radix unsigned /mux4x1enable_tb/d
add wave -noupdate -label Sel /mux4x1enable_tb/sel
add wave -noupdate -label Enable /mux4x1enable_tb/en
add wave -noupdate -divider Outputs
add wave -noupdate -divider arch1
add wave -noupdate -label S -radix unsigned /mux4x1enable_tb/MUX1/S
add wave -noupdate -divider arch2
add wave -noupdate -label S -radix unsigned -childformat {{/mux4x1enable_tb/MUX2/S(7) -radix unsigned} {/mux4x1enable_tb/MUX2/S(6) -radix unsigned} {/mux4x1enable_tb/MUX2/S(5) -radix unsigned} {/mux4x1enable_tb/MUX2/S(4) -radix unsigned} {/mux4x1enable_tb/MUX2/S(3) -radix unsigned} {/mux4x1enable_tb/MUX2/S(2) -radix unsigned} {/mux4x1enable_tb/MUX2/S(1) -radix unsigned} {/mux4x1enable_tb/MUX2/S(0) -radix unsigned}} -subitemconfig {/mux4x1enable_tb/MUX2/S(7) {-radix unsigned} /mux4x1enable_tb/MUX2/S(6) {-radix unsigned} /mux4x1enable_tb/MUX2/S(5) {-radix unsigned} /mux4x1enable_tb/MUX2/S(4) {-radix unsigned} /mux4x1enable_tb/MUX2/S(3) {-radix unsigned} /mux4x1enable_tb/MUX2/S(2) {-radix unsigned} /mux4x1enable_tb/MUX2/S(1) {-radix unsigned} /mux4x1enable_tb/MUX2/S(0) {-radix unsigned}} /mux4x1enable_tb/MUX2/S
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {81671 ps} 0}
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
