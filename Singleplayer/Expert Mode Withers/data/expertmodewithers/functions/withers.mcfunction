# The Wither is tougher
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:wither] run effect give @s minecraft:resistance 5 3 true

# The Wither summons reinforcements!
execute as @e[type=wither] run team join Wither @s
execute as @e[type=wither_skeleton] run team join Wither @s
execute as @e[type=wither_skull] at @s unless block ~ ~-0.1 ~ #expertmodecore:air run tag @s add summonws
execute at @e[tag=summonws] run summon wither_skeleton ~ ~ ~ {Tags:["WitherSpawn","wsupdate"],HandItems:[{Count:1,id:diamond_axe,tag:{Enchantments:[{id:vanishing_curse,lvl:1}]}},{}]}
execute as @e[tag=summonws] run kill @s

# Kills wither spawn after 32 seconds
execute as @e[tag=WitherSpawn] if score @p EMtime matches 1 run scoreboard players add @s EMdeathtimer 1
execute as @e[tag=WitherSpawn] if score @s EMdeathtimer matches 8.. at @s run teleport ~ ~-256 ~

# Withers cannot be suffocated
execute as @e[type=wither] at @s if block ~ ~2 ~ #expertmodecore:air run data merge entity @s {Invulnerable:0b}
execute as @e[type=wither] at @s if block ~ ~3 ~ #expertmodecore:air run data merge entity @s {Invulnerable:0b}
execute as @e[type=wither] at @s unless block ~ ~2 ~ #expertmodecore:air run data merge entity @s {Invulnerable:1b}
execute as @e[type=wither] at @s unless block ~ ~3 ~ #expertmodecore:air run data merge entity @s {Invulnerable:1b}
