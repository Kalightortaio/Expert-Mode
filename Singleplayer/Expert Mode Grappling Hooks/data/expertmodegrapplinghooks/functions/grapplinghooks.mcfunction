# Saves the position of the bobber, and the state of its existence.
execute as @p[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if score @p EMgrapple matches 1.. run tag @e[type=minecraft:fishing_bobber] add bobber
execute as @p[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if score @p EMgrapple matches 1.. unless entity @e[tag=hook] run scoreboard players reset @p EMsneak
execute as @p[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if score @p EMgrapple matches 1.. at @e[tag=bobber,nbt={OnGround:1b}] unless entity @e[tag=hook] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["hook","unrotated"],Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute as @p[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if entity @e[tag=unrotated] run execute as @e[tag=hook] at @s facing entity @p eyes run tp @s ~ ~ ~ facing ^ ^ ^-1
execute as @p[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if entity @e[tag=unrotated] run tag @e[tag=unrotated] remove unrotated

# Activate Grapple
execute if entity @e[tag=hook] unless entity @e[tag=bobber] unless score @p EMsneak matches 1.. run teleport @p @e[tag=hook,limit=1]
execute if entity @e[tag=hook] unless entity @e[tag=bobber] run scoreboard players reset @p EMgrapple
execute if entity @e[tag=hook] unless entity @e[tag=bobber] run scoreboard players reset @p EMsneak
execute if entity @e[tag=hook] unless entity @e[tag=bobber] run kill @e[tag=hook]

execute as @p[gamemode=!creative] run clear @s minecraft:turtle_spawn_egg 1
execute as @p if score @s EMcraftedGH matches 1.. run give @s minecraft:fishing_rod{display:{Name:"{\"text\":\"Grappling Hook\",\"color\":\"yellow\",\"italic\":false}"},Tags:["GH"],CustomModelData:16503}
execute as @p run scoreboard players set @s EMcraftedGH 0