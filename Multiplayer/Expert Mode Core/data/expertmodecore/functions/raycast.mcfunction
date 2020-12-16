#testing purposes only, does not get called in pack currently
particle barrier ~ ~ ~ 0 0 0 1 1
execute if block ~ ~ ~ #expertmodecore:air unless entity @e[tag=Hit,distance=0..3] positioned ~ ~ ~ unless entity @e[distance=0..1,type=!player,type=!arrow, type=!armor_stand] positioned ^ ^ ^1 positioned ~ ~ ~ run function expertmodecore:raycast

# if ray cast hits a block
#execute unless block ~ ~ ~ #minecraft:raycast positioned ~ ~ ~ run particle composter ~ ~1 ~ 0 0 0 1 1
execute unless block ~ ~ ~ #expertmodecore:air positioned ~ ~ ~ if block ~ ~ ~ obsidian run say Obsidian!

# if ray cast hits a block near an entity
execute unless entity @e[tag=Hit,distance=0..1] positioned ~ ~ ~ if entity @e[distance=0..1,type=!player,type=!arrow, type=!armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["Hit"]}

# if ray cast hits an entity
execute if entity @e[distance=0..1,type=!player,type=!arrow,type=!armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["Hit"]}

# Seperate file
#execute at @p positioned ~ ~1.5 ~ positioned ^ ^ ^2.2 run function expertmodecore:raycast
#execute as @e[tag=Hit] at @s run effect give @e[distance=0..1] minecraft:glowing 1 0 true 
#kill @e[tag=Hit]

