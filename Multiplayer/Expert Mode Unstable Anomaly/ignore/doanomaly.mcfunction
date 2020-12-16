execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:0b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:0b},distance=0..7] add bedrockbreaker0
execute as @a run execute as @s at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:0b},distance=0..7] if score @s EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:0b},distance=0..7] add bedrockbreaker0
execute as @e[tag=bedrockbreaker0] run data merge entity @s {Invisible:1b}
execute as @e[tag=bedrockbreaker0] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
execute as @e[tag=bedrockbreaker0] run scoreboard players set @e[type=player,limit=1,sort=nearest,distance=0..20] EMedgecaseUA 0
execute as @e[tag=bedrockbreaker0] run execute as @e[type=player,limit=1,sort=nearest,distance=0..20] at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
execute as @e[tag=bedrockbreaker0] at @s if score @e[tag=blackhole,limit=1,sort=nearest] EMbhlife matches 0.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
execute as @e[tag=blackhole,limit=1,sort=nearest] run scoreboard players set @s EMbhlife 10
execute as @e[tag=bedrockbreaker0] at @s if block ~ ~1 ~ minecraft:air run kill @s

execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:1b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:1b},distance=0..7] add bedrockbreaker1
execute as @a run execute as @s at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:1b},distance=0..7] if score @s EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:1b},distance=0..7] add bedrockbreaker1
execute as @e[tag=bedrockbreaker1] run data merge entity @s {Invisible:1b}
execute as @e[tag=bedrockbreaker1] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
execute as @e[tag=bedrockbreaker1] run scoreboard players set @e[type=player,limit=1,sort=nearest,distance=0..20] EMedgecaseUA 0
execute as @e[tag=bedrockbreaker1] run execute as @e[type=player,limit=1,sort=nearest,distance=0..20] at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
execute as @e[tag=bedrockbreaker1] at @s if score @e[tag=blackhole,limit=1,sort=nearest] EMbhlife matches 0.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
execute as @e[tag=blackhole,limit=1,sort=nearest] run scoreboard players set @s EMbhlife 10
execute as @e[tag=bedrockbreaker1] at @s if block ~ ~-1 ~ minecraft:air run kill @s

execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:2b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:2b},distance=0..7] add bedrockbreaker2
execute as @a run execute as @s at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:2b},distance=0..7] if score @s EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:2b},distance=0..7] add bedrockbreaker2
execute as @e[tag=bedrockbreaker2] run data merge entity @s {Invisible:1b}
execute as @e[tag=bedrockbreaker2] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
execute as @e[tag=bedrockbreaker2] run scoreboard players set @e[type=player,limit=1,sort=nearest,distance=0..20] EMedgecaseUA 0
execute as @e[tag=bedrockbreaker2] run execute as @e[type=player,limit=1,sort=nearest,distance=0..20] at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
execute as @e[tag=bedrockbreaker2] at @s if score @e[tag=blackhole,limit=1,sort=nearest] EMbhlife matches 0.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
execute as @e[tag=blackhole,limit=1,sort=nearest] run scoreboard players set @s EMbhlife 10
execute as @e[tag=bedrockbreaker2] at @s if block ~ ~ ~1 minecraft:air run kill @s

execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:3b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:3b},distance=0..7] add bedrockbreaker3
execute as @a run execute as @s at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:3b},distance=0..7] if score @s EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:3b},distance=0..7] add bedrockbreaker3
execute as @e[tag=bedrockbreaker3] run data merge entity @s {Invisible:1b}
execute as @e[tag=bedrockbreaker3] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
execute as @e[tag=bedrockbreaker3] run scoreboard players set @e[type=player,limit=1,sort=nearest,distance=0..20] EMedgecaseUA 0
execute as @e[tag=bedrockbreaker3] run execute as @e[type=player,limit=1,sort=nearest,distance=0..20] at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
execute as @e[tag=bedrockbreaker3] at @s if score @e[tag=blackhole,limit=1,sort=nearest] EMbhlife matches 0.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
execute as @e[tag=blackhole,limit=1,sort=nearest] run scoreboard players set @s EMbhlife 10
execute as @e[tag=bedrockbreaker3] at @s if block ~ ~ ~-1 minecraft:air run kill @s

execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:4b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:4b},distance=0..7] add bedrockbreaker4
execute as @a run execute as @s at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:4b},distance=0..7] if score @s EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:4b},distance=0..7] add bedrockbreaker4
execute as @e[tag=bedrockbreaker4] run data merge entity @s {Invisible:1b}
execute as @e[tag=bedrockbreaker4] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
execute as @e[tag=bedrockbreaker4] run scoreboard players set @e[type=player,limit=1,sort=nearest,distance=0..20] EMedgecaseUA 0
execute as @e[tag=bedrockbreaker4] run execute as @e[type=player,limit=1,sort=nearest,distance=0..20] at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
execute as @e[tag=bedrockbreaker4] at @s if score @e[tag=blackhole,limit=1,sort=nearest] EMbhlife matches 0.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
execute as @e[tag=blackhole,limit=1,sort=nearest] run scoreboard players set @s EMbhlife 10
execute as @e[tag=bedrockbreaker4] at @s if block ~1 ~ ~ minecraft:air run kill @s

execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["BB"]}}}] at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:5b},distance=0..7] run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:5b},distance=0..7] add bedrockbreaker5
execute as @a run execute as @s at @s if entity @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:5b},distance=0..7] if score @s EMedgecaseUA matches 1 run tag @e[type=minecraft:item_frame,limit=1,sort=nearest,nbt={Facing:5b},distance=0..7] add bedrockbreaker5
execute as @e[tag=bedrockbreaker5] run data merge entity @s {Invisible:1b}
execute as @e[tag=bedrockbreaker5] at @s run particle minecraft:mycelium ~ ~ ~ 3 3 3 0.001 5000 force
execute as @e[tag=bedrockbreaker5] run scoreboard players set @e[type=player,limit=1,sort=nearest,distance=0..20] EMedgecaseUA 0
execute as @e[tag=bedrockbreaker5] run execute as @e[type=player,limit=1,sort=nearest,distance=0..20] at @s run playsound minecraft:item.chorus_fruit.teleport block @s ~ ~ ~ 1
execute as @e[tag=bedrockbreaker5] at @s if score @e[tag=blackhole,limit=1,sort=nearest] EMbhlife matches 0.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blackhole"]}
execute as @e[tag=blackhole,limit=1,sort=nearest] run scoreboard players set @s EMbhlife 10
execute as @e[tag=bedrockbreaker5] at @s if block ~-1 ~ ~ minecraft:air run kill @s

execute as @a run execute if score @s EMtrackUA matches 1.. run scoreboard players set @s EMtrackUA 0
execute as @a run execute as @s[nbt=!{SelectedItem:{tag:{Tags:["BB"]},id:"minecraft:item_frame",Count:1b}}] run scoreboard players set @s EMedgecaseUA 0