# Deadly Wither skeletons
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:wither_skeleton,tag=!wsupdate] run data merge entity @s {HandItems:[{Count:1,id:diamond_axe,tag:{Enchantments:[{id:vanishing_curse,lvl:1}]}},{}]}
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:wither_skeleton,tag=!wsupdate] run tag @s add wsupdate
