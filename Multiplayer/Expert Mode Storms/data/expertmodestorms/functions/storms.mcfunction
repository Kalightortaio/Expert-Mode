# Always thunderstorm
execute if predicate expertmodestorms:rain unless predicate expertmodestorms:thunder unless entity @p[tag=thunder] run weather thunder
execute if predicate expertmodestorms:rain unless predicate expertmodestorms:thunder unless entity @p[tag=thunder] run tag @p add thunder
execute if predicate expertmodestorms:clear if entity @p[tag=thunder] run tag @p remove thunder

# Lightning strikes the player if they stand in a storm
execute as @a run execute if predicate expertmodestorms:thunder at @s[nbt={OnGround:1b},gamemode=survival] unless entity @e[tag=Surface] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Surface"]}
execute as @a run execute if predicate expertmodestorms:thunder at @s[nbt={OnGround:1b},gamemode=survival] if entity @e[tag=Surface] run spreadplayers ~ ~ 0 1 false @e[tag=Surface]
execute as @a run execute if predicate expertmodestorms:thunder as @s[nbt={OnGround:1b},gamemode=survival] at @s if entity @e[tag=Surface,distance=0..1] if score @s EMtime matches 41 if predicate expertmodestorms:lightning run summon lightning_bolt ~ ~ ~

# Creepers become electrified during storms.
execute if predicate expertmodestorms:thunder as @e[type=creeper,nbt=!{powered:1}] run data merge entity @s {powered:1}
