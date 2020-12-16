# Nuke, not really a black hole

# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:1200,Amplifier:100b}]}] at @s unless entity @e[tag=blackhole] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["blackhole"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}]}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:1200,Amplifier:100b}]}] at @s if entity @e[tag=blackhole] run teleport @e[tag=blackhole] ~ ~2 ~
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:200,Amplifier:100b}]}] at @e[tag=blackhole] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:180,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:160,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:140,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:120,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:100,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:80,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:60,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:40,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt={ActiveEffects:[{Id:15b,Duration:20,Amplifier:100b}]}] at @e[tag=blackhole] run execute at @e[type=minecraft:item,distance=0..100,limit=100,sort=nearest] run summon minecraft:fireball ~ ~10 ~ {Motion:[0.0,-10.0,0.0],ExplosionPower:10}
# execute as @a[nbt=!{ActiveEffects:[{Id:15b,Amplifier:100b}]}] at @e[tag=blackhole] run kill @e[type=minecraft:item,distance=0..200,sort=nearest]
# execute as @a[nbt={ActiveEffects:[{Id:15b,Amplifier:100b}]}] at @s if entity @e[tag=blackhole,distance=0..100] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 1 0
# execute as @a[nbt=!{ActiveEffects:[{Id:15b,Amplifier:100b}]}] run kill @e[tag=blackhole]
# execute as @a[nbt={SelectedItem:{id:"minecraft:milk_bucket"},ActiveEffects:[{Id:15b,Amplifier:100b}]}] run replaceitem entity @s weapon.mainhand minecraft:bucket 1


# Old UA

# execute as @p[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:0b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:0b},distance=0..7] add bedrockbreaker0
# execute as @p at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:0b},distance=0..7] if score @p EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:0b},distance=0..7] add bedrockbreaker0
# execute as @e[tag=bedrockbreaker0] run data merge entity @s {Invisible:1b}
# execute as @e[tag=bedrockbreaker0] at @s if block ~ ~1 ~ minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1b}}
# execute as @e[tag=bedrockbreaker0] at @s if block ~ ~1 ~ minecraft:barrier run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b}}
# execute as @e[tag=bedrockbreaker0] at @s if block ~ ~1 ~ minecraft:end_portal_frame run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
# execute as @e[tag=bedrockbreaker0] at @s if block ~ ~1 ~ minecraft:beacon run kill @e[tag=beacon,distance=..256,limit=1] 
# execute as @e[tag=bedrockbreaker0] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
# execute as @e[tag=bedrockbreaker0] at @s run setblock ~ ~1 ~ minecraft:air destroy
# execute as @e[tag=bedrockbreaker0] run scoreboard players set @p EMedgecaseUA 0
# execute as @e[tag=bedrockbreaker0] run execute as @p at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
# execute as @e[tag=bedrockbreaker0] at @s unless entity @e[tag=blackhole] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
# execute as @e[tag=bedrockbreaker0] at @s if block ~ ~1 ~ minecraft:air run kill @s

# execute as @p[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:1b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:1b},distance=0..7] add bedrockbreaker1
# execute as @p at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:1b},distance=0..7] if score @p EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:1b},distance=0..7] add bedrockbreaker1
# execute as @e[tag=bedrockbreaker1] run data merge entity @s {Invisible:1b}
# execute as @e[tag=bedrockbreaker1] at @s if block ~ ~-1 ~ minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1b}}
# execute as @e[tag=bedrockbreaker1] at @s if block ~ ~-1 ~ minecraft:barrier run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b}}
# execute as @e[tag=bedrockbreaker1] at @s if block ~ ~-1 ~ minecraft:end_portal_frame run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
# execute as @e[tag=bedrockbreaker1] at @s if block ~ ~-1 ~ minecraft:beacon run kill @e[tag=beacon,distance=..256,limit=1] 
# execute as @e[tag=bedrockbreaker1] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
# execute as @e[tag=bedrockbreaker1] at @s run setblock ~ ~-1 ~ minecraft:air destroy
# execute as @e[tag=bedrockbreaker1] run scoreboard players set @p EMedgecaseUA 0
# execute as @e[tag=bedrockbreaker1] run execute as @p at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
# execute as @e[tag=bedrockbreaker1] at @s unless entity @e[tag=blackhole] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
# execute as @e[tag=bedrockbreaker1] at @s if block ~ ~-1 ~ minecraft:air run kill @s

# execute as @p[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:2b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:2b},distance=0..7] add bedrockbreaker2
# execute as @p at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:2b},distance=0..7] if score @p EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:2b},distance=0..7] add bedrockbreaker2
# execute as @e[tag=bedrockbreaker2] run data merge entity @s {Invisible:1b}
# execute as @e[tag=bedrockbreaker2] at @s if block ~ ~ ~1 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1b}}
# execute as @e[tag=bedrockbreaker2] at @s if block ~ ~ ~1 minecraft:barrier run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b}}
# execute as @e[tag=bedrockbreaker2] at @s if block ~ ~ ~1 minecraft:end_portal_frame run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
# execute as @e[tag=bedrockbreaker2] at @s if block ~ ~ ~1 minecraft:beacon run kill @e[tag=beacon,distance=..256,limit=1]
# execute as @e[tag=bedrockbreaker2] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
# execute as @e[tag=bedrockbreaker2] at @s run setblock ~ ~ ~1 minecraft:air destroy
# execute as @e[tag=bedrockbreaker2] run scoreboard players set @p EMedgecaseUA 0
# execute as @e[tag=bedrockbreaker2] run execute as @p at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
# execute as @e[tag=bedrockbreaker2] at @s unless entity @e[tag=blackhole] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
# execute as @e[tag=bedrockbreaker2] at @s if block ~ ~ ~1 minecraft:air run kill @s

# execute as @p[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:3b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:3b},distance=0..7] add bedrockbreaker3
# execute as @p at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:3b},distance=0..7] if score @p EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:3b},distance=0..7] add bedrockbreaker3
# execute as @e[tag=bedrockbreaker3] run data merge entity @s {Invisible:1b}
# execute as @e[tag=bedrockbreaker3] at @s if block ~ ~ ~-1 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1b}}
# execute as @e[tag=bedrockbreaker3] at @s if block ~ ~ ~-1 minecraft:barrier run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b}}
# execute as @e[tag=bedrockbreaker3] at @s if block ~ ~ ~-1 minecraft:end_portal_frame run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
# execute as @e[tag=bedrockbreaker3] at @s if block ~ ~ ~-1 minecraft:beacon run kill @e[tag=beacon,distance=..256,limit=1]
# execute as @e[tag=bedrockbreaker3] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
# execute as @e[tag=bedrockbreaker3] at @s run setblock ~ ~ ~-1 minecraft:air destroy
# execute as @e[tag=bedrockbreaker3] run scoreboard players set @p EMedgecaseUA 0
# execute as @e[tag=bedrockbreaker3] run execute as @p at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
# execute as @e[tag=bedrockbreaker3] at @s unless entity @e[tag=blackhole] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
# execute as @e[tag=bedrockbreaker3] at @s if block ~ ~ ~-1 minecraft:air run kill @s

# execute as @p[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:4b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:4b},distance=0..7] add bedrockbreaker4
# execute as @p at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:4b},distance=0..7] if score @p EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:4b},distance=0..7] add bedrockbreaker4
# execute as @e[tag=bedrockbreaker4] run data merge entity @s {Invisible:1b}
# execute as @e[tag=bedrockbreaker4] at @s if block ~1 ~ ~ minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1b}}
# execute as @e[tag=bedrockbreaker4] at @s if block ~1 ~ ~ minecraft:barrier run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b}}
# execute as @e[tag=bedrockbreaker4] at @s if block ~1 ~ ~ minecraft:end_portal_frame run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
# execute as @e[tag=bedrockbreaker4] at @s if block ~1 ~ ~ minecraft:beacon run kill @e[tag=beacon,distance=..256,limit=1] 
# execute as @e[tag=bedrockbreaker4] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
# execute as @e[tag=bedrockbreaker4] at @s run setblock ~1 ~ ~ minecraft:air destroy
# execute as @e[tag=bedrockbreaker4] run scoreboard players set @p EMedgecaseUA 0
# execute as @e[tag=bedrockbreaker4] run execute as @p at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
# execute as @e[tag=bedrockbreaker4] at @s unless entity @e[tag=blackhole] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
# execute as @e[tag=bedrockbreaker4] at @s if block ~1 ~ ~ minecraft:air run kill @s

# execute as @p[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:5b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:5b},distance=0..7] add bedrockbreaker5
# execute as @p at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:5b},distance=0..7] if score @p EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:5b},distance=0..7] add bedrockbreaker5
# execute as @e[tag=bedrockbreaker5] run data merge entity @s {Invisible:1b}
# execute as @e[tag=bedrockbreaker5] at @s if block ~-1 ~ ~ minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1b}}
# execute as @e[tag=bedrockbreaker5] at @s if block ~-1 ~ ~ minecraft:barrier run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b}}
# execute as @e[tag=bedrockbreaker5] at @s if block ~-1 ~ ~ minecraft:end_portal_frame run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
# execute as @e[tag=bedrockbreaker5] at @s if block ~-1 ~ ~ minecraft:beacon run kill @e[tag=beacon,distance=..256,limit=1] 
# execute as @e[tag=bedrockbreaker5] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
# execute as @e[tag=bedrockbreaker5] at @s run setblock ~-1 ~ ~ minecraft:air destroy
# execute as @e[tag=bedrockbreaker5] run scoreboard players set @p EMedgecaseUA 0
# execute as @e[tag=bedrockbreaker5] run execute as @p at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
# execute as @e[tag=bedrockbreaker5] at @s unless entity @e[tag=blackhole] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
# execute as @e[tag=bedrockbreaker5] at @s if block ~-1 ~ ~ minecraft:air run kill @s

# execute if score @p EMtrackUA matches 1.. run scoreboard players set @p EMtrackUA 0
# execute as @p[nbt=!{SelectedItem:{tag:{Tags:["BB"]},id:"minecraft:item_frame",Count:1b}}] run scoreboard players set @s EMedgecaseUA 0


# # Raycast within blackhole radius
#execute if block ~ ~ ~ #expertmodecore:air positioned ~ ~ ~ positioned ^ ^ ^1 positioned ~ ~ ~ if entity @s[distance=0..10] run function expertmodecore:blockraycast

# if raycast hits a block
#execute unless block ~ ~ ~ #expertmodecore:air positioned ~ ~ ~ unless block ~ ~ ~ bedrock if entity @s[distance=0..10] run setblock ~ ~ ~ air replace

# execute as @p[gamemode=!creative] run clear @s minecraft:enderman_spawn_egg 1
# execute as @p if score @s EMcraftedUA matches 1.. run give @s minecraft:item_frame{CustomModelData:16500,Enchantments:[{id:"something"}],display:{Name:"{\"text\":\"Unstable Anomaly\",\"color\":\"magenta\",\"italic\":false}"},Tags:["BB"]} 1
# execute as @p run scoreboard players set @s EMcraftedUA 0

# execute as @p[nbt={SelectedItem:{tag:{Tags:["BB"]},id:"minecraft:item_frame",Count:1b}}] unless score @s EMedgecaseUA matches 1 run scoreboard players set @s EMedgecaseUA 1
# execute if score @p EMtrackUA matches 1.. run function expertmodeunstableanomaly:doanomaly
# execute as @p[nbt=!{SelectedItem:{tag:{Tags:["BB"]},id:"minecraft:item_frame",Count:1b}}] unless score @s EMedgecaseUA matches 0 run scoreboard players set @s EMedgecaseUA 0