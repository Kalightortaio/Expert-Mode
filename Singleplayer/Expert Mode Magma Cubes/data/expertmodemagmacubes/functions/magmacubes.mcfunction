# Magma cubes spread magma blocks in the nether, giving smaller slimes strength in numbers.
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:magma_cube] at @s if block ~ ~-1 ~ minecraft:netherrack run setblock ~ ~-1 ~ minecraft:magma_block replace
