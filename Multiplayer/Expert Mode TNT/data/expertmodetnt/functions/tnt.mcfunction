# Classic TNT Behavior
execute at @e[type=item,nbt={Item:{id:"minecraft:tnt"},Age:1s}] if score @e[sort=nearest,limit=1,type=player,distance=0..10] EMpunchtnt matches 1.. unless entity @e[sort=nearest,limit=1,type=player,distance=0..10,nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run summon minecraft:tnt ~ ~ ~ {Fuse:80,Motion:[0.01,0.2,0.01]}
execute as @e[type=item,nbt={Item:{id:"minecraft:tnt"},Age:1s}] if score @e[sort=nearest,limit=1,type=player,distance=0..10] EMpunchtnt matches 1.. unless entity @e[sort=nearest,limit=1,type=player,distance=0..10,nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run tag @s add tntkill
execute as @e[tag=tntkill] run scoreboard players reset @a EMpunchtnt
execute as @e[tag=tntkill] run kill @s