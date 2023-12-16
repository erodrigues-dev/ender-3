G90 ; use absolute coordinates
M83 ; extruder relative mode
M140 S[bed_temperature_initial_layer_single] ; set final bed temp
M104 S150 ; set temporary nozzle temp to prevent oozing during homing
G4 S10 ; allow partial nozzle warmup
G28 ; home all axis
M420 S1 ; restore bed levelling
G29 ; level bed
G1 Z50 F240
G1 X0 Y0 F5000
M104 S[nozzle_temperature_initial_layer] ; set final nozzle temp
M190 S[bed_temperature_initial_layer_single] ; wait for bed temp to stabilize
M109 S[nozzle_temperature_initial_layer] ; wait for nozzle temp to stabilize
G1 Z0.28 F240
G1 X2 Y200 F3000
G92 E0
G1 Y30 E20 F1500 ; prime the nozzle
G1 X2.3 F5000
G92 E0
G1 Y200 E10 F1500 ; prime the nozzle
G92 E0