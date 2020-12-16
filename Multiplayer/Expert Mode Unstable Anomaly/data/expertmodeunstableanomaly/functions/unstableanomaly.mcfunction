# Handle Crafting
execute as @a[gamemode=!creative] run clear @s minecraft:enderman_spawn_egg 1
execute as @a if score @s EMcraftedUA matches 1.. run give @s minecraft:carrot_on_a_stick{CustomModelData:16500,Enchantments:[{id:"something"}],display:{Name:"{\"text\":\"Unstable Anomaly\",\"color\":\"magenta\",\"italic\":false}"}} 1
execute as @a run scoreboard players set @s EMcraftedUA 0

# Call Raycast
execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16500}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16500}}]}] run scoreboard players set @s EMbedrock 0
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16500}}]}] if score @s EMbedrock matches 1.. run execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1.2 run function expertmodeunstableanomaly:raycast
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16500}}}] if score @s EMbedrock matches 1.. run execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1.2 run function expertmodeunstableanomaly:raycast
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16500}}]}] if score @s EMbedrock matches 1.. run scoreboard players set @s EMbedrock 0
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16500}}}] if score @s EMbedrock matches 1.. run scoreboard players set @s EMbedrock 0

# Kills void spawn after 300 seconds
execute as @e[tag=VoidSpawn] if score @p EMtime matches 1 run scoreboard players add @s EMdeathtimer 1
execute as @e[tag=VoidSpawn] if score @s EMdeathtimer matches 75.. at @s run teleport ~ ~-256 ~
execute at @e[tag=VoidSpawn,type=endermite] run particle minecraft:squid_ink ~ ~0.2 ~ 0 0.2 0 0.01 1 force
