# The Horde... zombies attract other zombies when attacked. This means you want to kill them in as few attacks as possible, or just run!
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:zombie,tag=!wsupdate] run data merge entity @s {Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.3F}]}
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:zombie,tag=!wsupdate] run tag @s add wsupdate

# Zombies break torches they tread over
execute at @e[type=minecraft:zombie] if block ~ ~ ~ minecraft:torch run setblock ~ ~ ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~1 ~ ~ minecraft:torch run setblock ~1 ~ ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~-1 ~ ~ minecraft:torch run setblock ~-1 ~ ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~ ~1 minecraft:torch run setblock ~ ~ ~1 minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~ ~-1 minecraft:torch run setblock ~ ~ ~-1 minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~1 ~ minecraft:torch run setblock ~ ~1 ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~1 ~1 ~ minecraft:torch run setblock ~1 ~1 ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~-1 ~1 ~ minecraft:torch run setblock ~-1 ~1 ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~1 ~1 minecraft:torch run setblock ~ ~1 ~1 minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~1 ~-1 minecraft:torch run setblock ~ ~1 ~-1 minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~ ~ minecraft:wall_torch run setblock ~ ~ ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~1 ~ ~ minecraft:wall_torch run setblock ~1 ~ ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~-1 ~ ~ minecraft:wall_torch run setblock ~-1 ~ ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~ ~1 minecraft:wall_torch run setblock ~ ~ ~1 minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~ ~-1 minecraft:wall_torch run setblock ~ ~ ~-1 minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~1 ~ minecraft:wall_torch run setblock ~ ~1 ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~1 ~1 ~ minecraft:wall_torch run setblock ~1 ~1 ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~-1 ~1 ~ minecraft:wall_torch run setblock ~-1 ~1 ~ minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~1 ~1 minecraft:wall_torch run setblock ~ ~1 ~1 minecraft:air destroy
execute at @e[type=minecraft:zombie] if block ~ ~1 ~-1 minecraft:wall_torch run setblock ~ ~1 ~-1 minecraft:air destroy
