# This one's actually a nerf, but it balances enchanted golden apples.
team join NC @e[tag=gas1]
team join NC @e[tag=gas2]
team join NC @e[tag=gas3]
team join NC @e[tag=gas4]
team join NC @e[tag=gas5]
team join NC @e[tag=gas6]
team join NC @e[tag=gas7]
team join NC @e[tag=gas8]
team join NC @e[tag=gas9]
execute as @a run execute as @s if score @s EMrespawn matches 1 run scoreboard players reset @s EMega
execute as @a run execute as @s unless score @s EMega matches 1.. run scoreboard players reset @s EMgatimer
execute as @a run execute as @s unless score @s EMega matches 1.. run scoreboard players set @s EMAirChest 0
execute as @a run execute as @s if score @s EMega matches 1.. unless score @s EMsetOnce matches 1 run scoreboard players set @s EMgatimer 15
execute as @a run execute as @s if score @s EMega matches 1.. run scoreboard players set @s EMsetOnce 1
execute as @a run execute as @s[nbt=!{SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] if score @s EMega matches 1.. run scoreboard players set @s EMAirChest 0
execute as @a run execute as @s[nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] if score @s EMega matches 1.. run scoreboard players set @s EMAirChest 1
execute as @a run execute as @s if score @s EMAirChest matches 1.. run title @s actionbar {"text":"You can't bare to take another bite","color":"yellow"}
execute as @a run execute as @s at @s unless entity @e[tag=gas1,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas1"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @a run execute as @s at @s unless entity @e[tag=gas2,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas2"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @a run execute as @s at @s unless entity @e[tag=gas3,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas3"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @a run execute as @s at @s unless entity @e[tag=gas4,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas4"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @a run execute as @s at @s unless entity @e[tag=gas5,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas5"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @a run execute as @s at @s unless entity @e[tag=gas6,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas6"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @a run execute as @s at @s unless entity @e[tag=gas7,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas7"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @a run execute as @s at @s unless entity @e[tag=gas8,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas8"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @a run execute as @s at @s unless entity @e[tag=gas9,distance=0..1] if score @s EMAirChest matches 1 run summon chest_minecart ~ ~1 ~ {Tags:["gas9"],DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoGravity:1,CustomName:"\"Golden Apple Sickness\""}
execute as @p if score @s EMtime matches 41 run execute as @a run execute as @s if score @s EMega matches 1.. run scoreboard players operation @s EMgatimer += @s EMrunOnce
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run scoreboard players reset @s EMsetOnce
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas1,distance=0..1] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas2,distance=0..1] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas3,distance=0..1] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas4,distance=0..1] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas5,distance=0..1] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas6,distance=0..1] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas7,distance=0..1] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas8,distance=0..1] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run teleport @e[tag=gas9,distance=0..1] ~ -256 ~
execute as @e[tag=gas1] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @e[tag=gas2] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @e[tag=gas3] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @e[tag=gas4] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @e[tag=gas5] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @e[tag=gas6] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @e[tag=gas7] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @e[tag=gas8] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @e[tag=gas9] at @s unless entity @e[type=player,distance=0..1] run teleport @s ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas1] ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas2] ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas3] ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas4] ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas5] ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas6] ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas7] ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas8] ~ -256 ~
execute as @a run execute as @s if score @s EMAirChest matches 0 run teleport @e[tag=gas9] ~ -256 ~
execute as @a run execute as @s if score @s EMgatimer matches ..0 if score @s EMega matches 1.. run scoreboard players reset @s EMega
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas1,distance=0..1] ~1 ~1 ~
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas2,distance=0..1] ~1 ~1 ~1
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas3,distance=0..1] ~ ~1 ~1
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas4,distance=0..1] ~-1 ~1 ~
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas5,distance=0..1] ~-1 ~1 ~-1
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas6,distance=0..1] ~ ~1 ~-1
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas7,distance=0..1] ~1 ~1 ~-1
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas8,distance=0..1] ~-1 ~1 ~1
execute as @a at @s if score @s EMgatimer matches 0..15 if score @s EMAirChest matches 1 run teleport @e[tag=gas9,distance=0..1] ~ ~1 ~
