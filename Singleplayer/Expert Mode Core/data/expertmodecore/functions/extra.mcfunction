# Hardened Elytra (smithing recipe)
execute as @p[gamemode=!creative] store success score @p EMhardelytra run clear @s minecraft:debug_stick 1
execute as @p[gamemode=!creative] if score @s EMhardelytra matches 1.. run give @s minecraft:elytra{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1796047588,-1347663020,-1791671404,-174745534],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-1011633566,805981030,-1351914856,1112753478],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;-1320329606,-1542765693,-1865745719,206807529],Slot:"chest"}]} 1
execute as @p[gamemode=!creative] if score @s EMhardelytra matches 1.. run scoreboard players reset @s EMhardelytra

# Experience Bottle Crafting
scoreboard players set @a EMvarOne 1
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. run clear @s minecraft:experience_bottle 1
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. run execute store result score @s EMexplevels run xp query @s levels
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. run execute store result score @s EMexppoints run xp query @s points
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. if score @s EMexplevels matches 0 if score @s EMexppoints matches 0..6 run effect give @s minecraft:instant_damage 1 0 true
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. if score @s EMexplevels matches 0 if score @s EMexppoints matches 0..6 run give @s minecraft:glass_bottle 1
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. if score @s EMexplevels matches 0 if score @s EMexppoints matches 0..6 run scoreboard players reset @s EMexp
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. run xp add @s -7 points
execute as @p[gamemode=!creative] at @s if score @s EMexp matches 1.. run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 0.5 0.3
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. run give @s experience_bottle 1
execute as @p[gamemode=!creative] if score @s EMexp matches 1.. run scoreboard players operation @s EMexp -= @s EMvarOne

# Knowledge Book Usage
execute as @a[nbt={SelectedItem:{id:"minecraft:knowledge_book"}},nbt=!{SelectedItem:{id:"minecraft:knowledge_book"},tag:{Recipes:["expertmodecore:trigger"]}}] run replaceitem entity @s weapon.mainhand knowledge_book{Recipes:["expertmodecore:trigger"]} 1
execute as @a if score @s EMknowledge matches 1.. run xp add @s 56 points
execute as @a at @s if score @s EMknowledge matches 1.. run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 0.5 0.3
execute as @a if score @s EMknowledge matches 1.. run scoreboard players reset @s EMknowledge
recipe take @a expertmodecore:trigger

# Enchanted Book Usage
execute as @a[nbt={SelectedItem:{id:"minecraft:enchanted_book"}},nbt=!{SelectedItem:{tag:{StoredEnchantments:[{}]}}},nbt=!{SelectedItem:{tag:{isBlank:1b}}}] run replaceitem entity @s weapon.mainhand enchanted_book{display:{Lore:['{"text":"Blank Spell","color":"gray","italic":false}']},isBlank:1b} 1

# Invisible Item Frames
execute as @e[type=item_frame,tag=!modified] run data merge entity @s {Invisible:1b}
execute as @e[type=item_frame,tag=!modified] run tag @s add modified

# Chickens drop feathers passively
execute as @e[type=item,nbt={Item:{id:"minecraft:egg"}},tag=!eggprocessed] at @s if entity @e[type=chicken,distance=0..1] if predicate expertmodecore:feather run tag @s add eggfeather
execute as @e[type=item,nbt={Item:{id:"minecraft:egg"}},tag=!eggfeather,tag=!eggprocessed] at @s if entity @e[type=chicken,distance=0..1] run tag @s add eggprocessed
execute as @e[type=item,nbt={Item:{id:"minecraft:egg"}},tag=eggfeather] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:feather",Count:1b}}
execute as @e[type=item,nbt={Item:{id:"minecraft:egg"}},tag=eggfeather] run kill @s

# Custom Block Experiment
#execute at @e[nbt={FireworksItem:{tag:{CustomModelData:1}}}] run setblock ~ ~ ~ spawner{MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:1}}]}} keep
#kill @e[nbt={FireworksItem:{tag:{CustomModelData:1}}}]
# execute at @p if block ~ ~-1 ~ minecraft:spawner{SpawnData:{ArmorItems:[{},{},{},{tag:{CustomModelData:1}}]}}
# test if entity is in spot where block is trying to be placed
