# Drowned wear turtle helmets.
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:drowned,tag=!wsupdate] run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:turtle_helmet}],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:drowned,tag=!wsupdate] run tag @s add wsupdate