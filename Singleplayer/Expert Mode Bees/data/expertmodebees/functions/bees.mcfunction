# Bees are deadly
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:bee] run effect give @s minecraft:strength 5 1 true
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:bee] run data merge entity @s {HasStung:0b}