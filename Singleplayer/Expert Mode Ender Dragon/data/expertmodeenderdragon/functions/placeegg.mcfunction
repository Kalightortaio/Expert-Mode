execute as @e[tag=eggscan] at @s unless block ~ ~-1 ~ minecraft:dragon_egg unless block ~ ~-1 ~ #expertmodecore:air run setblock ~ ~ ~ minecraft:dragon_egg replace
execute as @e[tag=eggscan] at @s if block ~ ~ ~ minecraft:dragon_egg run kill @s
execute as @e[tag=eggscan] at @s run teleport ~ ~-1 ~
execute if entity @e[tag=eggscan] run function expertmodeenderdragon:placeegg
