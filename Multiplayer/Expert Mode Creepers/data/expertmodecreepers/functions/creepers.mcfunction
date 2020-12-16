# Creepers are faster and silent!
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:creeper,tag=!wsupdate] run data merge entity @s {Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.35}]}
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:creeper,tag=!wsupdate] run tag @s add wsupdate