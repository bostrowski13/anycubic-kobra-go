M117 Cooling down...

M104 S0 ; turn off extruder

M107 ; Fan off

M84 ; disable motors

G91 ;relative positioning

G1 E-1 F300 ;retract the filament a bit before lifting the nozzle, to release some of the pressure

G1 Z+0.5 E-5 ;X-20 Y-20 F240 ;move Z up a bit and retract filament even more

G28 X0 ;move X to min endstops, so the head is out of the way

G90 ;Absolute positionning

G1 Y200 F3000 ;Present print

M84 ;steppers off

M300 P300 S4000

M117 Finished.
