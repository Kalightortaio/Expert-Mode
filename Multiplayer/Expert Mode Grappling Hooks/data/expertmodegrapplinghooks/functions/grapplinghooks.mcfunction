# Saves the position of the bobber, and the state of its existence.
execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if score @s EMgrapple matches 1.. run tag @e[type=minecraft:fishing_bobber] add bobber
execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if score @s EMgrapple matches 1.. unless entity @e[tag=hook] run scoreboard players reset @s EMsneak
execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if score @s EMgrapple matches 1.. at @e[tag=bobber,nbt={OnGround:1b}] unless entity @e[tag=hook] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["hook","unrotated"],Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if entity @e[tag=unrotated] run execute as @e[tag=hook] at @s facing entity @e[type=player,limit=1,sort=nearest,distance=0..2000] eyes run tp @s ~ ~ ~ facing ^ ^ ^-1
execute as @a run execute as @s[nbt={SelectedItem:{tag:{Tags:["GH"]}}}] run execute if entity @e[tag=unrotated] run tag @e[tag=unrotated] remove unrotated

# Activate Grapple
execute as @a run execute if entity @e[tag=hook] unless entity @e[tag=bobber] unless score @s EMsneak matches 1.. run teleport @s @e[tag=hook,limit=1]
execute as @a run execute if entity @e[tag=hook] unless entity @e[tag=bobber] run scoreboard players reset @s EMgrapple
execute as @a run execute if entity @e[tag=hook] unless entity @e[tag=bobber] run scoreboard players reset @s EMsneak
execute as @a run execute if entity @e[tag=hook] unless entity @e[tag=bobber] run kill @e[tag=hook]

execute as @a run execute as @s[gamemode=!creative] run clear @s minecraft:turtle_spawn_egg 1
execute as @a run execute as @s if score @s EMcraftedGH matches 1.. run give @s minecraft:fishing_rod{display:{Name:"{\"text\":\"Grappling Hook\",\"color\":\"yellow\",\"italic\":false}"},Tags:["GH"],CustomModelData:16503}
execute as @a run execute as @s run scoreboard players set @s EMcraftedGH 0