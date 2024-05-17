M73 P0                                      ; clear GLCD progress bar
M75                                         ; start GLCD timer
M107                                        ; disable fans
M420 S0                                     ; disable leveling matrix
G90                                         ; absolute positioning
M82                                         ; set extruder to absolute mode
G92 E0                                      ; set extruder position to 0
M140 S[first_layer_bed_temperature]         ; start bed heating up
G28 XY                                      ; home X and Y
M109 R{first_layer_temperature-20}          ; soften filament before homing Z
G28 Z                                       ; home Z
G1 E-15 F100                                ; retract filament
G12                                         ; wiping sequence
G1 Z10 F5000                                ; raise nozzle after wipe
M109 R{first_layer_temperature-20}          ; wait for extruder to reach probe temp
G1 X-10 Y293 F4000                          ; move above first probe point
M204 S100                                   ; set probing acceleration
G29                                         ; start auto-leveling sequence
M420 S1                                     ; enable leveling matrix
M204 S500                                   ; restore standard acceleration
G1 X0 Y0 Z15 F5000                          ; move up off last probe point
G4 S1                                       ; pause
M400                                        ; wait for moves to finish
M117 Heating...                             ; progress indicator message on LCD
M109 R[first_layer_temperature]             ; wait for extruder to reach printing temp
M190 R[first_layer_bed_temperature]         ; wait for bed to reach printing temp
G1 Z2 E0 F75                                ; prime tiny bit of filament into the nozzle
M117 TAZ 6 Printing...                      ; progress indicator message on LCD
;Start G-Code End
