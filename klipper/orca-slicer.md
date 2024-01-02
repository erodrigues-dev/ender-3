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

```gcode
;BEFORE_LAYER_CHANGE
;[layer_z]
G92 E0
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

```gcode
TIMELAPSE_TAKE_FRAME
```
