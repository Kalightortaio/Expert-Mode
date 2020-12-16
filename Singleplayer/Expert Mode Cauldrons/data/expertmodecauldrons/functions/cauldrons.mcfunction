# Magma cream can create water in the nether
execute as @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}}] at @s if block ~ ~ ~ minecraft:cauldron[level=0] run tag @s add EMcaulone
execute at @e[tag=EMcaulone] run setblock ~ ~ ~ minecraft:cauldron[level=1] replace
execute as @e[tag=EMcaulone] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}}] at @s if block ~ ~ ~ minecraft:cauldron[level=1] run tag @s add EMcaultwo
execute at @e[tag=EMcaultwo] run setblock ~ ~ ~ minecraft:cauldron[level=2] replace
execute as @e[tag=EMcaultwo] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}}] at @s if block ~ ~ ~ minecraft:cauldron[level=2] run tag @s add EMcaulthree
execute at @e[tag=EMcaulthree] run setblock ~ ~ ~ minecraft:cauldron[level=3] replace
execute as @e[tag=EMcaulthree] run kill @s

# Custom Cauldrons
execute as @a if score @s EMplacecaul matches 1.. run function expertmodecauldrons:cauldrondet
execute as @e[tag=cauldron] at @s unless block ~ ~ ~ cauldron run kill @s

# Boiling
execute as @e[tag=cauldron] at @s if entity @e[type=player,sort=nearest,limit=1,distance=0..40] run function expertmodecauldrons:boiling

# Stew Detection
execute as @e[tag=bowldetection] at @s unless entity @e[tag=boiling,distance=0..3] run teleport ~ 0 ~
execute as @e[tag=bowldetection] at @s unless entity @e[tag=boiling,distance=0..3] run kill @s
execute as @e[tag=bowldetection] at @s if entity @e[type=player,distance=..10,nbt=!{SelectedItem:{id:"minecraft:bowl"}}] run teleport ~ 0 ~
execute as @e[tag=bowldetection] at @s if entity @e[type=player,distance=..10,nbt=!{SelectedItem:{id:"minecraft:bowl"}}] run kill @s
execute as @a run execute as @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] at @s run execute unless entity @e[tag=bowldetection,distance=..10] if entity @e[tag=boiling,distance=0..2] run summon villager ^ ^ ^-1 {Fire:-1s,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["bowldetection"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200000,ShowParticles:0b}],Offers:{},VillagerData:{profession:"minecraft:weaponsmith",type:"minecraft:plains"}}
team join NC @e[tag=bowldetection]
execute as @a run execute as @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] at @s run teleport @e[tag=bowldetection] ^ ^ ^1
execute as @e[tag=bowldetection] run data merge entity @s {Fire:-1s,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["bowldetection"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200000,ShowParticles:0b}],Offers:{},VillagerData:{profession:"minecraft:weaponsmith",type:"minecraft:plains"}}
execute as @a if score @s EMbowl matches 1.. run function expertmodecauldrons:dostew
execute as @a if score @s EMbowl matches 1.. run scoreboard players reset @s EMbowl

# Stew Crafting
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_red_mushroom
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_brown_mushroom
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_rabbit
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_carrot
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_potato
execute as @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_beetroot
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_kelp
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:scute",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_scute
execute as @e[type=item,nbt={Item:{id:"minecraft:scute",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:scute",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:scute",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:scute",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:scute",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:scute",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:scute",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_ink_sac
execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_feather
execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_ender_pearl
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,distance=0..1,sort=nearest] add stew_phantom_membrane
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_four,tag=stew_three,distance=0..1,sort=nearest] add stew_four
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_three,tag=stew_two,distance=0..1,sort=nearest] add stew_three
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_two,tag=stew_one,distance=0..1,sort=nearest] add stew_two
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run tag @e[tag=boiling,tag=!stew_one,distance=0..1,sort=nearest] add stew_one
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run playsound block.brewing_stand.brew master @e[type=player,distance=0..10] ~ ~ ~ 0.2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run particle minecraft:crit ~ ~0.1 ~ 0.5 2 0.5 0.1 40 normal @a
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s if entity @e[tag=boiling,distance=0..1,tag=!stew_four,sort=nearest] if block ~ ~ ~ cauldron run kill @s

execute as @e[type=item] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run playsound minecraft:entity.dolphin.splash master @e[type=player,distance=0..10] ~ ~ ~ 0.5 1
execute as @e[type=item] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run setblock ~ ~ ~ cauldron[level=0] replace
execute as @e[type=item] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run execute at @e[tag=boiling,distance=0..1.1,sort=nearest] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["cauldron"]}
execute as @e[type=item] at @s if entity @e[tag=boiling,distance=0..1,sort=nearest] if block ~ ~ ~ cauldron run execute as @e[tag=boiling,distance=0..1.1,sort=nearest] run kill @s

# Signil that cauldron is ready
execute as @e[tag=boiling,tag=stew_red_mushroom,tag=stew_brown_mushroom] at @s if block ~ ~ ~ cauldron run particle minecraft:dragon_breath ~ ~0.15 ~ 0 0.1 0 0.007 10 normal @a
execute as @e[tag=boiling,tag=stew_rabbit,tag=stew_carrot,tag=stew_potato] at @s if block ~ ~ ~ cauldron run particle minecraft:dragon_breath ~ ~0.15 ~ 0 0.1 0 0.007 10 normal @a
execute as @e[tag=boiling,tag=stew_three,tag=stew_beetroot] at @s if block ~ ~ ~ cauldron run particle minecraft:dragon_breath ~ ~0.15 ~ 0 0.1 0 0.007 10 normal @a
execute as @e[tag=boiling,tag=stew_kelp,tag=stew_scute,tag=stew_ink_sac] at @s if block ~ ~ ~ cauldron run particle minecraft:dragon_breath ~ ~0.15 ~ 0 0.1 0 0.007 10 normal @a
execute as @e[tag=boiling,tag=stew_feather,tag=stew_ender_pearl,tag=stew_phantom_membrane] at @s if block ~ ~ ~ cauldron run particle minecraft:dragon_breath ~ ~0.15 ~ 0 0.1 0 0.007 10 normal @a