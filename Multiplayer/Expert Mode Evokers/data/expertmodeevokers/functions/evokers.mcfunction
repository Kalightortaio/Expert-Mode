# Evokers are tougher
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:evoker] run effect give @s minecraft:resistance 2 2 true

# Vexes briefly apply levitation.
execute as @a run execute as @s at @s if entity @e[type=minecraft:vex,distance=0..1] run effect give @s minecraft:levitation 2 2 true

# Vexes are weakened.
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:vex] run effect give @s minecraft:weakness 5 2 true