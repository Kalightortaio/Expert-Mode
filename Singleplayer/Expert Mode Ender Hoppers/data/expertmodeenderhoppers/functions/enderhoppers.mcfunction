execute at @e[type=eye_of_ender] if block ~ ~-1 ~ minecraft:hopper unless entity @e[type=armor_stand,tag=enderhopper,distance=0..5] run summon leash_knot ~ ~-1 ~ {Tags:["EHspawner"]}
execute as @e[type=eye_of_ender] at @s if block ~ ~-1 ~ minecraft:hopper unless entity @e[type=armor_stand,tag=enderhopper,distance=0..5] run kill @s
execute at @e[type=minecraft:leash_knot,tag=EHspawner] run summon minecraft:armor_stand ~ ~-0.5 ~ {Small:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["enderhopper"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;907160796,1821854615,-1727336627,-176309982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}]}}}}]}
execute at @e[type=minecraft:leash_knot,tag=EHspawner] run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0 100
execute at @e[type=minecraft:leash_knot,tag=EHspawner] run playsound minecraft:entity.ender_eye.death block @p
kill @e[type=minecraft:leash_knot,tag=EHspawner]
execute store success score @p EMtpBool run execute if score @p EMtime matches 41 as @e[type=item] at @s run execute at @e[type=minecraft:armor_stand,tag=enderhopper,distance=0..4.5,sort=nearest,limit=1] run tp @e[type=item,distance=0..4.5] ~ ~0.5 ~
execute if score @p EMtpBool matches 1 at @e[type=minecraft:armor_stand,tag=enderhopper] run playsound minecraft:entity.enderman.teleport block @p
execute as @e[type=armor_stand,tag=enderhopper] at @s if block ~ ~ ~ minecraft:air run particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0 200
execute as @e[type=armor_stand,tag=enderhopper] at @s if block ~ ~ ~ minecraft:air run playsound minecraft:entity.ender_eye.death block @p
execute as @e[type=armor_stand,tag=enderhopper] at @s if block ~ ~ ~ minecraft:air run kill @s
execute as @e[type=armor_stand,tag=enderhopper] at @s facing entity @e[type=item,distance=1..4.5,sort=nearest] eyes run teleport ^ ^ ^
scoreboard players reset @p EMtpBool