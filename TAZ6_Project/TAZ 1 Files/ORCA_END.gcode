G1 E-1.0 F2100 ; retract
G92 E0.0
G1{if max_layer_z < max_print_height} Z{z_offset+min(max_layer_z+30, max_print_height)}{endif} E-34.0 F720 ; move print head up & retract filament
G4 ; wait
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
G1 X0 Y105 F3000 ; park print head
M84 ; disable motors