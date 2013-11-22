onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -label {In 1} -radix unsigned /addernbits_tb/ent1
add wave -noupdate -label {In 2} -radix unsigned /addernbits_tb/ent2
add wave -noupdate -label {Carry In} /addernbits_tb/CarryIn
add wave -noupdate -label {LARGURA BARRAMENTO} /addernbits_tb/LARGURA
add wave -noupdate -divider Outputs
add wave -noupdate -label Soma -radix unsigned -childformat {{/addernbits_tb/adderNbits/soma(15) -radix unsigned} {/addernbits_tb/adderNbits/soma(14) -radix unsigned} {/addernbits_tb/adderNbits/soma(13) -radix unsigned} {/addernbits_tb/adderNbits/soma(12) -radix unsigned} {/addernbits_tb/adderNbits/soma(11) -radix unsigned} {/addernbits_tb/adderNbits/soma(10) -radix unsigned} {/addernbits_tb/adderNbits/soma(9) -radix unsigned} {/addernbits_tb/adderNbits/soma(8) -radix unsigned} {/addernbits_tb/adderNbits/soma(7) -radix unsigned} {/addernbits_tb/adderNbits/soma(6) -radix unsigned} {/addernbits_tb/adderNbits/soma(5) -radix unsigned} {/addernbits_tb/adderNbits/soma(4) -radix unsigned} {/addernbits_tb/adderNbits/soma(3) -radix unsigned} {/addernbits_tb/adderNbits/soma(2) -radix unsigned} {/addernbits_tb/adderNbits/soma(1) -radix unsigned} {/addernbits_tb/adderNbits/soma(0) -radix unsigned}} -subitemconfig {/addernbits_tb/adderNbits/soma(15) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(14) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(13) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(12) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(11) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(10) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(9) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(8) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(7) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(6) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(5) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(4) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(3) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(2) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(1) {-height 16 -radix unsigned} /addernbits_tb/adderNbits/soma(0) {-height 16 -radix unsigned}} /addernbits_tb/adderNbits/soma
add wave -noupdate -label {Carry Out} /addernbits_tb/adderNbits/cout
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
