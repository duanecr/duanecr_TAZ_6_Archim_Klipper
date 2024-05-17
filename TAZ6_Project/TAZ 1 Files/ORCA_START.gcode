G90 ; use absolute coordinates
M83 ; extruder relative mode
M204 S[machine_max_acceleration_extruding] T[machine_max_acceleration_retracting]
M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
G28 ; home all
G1 Y1.0 Z0.3 F1000 ; move print head up
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp
G92 E0.0
; initial load
G1 X205.0 E19 F1000
G1 Y1.6
G1 X5.0 E19 F1000
G92 E0.0
; intro line
G1 Y2.0 Z0.2 F1000
G1 X65.0 E9.0 F1000
G1 X105.0 E12.5 F1000
G92 E0.0