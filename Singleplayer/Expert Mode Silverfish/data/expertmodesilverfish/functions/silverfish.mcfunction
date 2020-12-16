# Silverfish cause massive infestations in stone.
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:silverfish] at @s if block ~ ~-1 ~ minecraft:stone run setblock ~ ~-1 ~ minecraft:infested_stone replace
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:silverfish] at @s if block ~ ~-1 ~ minecraft:stone_bricks run setblock ~ ~-1 ~ minecraft:infested_stone_bricks replace
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:silverfish] at @s if block ~ ~-1 ~ minecraft:chiseled_stone_bricks run setblock ~ ~-1 ~ minecraft:infested_chiseled_stone_bricks replace
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:silverfish] at @s if block ~ ~-1 ~ minecraft:mossy_stone_bricks run setblock ~ ~-1 ~ minecraft:infested_mossy_stone_bricks replace
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:silverfish] at @s if block ~ ~-1 ~ minecraft:cracked_stone_bricks run setblock ~ ~-1 ~ minecraft:infested_cracked_stone_bricks replace
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:silverfish] at @s if block ~ ~-1 ~ minecraft:cobblestone run setblock ~ ~-1 ~ minecraft:infested_cobblestone replace

execute store result score @p EMsilverfishNum run execute if entity @e[type=minecraft:silverfish]
execute if score @p EMsilverfishNum matches 1..200 if entity @e[type=minecraft:silverfish,tag=!sfcap] run tag @e[type=minecraft:silverfish,tag=!sfcap] add sfcap
execute if score @p EMsilverfishNum matches 201.. run kill @e[type=minecraft:silverfish,tag=!sfcap]

# Silverfish have a chance to spawn from mining stone (1 in 1000 chance)
execute if score @p EMminedStone matches 1.. if predicate expertmodesilverfish:stonecheck as @p at @s run tag @e[type=item,tag=!sfspawned,distance=0..10,limit=1,sort=nearest,nbt={Item:{id:"minecraft:cobblestone"}}] add sfspawner
execute at @e[tag=sfspawner,tag=!sfspawned] run summon minecraft:silverfish ~ ~ ~
execute as @e[tag=sfspawner] run tag @s add sfspawned
execute as @e[tag=sfspawner] run tag @s remove sfspawner
execute if score @p EMminedStone matches 1.. run scoreboard players reset @p EMminedStone