# Classic TNT Behavior
execute at @e[type=item,nbt={Item:{id:"minecraft:tnt"},Age:1s}] if score @p EMpunchtnt matches 1.. unless entity @p[nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run summon minecraft:tnt ~ ~ ~ {Fuse:80,Motion:[0.01,0.2,0.01]}
execute as @e[type=item,nbt={Item:{id:"minecraft:tnt"},Age:1s}] if score @p EMpunchtnt matches 1.. unless entity @p[nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run tag @s add tntkill
execute as @e[tag=tntkill] run scoreboard players reset @p EMpunchtnt
execute as @e[tag=tntkill] run kill @s