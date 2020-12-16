# The Ender Dragon brings reinforcements!
execute at @e[type=ender_dragon] if block ~ ~ ~ obsidian unless score @p EMendermanNum matches 401.. run summon enderman 0 40 0
execute store result score @p EMendermanNum run execute if entity @e[type=minecraft:enderman]

# Respawn Dragon Egg upon death
execute store result score @e[type=ender_dragon] EMenderdragonNum run execute if entity @e[type=minecraft:ender_dragon]
execute as @e[type=ender_dragon,tag=!died] if score @s EMenderdragonNum matches 8 run execute in minecraft:the_end run execute unless entity @e[tag=eggscan] align xyz run summon armor_stand 0.5 256 0.5 {Tags:["eggscan"],NoGravity:1b,Marker:1b}
execute as @e[type=ender_dragon,tag=!died] if score @s EMenderdragonNum matches 8 run execute in minecraft:the_end run function expertmodeenderdragon:placeegg
execute as @e[type=ender_dragon,tag=!died] if score @s EMenderdragonNum matches 8 run kill @e[tag=eggscan]
execute as @e[type=ender_dragon,tag=!died] if score @s EMenderdragonNum matches 8 run tag @s add died
