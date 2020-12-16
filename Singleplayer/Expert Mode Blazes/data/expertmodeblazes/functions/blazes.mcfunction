# Blazes periodically light the ground on fire
execute if score @p EMtime matches 1 run execute as @e[type=blaze] at @s run setblock ~ ~ ~ fire keep
