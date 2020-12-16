# Riding an undead horse gives immunity to their respective mob while riding
execute as @a run execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] run team join zombies @s
execute as @a run execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] at @s run execute as @e[type=zombie,distance=0..20] run team join zombies @s
execute as @a run execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] at @s run execute as @e[type=zombie,distance=21..120] run team leave @s
execute as @a run execute as @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] at @s run execute as @e[type=zombie,distance=0..20] run team leave @s
execute as @a run execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] at @s run execute as @e[type=zombie_villager,distance=0..20] run team join zombies @s
execute as @a run execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] at @s run execute as @e[type=zombie_villager,distance=21..120] run team leave @s
execute as @a run execute as @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] at @s run execute as @e[type=zombie_villager,distance=0..20] run team leave @s
execute as @a run execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] run team join skeletons @s
execute as @a run execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] at @s run execute as @e[type=skeleton,distance=0..20] run team join skeletons @s
execute as @a run execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] at @s run execute as @e[type=skeleton,distance=21..120] run team leave @s
execute as @a run execute as @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] at @s run execute as @e[type=skeleton,distance=0..20] run team leave @s