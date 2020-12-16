# Cave spiders spin cobwebs when attacking.
execute as @e[type=minecraft:cave_spider] at @s if entity @p[distance=0..1] run setblock ~ ~ ~ minecraft:cobweb keep