onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider inputs
add wave -noupdate /shiftregister_tb/clk
add wave -noupdate /shiftregister_tb/rst
add wave -noupdate /shiftregister_tb/controle
add wave -noupdate -radix unsigned /shiftregister_tb/entrada
add wave -noupdate -divider outputs
add wave -noupdate -radix unsigned /shiftregister_tb/SHIFTREGISTER/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {47 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 120
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {124672 ps}
