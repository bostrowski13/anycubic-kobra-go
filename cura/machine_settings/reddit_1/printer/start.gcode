G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
M117 Homing X/Y ...
G28 X0 Y0 ;move X/Y to min endstops
M117 Homing Z ...
G28 Z0 ;move Z to min endstops
G1 Z15.0 F240 ;move the platform down 15mm
M117 Heating ...
M104 S[first_layer_temperature]
; set extruder temp
M109 S[first_layer_temperature]
; wait for extruder temp
M117 Start cleaning ...
M420 S1 ; Enable Bed Levelling Mesh
G92 E0 ;zero the extruded length
M117 Intro line ...
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z[first_layer_height] F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z[first_layer_height] F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z[first_layer_height] F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3[first_layer_height] F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 X5 Y20 Z0.3 F240 ; Move over to prevent blob squish
G92 E0 ; Reset Extruder
M420 S1 ; Enable Bed Levelling Mesh
M117 Printing...
