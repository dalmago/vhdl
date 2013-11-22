onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -label A -radix unsigned /mux2x1_tb/a
add wave -noupdate -label B -radix unsigned /mux2x1_tb/b
add wave -noupdate -label Ctrl /mux2x1_tb/ctrl
add wave -noupdate -label TAMANHO -radix unsigned /mux2x1_tb/TAMANHO
add wave -noupdate -divider Outputs
add wave -noupdate -divider arch1
add wave -noupdate -label Out -radix unsigned -childformat {{/mux2x1_tb/DUV1/output(7) -radix unsigned} {/mux2x1_tb/DUV1/output(6) -radix unsigned} {/mux2x1_tb/DUV1/output(5) -radix unsigned} {/mux2x1_tb/DUV1/output(4) -radix unsigned} {/mux2x1_tb/DUV1/output(3) -radix unsigned} {/mux2x1_tb/DUV1/output(2) -radix unsigned} {/mux2x1_tb/DUV1/output(1) -radix unsigned} {/mux2x1_tb/DUV1/output(0) -radix unsigned}} -subitemconfig {/mux2x1_tb/DUV1/output(7) {-radix unsigned} /mux2x1_tb/DUV1/output(6) {-radix unsigned} /mux2x1_tb/DUV1/output(5) {-radix unsigned} /mux2x1_tb/DUV1/output(4) {-radix unsigned} /mux2x1_tb/DUV1/output(3) {-radix unsigned} /mux2x1_tb/DUV1/output(2) {-radix unsigned} /mux2x1_tb/DUV1/output(1) {-radix unsigned} /mux2x1_tb/DUV1/output(0) {-radix unsigned}} /mux2x1_tb/DUV1/output
add wave -noupdate -divider arch2
add wave -noupdate -label Out -radix unsigned -childformat {{/mux2x1_tb/DUV2/output(7) -radix unsigned} {/mux2x1_tb/DUV2/output(6) -radix unsigned} {/mux2x1_tb/DUV2/output(5) -radix unsigned} {/mux2x1_tb/DUV2/output(4) -radix unsigned} {/mux2x1_tb/DUV2/output(3) -radix unsigned} {/mux2x1_tb/DUV2/output(2) -radix unsigned} {/mux2x1_tb/DUV2/output(1) -radix unsigned} {/mux2x1_tb/DUV2/output(0) -radix unsigned}} -subitemconfig {/mux2x1_tb/DUV2/output(7) {-radix unsigned} /mux2x1_tb/DUV2/output(6) {-radix unsigned} /mux2x1_tb/DUV2/output(5) {-radix unsigned} /mux2x1_tb/DUV2/output(4) {-radix unsigned} /mux2x1_tb/DUV2/output(3) {-radix unsigned} /mux2x1_tb/DUV2/output(2) {-radix unsigned} /mux2x1_tb/DUV2/output(1) {-radix unsigned} /mux2x1_tb/DUV2/output(0) {-radix unsigned}} /mux2x1_tb/DUV2/output
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
WaveRestoreZoom {0 ps} {64 ns}
