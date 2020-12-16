# Skeletons are healthier.
execute if score @p EMtime matches 1 run tag @e[type=skeleton,tag=!buffed] add hskeleton  
execute if score @p EMtime matches 2 run execute as @e[tag=hskeleton,tag=!buffed] run data merge entity @s {Attributes:[{Name:generic.max_health,Base:60}],Health:60}
execute if score @p EMtime matches 3 run execute as @e[tag=hskeleton,tag=!buffed] run tag @s add buffed