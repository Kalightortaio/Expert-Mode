# Wolves have higher health, move faster, and spawn in larger packs.
execute at @e[type=wolf,tag=!emwolf,tag=!emwolfspawn] run summon wolf ~ ~ ~ {Tags:["emwolfspawn"]}
execute as @e[type=wolf,tag=!emwolf,tag=!emwolfspawn] run data merge entity @s {Tags:["emwolfspawn"]}
execute as @e[type=wolf,tag=emwolfspawn] run data merge entity @s {Attributes:[{Base:40.0d,Name:"generic.max_health"}]}
execute as @e[type=wolf,tag=emwolfspawn] run data merge entity @s {Health:40f}
execute as @e[type=wolf,tag=emwolfspawn] run data merge entity @s {Tags:["emwolf"]}
execute if score @p EMtime matches 1 run execute as @e[type=wolf,tag=emwolf] run effect give @s speed 5 1 true

# Wolves will become hostile at night.
execute as @e[type=wolf,tag=!tamed,nbt={Sitting:1b}] run tag @s add tamed
execute store result score @p EMnighttime run time query daytime
execute as @p at @s run execute if score @s EMnighttime matches 12786..23216 run execute as @e[type=wolf,distance=0..32,tag=!tamed,tag=!wolfhostile,tag=!wolfcalmed] run tag @s add wolftemp
execute at @e[tag=wolftemp] run summon wolf ~ ~ ~ {AngerTime:2000000,Tags:["emwolf","wolfhostile"],Health:40f,Attributes:[{Base:40.0d,Name:"generic.max_health"}],Passengers:[{id:"minecraft:zombie",Silent:1b,Health:1f,Attributes:[{Base:1.0d,Name:"generic.max_health"}],CanPickUpLoot:0b,IsBaby:1b,Tags:["wolfbite"],CustomName:'{"text":"Wolf"}',DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}]}
execute as @e[tag=wolftemp] run kill @s
execute as @e[tag=wolfhostile] at @s if entity @e[tag=wolfbite,distance=0..1] run data merge entity @s {AngerTime:2000000}
execute as @e[tag=wolfbite] at @s unless entity @e[tag=wolfhostile,distance=0..1] run kill @s
execute as @e[tag=wolfhostile] at @s unless entity @e[tag=wolfbite,distance=0..1] run summon wolf ~ ~ ~ {Tags:["emwolf","wolfcalmed"],Health:40f,Attributes:[{Base:40.0d,Name:"generic.max_health"}]}
execute as @e[tag=wolfhostile] at @s unless entity @e[tag=wolfbite,distance=0..1] run kill @s
execute as @p run execute if score @s EMnighttime matches 23217..23999 run execute as @e[tag=wolfhostile] at @s run kill @e[tag=wolfbite,distance=0..1] 
execute as @p run execute if score @s EMnighttime matches 23217..23999 run execute as @e[tag=wolfcalmed] run tag @s remove wolfcalmed