# Machine G-CODES

## Start

```gcode
SET_PRINT_STATS_INFO TOTAL_LAYER=[total_layer_count]
START_PRINT BED_TEMP=[bed_temperature_initial_layer_single] EXTRUDER_TEMP=[nozzle_temperature_initial_layer]
```

## End

```gcode
END_PRINT
; total layers count = [total_layer_count]
; layer_z = [layer_z]
```

## Before Layer Change

> TODO move lógic to klipper macro
> TODO move timelapse macro to TIMELAPSE MACHINE G-CODE

```gcode
;BEFORE_LAYER_CHANGE
;[layer_z]
G92 E0

{ if layer_num > 2 }
TIMELAPSE_TAKE_FRAME
{ else }
; timelapse: no take frame in layer {layer_num + 1}
{ endif }
```

## Layer Change

```gcode
SET_PRINT_STATS_INFO CURRENT_LAYER={layer_num + 1}
```

## Change Filament

```gcode
PAUSE
```

## Timelapse

> TODO
