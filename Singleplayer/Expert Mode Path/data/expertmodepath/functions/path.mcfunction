# Grass path blocks give a speed buff when walked on.
execute as @a at @s if block ~ ~-0.5 ~ minecraft:grass_path run effect give @s speed 1 0 true
