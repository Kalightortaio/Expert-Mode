# Decrement Cauldron
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0]
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron[level=1] run setblock ~ ~1 ~ cauldron[level=0]
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron[level=2] run setblock ~ ~1 ~ cauldron[level=1]
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=2]
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron[level=3] run setblock ~ ~1 ~ cauldron[level=2]

# Give Stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_red_mushroom,tag=stew_brown_mushroom,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_red_mushroom,tag=stew_brown_mushroom,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_red_mushroom,tag=stew_brown_mushroom,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run give @s mushroom_stew 1
execute at @e[tag=bowldetection] if entity @e[tag=stew_red_mushroom,tag=stew_brown_mushroom,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run give @s mushroom_stew 1

execute at @e[tag=bowldetection] if entity @e[tag=stew_rabbit,tag=stew_carrot,tag=stew_potato,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_rabbit,tag=stew_carrot,tag=stew_potato,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_rabbit,tag=stew_carrot,tag=stew_potato,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run give @s rabbit_stew 1
execute at @e[tag=bowldetection] if entity @e[tag=stew_rabbit,tag=stew_carrot,tag=stew_potato,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run give @s rabbit_stew 1

execute at @e[tag=bowldetection] if entity @e[tag=stew_three,tag=stew_beetroot,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_three,tag=stew_beetroot,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_three,tag=stew_beetroot,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run give @s beetroot_soup 1
execute at @e[tag=bowldetection] if entity @e[tag=stew_three,tag=stew_beetroot,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run give @s beetroot_soup 1

execute at @e[tag=bowldetection] if entity @e[tag=stew_kelp,tag=stew_scute,tag=stew_ink_sac,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_kelp,tag=stew_scute,tag=stew_ink_sac,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_kelp,tag=stew_scute,tag=stew_ink_sac,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run give @s suspicious_stew{Effects:[{EffectId:30b,EffectDuration:400}]} 1
execute at @e[tag=bowldetection] if entity @e[tag=stew_kelp,tag=stew_scute,tag=stew_ink_sac,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run give @s suspicious_stew{Effects:[{EffectId:30b,EffectDuration:400}]} 1

execute at @e[tag=bowldetection] if entity @e[tag=stew_feather,tag=stew_ender_pearl,tag=stew_phantom_membrane,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_feather,tag=stew_ender_pearl,tag=stew_phantom_membrane,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run tag @s add stew
execute at @e[tag=bowldetection] if entity @e[tag=stew_feather,tag=stew_ender_pearl,tag=stew_phantom_membrane,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run give @s suspicious_stew{Effects:[{EffectId:26b,EffectDuration:1200}]} 1
execute at @e[tag=bowldetection] if entity @e[tag=stew_feather,tag=stew_ender_pearl,tag=stew_phantom_membrane,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run give @s suspicious_stew{Effects:[{EffectId:26b,EffectDuration:1200}]} 1

execute as @s[tag=!stew] run execute at @e[tag=bowldetection] if entity @e[tag=cauldron,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run give @s bowl 1
execute as @s[tag=!stew] run execute at @e[tag=bowldetection] if entity @e[tag=cauldron,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run give @s bowl 1
execute as @s[tag=stew] run tag @s remove stew

# Remove tags from boiling at level=0
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron[level=0] run execute at @e[tag=boiling,distance=0..1.1,sort=nearest] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["cauldron"]}
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron[level=0] run execute at @e[tag=boiling,distance=0..1.1,sort=nearest] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["cauldron"]}
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron[level=0] run kill @e[tag=boiling,distance=0..1.1,sort=nearest]
execute at @e[tag=bowldetection] if entity @e[tag=boiling,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron[level=0] run kill @e[tag=boiling,distance=0..1.1,sort=nearest]

# Remove bowl
execute at @e[tag=bowldetection] if entity @e[tag=cauldron,distance=0..1.1,sort=nearest] if block ~ ~ ~ cauldron run clear @s bowl 1
execute at @e[tag=bowldetection] if entity @e[tag=cauldron,distance=0..1.1,sort=nearest] if block ~ ~1 ~ cauldron run clear @s bowl 1