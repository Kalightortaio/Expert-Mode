execute if block ~ ~ ~ #expertmodecore:air positioned ~ ~ ~ positioned ^ ^ ^1 positioned ~ ~ ~ if entity @s[distance=0..5.5] run function expertmodeunstableanomaly:raycast

# if ray cast hits a block
execute unless block ~ ~ ~ #expertmodecore:air if predicate expertmodeunstableanomaly:voidspawn run summon endermite ~ ~ ~ {Tags:["VoidSpawn"],Attributes:[{Name:generic.movement_speed,Base:0.45},{Name:generic.attack_damage,Base:10}]}
execute unless block ~ ~ ~ #expertmodecore:air run execute at @s run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 5 0
execute unless block ~ ~ ~ #expertmodecore:air if block ~ ~ ~ minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1b}}
execute unless block ~ ~ ~ #expertmodecore:air if block ~ ~ ~ minecraft:barrier run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b}}
execute unless block ~ ~ ~ #expertmodecore:air if block ~ ~ ~ minecraft:end_portal_frame run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
execute unless block ~ ~ ~ #expertmodecore:air run setblock ~ ~ ~ air destroy
