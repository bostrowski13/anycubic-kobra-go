G28 ;Home
M420 S1 Z0 ;Bed audo-leveling (S1=on/S0=off) Z0 (Fade Off)
G1 Z15.0 F6000 ;Move the platform down 15mm
;Prime the extruder
G92 E0
G1 F200 E3
G92 E0
