# Test for darkness
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_0 run scoreboard players set @s EMlightlevel 0
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_1 run scoreboard players set @s EMlightlevel 1
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_2 run scoreboard players set @s EMlightlevel 2
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_3 run scoreboard players set @s EMlightlevel 3
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_4 run scoreboard players set @s EMlightlevel 4
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_5 run scoreboard players set @s EMlightlevel 5
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_6 run scoreboard players set @s EMlightlevel 6
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_7 run scoreboard players set @s EMlightlevel 7
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_8 run scoreboard players set @s EMlightlevel 8
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_9 run scoreboard players set @s EMlightlevel 9
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_10 run scoreboard players set @s EMlightlevel 10
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_11 run scoreboard players set @s EMlightlevel 11
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_12 run scoreboard players set @s EMlightlevel 12
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_13 run scoreboard players set @s EMlightlevel 13
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_14 run scoreboard players set @s EMlightlevel 14
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if predicate expertmodedarkness:light_15 run scoreboard players set @s EMlightlevel 15
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if score @s EMdarktimer matches -2 if block ~ ~ ~ water run scoreboard players set @s EMlightlevel 0
execute as @a run execute as @s[nbt={OnGround:1b},nbt={Air:300s}] at @s if score @s EMdarktimer matches -1..0 if block ~ ~ ~ water run scoreboard players set @s EMlightlevel 15

# A clock to transition into and out of darkness
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] at @s if block ~ ~1 ~ cave_air if score @p EMtime matches 41 if score @s EMlightlevel matches 0..3 unless score @s EMdarktimer matches ..-2 run scoreboard players operation @s EMdarktimer -= @s EMdarkvar 
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] at @s if block ~ ~1 ~ air if score @p EMtime matches 41 if score @s EMlightlevel matches 0..3 unless score @s EMdarktimer matches ..-2 run scoreboard players operation @s EMdarktimer -= @s EMdarkvar 
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] at @s if block ~ ~1 ~ cave_air if score @p EMtime matches 41 if score @s EMlightlevel matches 4..15 unless score @s EMdarktimer matches 0.. run scoreboard players operation @s EMdarktimer += @s EMdarkvar
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] at @s if block ~ ~1 ~ air if score @p EMtime matches 41 if score @s EMlightlevel matches 4..15 unless score @s EMdarktimer matches 0.. run scoreboard players operation @s EMdarktimer += @s EMdarkvar
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] at @s if block ~ ~1 ~ cave_air if score @s EMdarktimer matches -2 run tag @s add darkness
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] at @s if block ~ ~1 ~ air if score @s EMdarktimer matches -2 run tag @s add darkness
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] at @s if block ~ ~1 ~ cave_air if score @s EMdarktimer matches 0 run tag @s remove darkness
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] at @s if block ~ ~1 ~ air if score @s EMdarktimer matches 0 run tag @s remove darkness

# Override when moving from dimension to dimension
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s EMdarktimer 0
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s EMdarktimer 0

# The darkness
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"},nbt=!{ActiveEffects:[{Id:16b}]}] at @s if block ~ ~1 ~ cave_air if entity @s[tag=darkness] run effect give @s blindness 2 0 true
execute as @a run execute as @s[gamemode=survival,nbt={Dimension:"minecraft:overworld"},nbt=!{ActiveEffects:[{Id:16b}]}] at @s if block ~ ~1 ~ air if entity @s[tag=darkness] run effect give @s blindness 2 0 true

# Should be in load, but doesn't work for some reason.
execute as @a run execute as @s run scoreboard players set @s EMdarkvar 1

# If someone dies and was blinded, reset variables
execute as @a run execute as @s if score @s EMrespawn matches 1 run scoreboard players set @s EMdarktimer 0
execute as @a run execute as @s if score @s EMrespawn matches 1 run effect clear @s blindness