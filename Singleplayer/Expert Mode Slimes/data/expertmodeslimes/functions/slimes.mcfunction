# Slimes become more aggressive
execute if score @p EMtime matches 1 run execute as @e[type=slime] run effect give @s minecraft:speed 5 5 true

# Slimes are immune to fall damage
execute if score @p EMtime matches 1 run execute as @e[type=slime] run effect give @s minecraft:slow_falling 5 1 true
