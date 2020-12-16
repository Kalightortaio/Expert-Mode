# Husks carry famine around them
execute if score @p EMtime matches 1 run execute as @a run execute at @s if entity @e[type=minecraft:husk,distance=0..10] run effect give @s minecraft:hunger 15 200 true
execute if score @p EMtime matches 1 run execute as @e[type=husk] run effect give @s minecraft:speed 5 0 true
execute at @e[type=husk] if block ~ ~ ~ minecraft:grass run setblock ~ ~ ~ minecraft:dead_bush replace
execute at @e[type=husk] if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~-1 ~ minecraft:dirt replace
execute at @e[type=husk] if block ~ ~-1 ~ minecraft:farmland run setblock ~ ~-1 ~ minecraft:dirt replace
