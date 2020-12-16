# Leather Armor Set Bonus
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] unless score @s EMfullLeather matches 1..2 run scoreboard players add @s EMfullLeather 1
execute as @a run execute as @s if score @s EMfullLeather matches 1 run effect give @s minecraft:health_boost 200000 0 true
execute as @a run execute as @s if score @s EMfullLeather matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullLeather matches 1 run scoreboard players add @s EMfullLeather 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] if score @s EMfullLeather matches 2.. run scoreboard players add @s EMfullLeather 1
execute as @a run execute as @s if score @s EMfullLeather matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullLeather matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullLeather matches 3 run scoreboard players reset @s EMfullLeather

# Leather Armor Set Bonus (w/ Elytra)
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] unless score @s EMfullLeatherE matches 1..2 run scoreboard players add @s EMfullLeatherE 1
execute as @a run execute as @s if score @s EMfullLeatherE matches 1 run effect give @s minecraft:health_boost 200000 0 true
execute as @a run execute as @s if score @s EMfullLeatherE matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullLeatherE matches 1 run scoreboard players add @s EMfullLeatherE 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] if score @s EMfullLeatherE matches 2.. run scoreboard players add @s EMfullLeatherE 1
execute as @a run execute as @s if score @s EMfullLeatherE matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullLeatherE matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullLeatherE matches 3 run scoreboard players reset @s EMfullLeatherE

# Chainmail Armor Set Bonus
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"},{Slot:102b,id:"minecraft:chainmail_chestplate"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] unless score @s EMfullChainmail matches 1..2 run scoreboard players add @s EMfullChainmail 1
execute as @a run execute as @s if score @s EMfullChainmail matches 1 run effect give @s minecraft:health_boost 200000 1 true
execute as @a run execute as @s if score @s EMfullChainmail matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullChainmail matches 1 run scoreboard players add @s EMfullChainmail 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"},{Slot:102b,id:"minecraft:chainmail_chestplate"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] if score @s EMfullChainmail matches 2.. run scoreboard players add @s EMfullChainmail 1
execute as @a run execute as @s if score @s EMfullChainmail matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullChainmail matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullChainmail matches 3 run scoreboard players reset @s EMfullChainmail

# Chainmail Armor Set Bonus (w/ Elytra)
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] unless score @s EMfullChaimmailE matches 1..2 run scoreboard players add @s EMfullChaimmailE 1
execute as @a run execute as @s if score @s EMfullChaimmailE matches 1 run effect give @s minecraft:health_boost 200000 1 true
execute as @a run execute as @s if score @s EMfullChaimmailE matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullChaimmailE matches 1 run scoreboard players add @s EMfullChaimmailE 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] if score @s EMfullChaimmailE matches 2.. run scoreboard players add @s EMfullChaimmailE 1
execute as @a run execute as @s if score @s EMfullChaimmailE matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullChaimmailE matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullChaimmailE matches 3 run scoreboard players reset @s EMfullChaimmailE

# Golden Armor Set Bonus
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"},{Slot:102b,id:"minecraft:golden_chestplate"},{Slot:101b,id:"minecraft:golden_leggings"},{Slot:100b,id:"minecraft:golden_boots"}]}] unless score @s EMfullGold matches 1..2 run scoreboard players add @s EMfullGold 1
execute as @a run execute as @s if score @s EMfullGold matches 1 run effect give @s minecraft:health_boost 200000 2 true
execute as @a run execute as @s if score @s EMfullGold matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullGold matches 1 run scoreboard players add @s EMfullGold 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:golden_helmet"},{Slot:102b,id:"minecraft:golden_chestplate"},{Slot:101b,id:"minecraft:golden_leggings"},{Slot:100b,id:"minecraft:golden_boots"}]}] if score @s EMfullGold matches 2.. run scoreboard players add @s EMfullGold 1
execute as @a run execute as @s if score @s EMfullGold matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullGold matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullGold matches 3 run scoreboard players reset @s EMfullGold

# Golden Armor Set Bonus (w/ Elytra)
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:golden_leggings"},{Slot:100b,id:"minecraft:golden_boots"}]}] unless score @s EMfullGoldE matches 1..2 run scoreboard players add @s EMfullGoldE 1
execute as @a run execute as @s if score @s EMfullGoldE matches 1 run effect give @s minecraft:health_boost 200000 2 true
execute as @a run execute as @s if score @s EMfullGoldE matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullGoldE matches 1 run scoreboard players add @s EMfullGoldE 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:golden_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:golden_leggings"},{Slot:100b,id:"minecraft:golden_boots"}]}] if score @s EMfullGoldE matches 2.. run scoreboard players add @s EMfullGoldE 1
execute as @a run execute as @s if score @s EMfullGoldE matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullGoldE matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullGoldE matches 3 run scoreboard players reset @s EMfullGoldE

# Iron Armor Set Bonus
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"minecraft:iron_chestplate"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] unless score @s EMfullIron matches 1..2 run scoreboard players add @s EMfullIron 1
execute as @a run execute as @s if score @s EMfullIron matches 1 run effect give @s minecraft:health_boost 200000 3 true
execute as @a run execute as @s if score @s EMfullIron matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullIron matches 1 run scoreboard players add @s EMfullIron 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"minecraft:iron_chestplate"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] if score @s EMfullIron matches 2.. run scoreboard players add @s EMfullIron 1
execute as @a run execute as @s if score @s EMfullIron matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullIron matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullIron matches 3 run scoreboard players reset @s EMfullIron

# Iron Armor Set Bonus (w/ Elytra)
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] unless score @s EMfullIronE matches 1..2 run scoreboard players add @s EMfullIronE 1
execute as @a run execute as @s if score @s EMfullIronE matches 1 run effect give @s minecraft:health_boost 200000 3 true
execute as @a run execute as @s if score @s EMfullIronE matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullIronE matches 1 run scoreboard players add @s EMfullIronE 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] if score @s EMfullIronE matches 2.. run scoreboard players add @s EMfullIronE 1
execute as @a run execute as @s if score @s EMfullIronE matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullIronE matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullIronE matches 3 run scoreboard players reset @s EMfullIronE

# Diamond Armor Set Bonus
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"},{Slot:102b,id:"minecraft:diamond_chestplate"},{Slot:101b,id:"minecraft:diamond_leggings"},{Slot:100b,id:"minecraft:diamond_boots"}]}] unless score @s EMfullDiamond matches 1..2 run scoreboard players add @s EMfullDiamond 1
execute as @a run execute as @s if score @s EMfullDiamond matches 1 run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMfullDiamond matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullDiamond matches 1 run scoreboard players add @s EMfullDiamond 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"},{Slot:102b,id:"minecraft:diamond_chestplate"},{Slot:101b,id:"minecraft:diamond_leggings"},{Slot:100b,id:"minecraft:diamond_boots"}]}] if score @s EMfullDiamond matches 2.. run scoreboard players add @s EMfullDiamond 1
execute as @a run execute as @s if score @s EMfullDiamond matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullDiamond matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullDiamond matches 3 run scoreboard players reset @s EMfullDiamond

# Diamond Armor Set Bonus (w/ Elytra)
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:diamond_leggings"},{Slot:100b,id:"minecraft:diamond_boots"}]}] unless score @s EMfullDiamondE matches 1..2 run scoreboard players add @s EMfullDiamondE 1
execute as @a run execute as @s if score @s EMfullDiamondE matches 1 run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMfullDiamondE matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullDiamondE matches 1 run scoreboard players add @s EMfullDiamondE 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:diamond_leggings"},{Slot:100b,id:"minecraft:diamond_boots"}]}] if score @s EMfullDiamondE matches 2.. run scoreboard players add @s EMfullDiamondE 1
execute as @a run execute as @s if score @s EMfullDiamondE matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullDiamondE matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullDiamondE matches 3 run scoreboard players reset @s EMfullDiamondE

# Netherite Armor Set Bonus
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:netherite_chestplate"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] unless score @s EMfullNetherite matches 1..2 run scoreboard players add @s EMfullNetherite 1
execute as @a run execute as @s if score @s EMfullNetherite matches 1 run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMfullNetherite matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullNetherite matches 1 run scoreboard players add @s EMfullNetherite 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:netherite_chestplate"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] if score @s EMfullNetherite matches 2.. run scoreboard players add @s EMfullNetherite 1
execute as @a run execute as @s if score @s EMfullNetherite matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullNetherite matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullNetherite matches 3 run scoreboard players reset @s EMfullNetherite

# Netherite Armor Set Bonus (w/ Elytra)
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] unless score @s EMfullNetheriteE matches 1..2 run scoreboard players add @s EMfullNetheriteE 1
execute as @a run execute as @s if score @s EMfullNetheriteE matches 1 run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMfullNetheriteE matches 1 at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullNetheriteE matches 1 run scoreboard players add @s EMfullNetheriteE 1
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] if score @s EMfullNetheriteE matches 2.. run scoreboard players add @s EMfullNetheriteE 1
execute as @a run execute as @s if score @s EMfullNetheriteE matches 3 run effect clear @s minecraft:health_boost
execute as @a run execute as @s if score @s EMfullNetheriteE matches 3 at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5
execute as @a run execute as @s if score @s EMfullNetheriteE matches 3 run scoreboard players reset @s EMfullNetheriteE

# Fixes Armor Set Bonus if you use a totem of undying.
execute as @a[nbt={ActiveEffects:[{Id:22b,Duration:1,Amplifier:1b}]}] run scoreboard players set @s EMtotemCounter 1
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] run effect give @s minecraft:health_boost 200000 0 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] run effect give @s minecraft:health_boost 200000 0 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"},{Slot:102b,id:"minecraft:chainmail_chestplate"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] run effect give @s minecraft:health_boost 200000 1 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] run effect give @s minecraft:health_boost 200000 1 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:gold_helmet"},{Slot:102b,id:"minecraft:gold_chestplate"},{Slot:101b,id:"minecraft:gold_leggings"},{Slot:100b,id:"minecraft:gold_boots"}]}] run effect give @s minecraft:health_boost 200000 2 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:gold_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:gold_leggings"},{Slot:100b,id:"minecraft:gold_boots"}]}] run effect give @s minecraft:health_boost 200000 2 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"minecraft:iron_chestplate"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] run effect give @s minecraft:health_boost 200000 3 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"elytra"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] run effect give @s minecraft:health_boost 200000 3 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"},{Slot:102b,id:"minecraft:diamond_chestplate"},{Slot:101b,id:"minecraft:diamond_leggings"},{Slot:100b,id:"minecraft:diamond_boots"}]}] run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:diamond_leggings"},{Slot:100b,id:"minecraft:diamond_boots"}]}] run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:netherite_chestplate"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMtotemCounter matches 1.. run scoreboard players set @s EMtotemCounter 0

# Fixes Armor Set Bonus if you drink a bucket of milk.
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] run effect give @s minecraft:health_boost 200000 0 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] run effect give @s minecraft:health_boost 200000 0 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"},{Slot:102b,id:"minecraft:chainmail_chestplate"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] run effect give @s minecraft:health_boost 200000 1 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] run effect give @s minecraft:health_boost 200000 1 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:gold_helmet"},{Slot:102b,id:"minecraft:gold_chestplate"},{Slot:101b,id:"minecraft:gold_leggings"},{Slot:100b,id:"minecraft:gold_boots"}]}] run effect give @s minecraft:health_boost 200000 2 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:gold_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:gold_leggings"},{Slot:100b,id:"minecraft:gold_boots"}]}] run effect give @s minecraft:health_boost 200000 2 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"minecraft:iron_chestplate"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] run effect give @s minecraft:health_boost 200000 3 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] run effect give @s minecraft:health_boost 200000 3 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"},{Slot:102b,id:"minecraft:diamond_chestplate"},{Slot:101b,id:"minecraft:diamond_leggings"},{Slot:100b,id:"minecraft:diamond_boots"}]}] run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:diamond_leggings"},{Slot:100b,id:"minecraft:diamond_boots"}]}] run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:netherite_chestplate"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"},{Slot:102b,id:"minecraft:elytra"},{Slot:101b,id:"minecraft:netherite_leggings"},{Slot:100b,id:"minecraft:netherite_boots"}]}] run effect give @s minecraft:health_boost 200000 4 true
execute as @a run execute as @s if score @s EMarmorMilk matches 1.. run scoreboard players set @s EMarmorMilk 0

# Fixes Armor Set Bonus if you die
execute as @a run execute as @s if score @s EMrespawn matches 1 run effect give @s minecraft:health_boost 1 0

# Netherite Special Bonus
execute as @e[type=#impact_projectiles,nbt={inGround:0b},tag=!projSelf] at @s if entity @e[type=player,limit=1,sort=nearest,distance=0..2] run tag @s add projSelf
execute as @e[type=#impact_projectiles,tag=!projSelf] at @s if score @e[type=player,limit=1,sort=nearest,distance=3..7] EMfullNetherite matches 2 run data merge entity @s {Motion:[0.0,-0.05,0.0],power:[0.0,-0.05,0.0]}
execute as @e[type=#impact_projectiles,nbt={inGround:0b},tag=!projSelf] at @s if score @e[type=player,limit=1,sort=nearest,distance=3..7] EMfullNetherite matches 2 run particle ash ~ ~ ~ 0.01 0.3 0.1 0.1 1 normal
execute as @e[type=#impact_projectiles,tag=!projSelf] at @s if score @e[type=player,limit=1,sort=nearest,distance=3..7] EMfullNetheriteE matches 2 run data merge entity @s {Motion:[0.0,-0.05,0.0],power:[0.0,-0.05,0.0]}
execute as @e[type=#impact_projectiles,nbt={inGround:0b},tag=!projSelf] at @s if score @e[type=player,limit=1,sort=nearest,distance=3..7] EMfullNetheriteE matches 2 run particle ash ~ ~ ~ 0.1 0.3 0.1 0.1 1 normal