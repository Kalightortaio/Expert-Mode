#Sets player variables
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run scoreboard players set @s EMrunLCOnce 1

# If someone joins the world for the first time, it removes their crafting recipes for armor
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe give @s *
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run scoreboard players set @s EMLCL 2
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run scoreboard players set @s EMLCC 2
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run scoreboard players set @s EMLCG 2
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run scoreboard players set @s EMLCI 2
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run scoreboard players set @s EMLCD 2
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run scoreboard players set @s EMLCN 2
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:leather_helmet
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:leather_chestplate
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:leather_leggings
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:leather_boots
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s expertmodearmorprogression:chainmail_helmet
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s expertmodearmorprogression:chainmail_chestplate
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s expertmodearmorprogression:chainmail_leggings
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s expertmodearmorprogression:chainmail_boots
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:golden_helmet
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:golden_chestplate
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:golden_leggings
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:golden_boots
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:iron_helmet
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:iron_chestplate
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:iron_leggings
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:iron_boots
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:diamond_helmet
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:diamond_chestplate
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:diamond_leggings
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:diamond_boots
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:netherite_helmet
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:netherite_chestplate
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:netherite_leggings
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run recipe take @s minecraft:netherite_boots
execute as @a run execute as @s unless score @s EMrunLCOnce matches 2 run scoreboard players set @s EMrunLCOnce 2

# Unlock armor when an advancement is met.
execute as @a run execute as @s if score @s EMLCL matches 1 run recipe give @s minecraft:leather_helmet
execute as @a run execute as @s if score @s EMLCL matches 1 run recipe give @s minecraft:leather_chestplate
execute as @a run execute as @s if score @s EMLCL matches 1 run recipe give @s minecraft:leather_leggings
execute as @a run execute as @s if score @s EMLCL matches 1 run recipe give @s minecraft:leather_boots
execute as @a run execute as @s if score @s EMLCC matches 1 run recipe give @s expertmodearmorprogression:chainmail_helmet
execute as @a run execute as @s if score @s EMLCC matches 1 run recipe give @s expertmodearmorprogression:chainmail_chestplate
execute as @a run execute as @s if score @s EMLCC matches 1 run recipe give @s expertmodearmorprogression:chainmail_leggings
execute as @a run execute as @s if score @s EMLCC matches 1 run recipe give @s expertmodearmorprogression:chainmail_boots
execute as @a run execute as @s if score @s EMLCG matches 1 run recipe give @s minecraft:golden_helmet
execute as @a run execute as @s if score @s EMLCG matches 1 run recipe give @s minecraft:golden_chestplate
execute as @a run execute as @s if score @s EMLCG matches 1 run recipe give @s minecraft:golden_leggings
execute as @a run execute as @s if score @s EMLCG matches 1 run recipe give @s minecraft:golden_boots
execute as @a run execute as @s if score @s EMLCI matches 1 run recipe give @s minecraft:iron_helmet
execute as @a run execute as @s if score @s EMLCI matches 1 run recipe give @s minecraft:iron_chestplate
execute as @a run execute as @s if score @s EMLCI matches 1 run recipe give @s minecraft:iron_leggings
execute as @a run execute as @s if score @s EMLCI matches 1 run recipe give @s minecraft:iron_boots
execute as @a run execute as @s if score @s EMLCD matches 1 run recipe give @s minecraft:diamond_helmet
execute as @a run execute as @s if score @s EMLCD matches 1 run recipe give @s minecraft:diamond_chestplate
execute as @a run execute as @s if score @s EMLCD matches 1 run recipe give @s minecraft:diamond_leggings
execute as @a run execute as @s if score @s EMLCD matches 1 run recipe give @s minecraft:diamond_boots
execute as @a run execute as @s if score @s EMLCN matches 1 run recipe give @s minecraft:netherite_helmet
execute as @a run execute as @s if score @s EMLCN matches 1 run recipe give @s minecraft:netherite_chestplate
execute as @a run execute as @s if score @s EMLCN matches 1 run recipe give @s minecraft:netherite_leggings
execute as @a run execute as @s if score @s EMLCN matches 1 run recipe give @s minecraft:netherite_boots

# Changes the score so the commands above are not run constantly
execute as @a run execute as @s if score @s EMLCL matches 1 run scoreboard players set @s EMLCL 2
execute as @a run execute as @s if score @s EMLCC matches 1 run scoreboard players set @s EMLCC 2
execute as @a run execute as @s if score @s EMLCG matches 1 run scoreboard players set @s EMLCG 2
execute as @a run execute as @s if score @s EMLCI matches 1 run scoreboard players set @s EMLCI 2
execute as @a run execute as @s if score @s EMLCD matches 1 run scoreboard players set @s EMLCD 2
execute as @a run execute as @s if score @s EMLCN matches 1 run scoreboard players set @s EMLCN 2



