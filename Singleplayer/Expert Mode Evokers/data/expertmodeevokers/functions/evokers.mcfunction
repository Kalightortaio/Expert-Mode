# Evokers are tougher
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:evoker] run effect give @s minecraft:resistance 2 2 true

# Vexes briefly apply levitation.
execute at @p if entity @e[type=minecraft:vex,distance=0..1] run effect give @p minecraft:levitation 2 2 true
