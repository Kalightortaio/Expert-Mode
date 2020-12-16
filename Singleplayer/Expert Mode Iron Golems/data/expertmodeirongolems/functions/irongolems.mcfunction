# Iron Golems regenerate health over time (helps villages from getting overrun by the Horde)
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:iron_golem] run effect give @s minecraft:regeneration 5 2 true
