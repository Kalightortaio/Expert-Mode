# Sets players who are in creative to maximum EMthirsty, so no ill effects are had.
execute as @p[gamemode=creative] unless score @s EMthirsty matches 1120.. run scoreboard players set @s EMthirsty 1120

#Sets player variables
scoreboard players set @p EMnumFirst 30
scoreboard players set @p EMnumSecond 15
scoreboard players set @p EMnumThird 30
scoreboard players set @p EMnumFourth 45
scoreboard players set @p EMnumFifth 60
scoreboard players set @p EMnumSixth 75
scoreboard players set @p EMnumSeventh 90
scoreboard players set @p EMnumEighth 105
scoreboard players set @p EMnumNineth 120
scoreboard players set @p EMnumEighty 80
scoreboard players set @p EMrunOnce -1

# If someone joins the world for the first time, it sets their EMthirsty to maximum, 
execute as @p unless score @s EMthirsty > @s EMrunOnce run scoreboard players set @s EMhasDrunkPotion 0
execute as @p unless score @s EMthirsty > @s EMrunOnce run give @s glass_bottle 1

# If someone dies, their score is reset to just below Hydrated.
execute as @p if score @s EMrespawn matches 1 run scoreboard players set @s EMthirsty 796

# These functions remove EMthirsty every four seconds, or every one second in the nether. It stops when EMthirsty reaches absolute zero. The player should be long dead before this, however.
execute as @p if score @s EMthirsty matches 1.. run scoreboard players set @s EMbooleanStop 0
execute as @p[gamemode=!creative] if score @s EMtime matches 1 run execute unless score @s EMbooleanStop matches 1 run scoreboard players operation @s EMthirsty += @s EMrunOnce
execute as @p[gamemode=!creative] at @p if score @s EMtime matches 21 if block ~ 127 ~ bedrock run execute unless score @s EMbooleanStop matches 1 run scoreboard players operation @s EMthirsty += @s EMrunOnce
execute as @p[gamemode=!creative] at @p if score @s EMtime matches 41 if block ~ 127 ~ bedrock run execute unless score @s EMbooleanStop matches 1 run scoreboard players operation @s EMthirsty += @s EMrunOnce
execute as @p[gamemode=!creative] at @p if score @s EMtime matches 61 if block ~ 127 ~ bedrock run execute unless score @s EMbooleanStop matches 1 run scoreboard players operation @s EMthirsty += @s EMrunOnce

# This is how the AFK anti-thirst system works. If a player does not move using input for more than twenty seconds, they are given an postive point in EMthirsty.
execute as @p if score @s EMtime matches 1 unless score @s EMisMoving matches 0 run scoreboard players operation @s EMisMoving += @s EMrunOnce
execute as @p if score @s EMtime matches 1 run scoreboard players operation @s EMtempMove = @s EMwalkstat
execute as @p if score @s EMtime matches 2 unless score @s EMwalkstat = @s EMtempMove run scoreboard players set @s EMisMoving 5
execute as @p if score @s EMtime matches 3 run scoreboard players operation @s EMtempMove = @s EMsprintstat
execute as @p if score @s EMtime matches 4 unless score @s EMsprintstat = @s EMtempMove run scoreboard players set @s EMisMoving 5
execute as @p if score @s EMtime matches 5 run scoreboard players operation @s EMtempMove = @s EMswimstat
execute as @p if score @s EMtime matches 6 unless score @s EMswimstat = @s EMtempMove run scoreboard players set @s EMisMoving 5
execute as @p if score @s EMtime matches 7 run scoreboard players operation @s EMtempMove = @s EMflystat
execute as @p if score @s EMtime matches 8 unless score @s EMflystat = @s EMtempMove run scoreboard players set @s EMisMoving 5
execute as @p if score @s EMtime matches 9 run scoreboard players operation @s EMtempMove = @s EMsneakstat
execute as @p if score @s EMtime matches 10 unless score @s EMsneakstat = @s EMtempMove run scoreboard players set @s EMisMoving 5
execute as @p if score @s EMtime matches 11 run scoreboard players operation @s EMtempMove = @s EMjumpstat
execute as @p if score @s EMtime matches 12 unless score @s EMjumpstat = @s EMtempMove run scoreboard players set @s EMisMoving 5
execute as @p[gamemode=!creative] if score @s EMtime matches 1 if score @s EMisMoving matches 0 unless score @s EMbooleanStop matches 1 run scoreboard players operation @s EMthirsty -= @s EMrunOnce
execute as @p[gamemode=!creative] at @p if score @s EMtime matches 21 if score @s EMisMoving matches 0 if block ~ 127 ~ bedrock unless score @s EMbooleanStop matches 1 run scoreboard players operation @s EMthirsty -= @s EMrunOnce
execute as @p[gamemode=!creative] at @p if score @s EMtime matches 41 if score @s EMisMoving matches 0 if block ~ 127 ~ bedrock unless score @s EMbooleanStop matches 1 run scoreboard players operation @s EMthirsty -= @s EMrunOnce
execute as @p[gamemode=!creative] at @p if score @s EMtime matches 61 if score @s EMisMoving matches 0 if block ~ 127 ~ bedrock unless score @s EMbooleanStop matches 1 run scoreboard players operation @s EMthirsty -= @s EMrunOnce

# EMthirst is used to calculate what level someone is in.
execute as @p run scoreboard players operation @s EMthirst = @s EMthirsty
execute as @p run scoreboard players operation @s EMthirst /= @s EMnumEighty

# Tests if someone is holding an item that should bring up the EMthirst system in the gui.
scoreboard players set @p EMtestForDrink 0
execute as @p[nbt={SelectedItem:{id:"minecraft:potion"}}] run scoreboard players add @s EMtestForDrink 1
execute as @p[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run scoreboard players add @s EMtestForDrink 1
execute as @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]}] run scoreboard players add @s EMtestForDrink 1
execute as @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]}] run scoreboard players add @s EMtestForDrink 1

# Gives the player a standard water bottle.
execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}},nbt=!{SelectedItem:{id:"minecraft:potion",tag:{EMthirsty:1}}}] run replaceitem entity @s weapon.mainhand minecraft:potion{display:{Name:"{\"text\":\"Dirty Water Bottle (4/4)\",\"color\":\"blue\",\"italic\":false}"},EMthirsty:1,amount:4,type:1,Potion:"minecraft:water"}

# The part where we calculate how much points to add to EMthirsty, depending on the player's status effects. EMnumFirst is always added.
execute as @p if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumFirst
execute as @p[nbt={ActiveEffects:[{Id:4b,Amplifier:12b}]}] if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumSecond
execute as @p[nbt={ActiveEffects:[{Id:4b,Amplifier:13b}]}] if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumThird
execute as @p[nbt={ActiveEffects:[{Id:4b,Amplifier:14b}]}] if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumFourth
execute as @p[nbt={ActiveEffects:[{Id:4b,Amplifier:15b}]}] if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumFifth
execute as @p[nbt={ActiveEffects:[{Id:4b,Amplifier:16b}]}] if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumSixth
execute as @p[nbt={ActiveEffects:[{Id:4b,Amplifier:17b}]}] if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumSeventh
execute as @p[nbt={ActiveEffects:[{Id:4b,Amplifier:18b}]}] if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumEighth
execute as @p[nbt={ActiveEffects:[{Id:4b,Amplifier:19b}]}] if score @s EMhasDrunkPotion matches 1.. run scoreboard players operation @s EMthirsty += @s EMnumNineth

# If player is not holding potion, then set array to -1, so functions are not called to check array
#execute as @p[nbt=!{SelectedItem:{id:"minecraft:potion"}}] if score @s EMhasDrunkPotion matches 0 run scoreboard players set @s EMarrayTemp -1
# If player is holding a potion, and only if array is -1, then check array once
#execute as @p[nbt={SelectedItem:{id:"minecraft:potion"}}] if score @s EMarrayTemp matches -1 run function expertmodethirstsystem:holddrink
# If player is holding a potion after just drinking a potion, array table can be checked again
execute as @p if score @s EMtime matches 21 run function expertmodethirstsystem:holddrink
execute as @p if score @s EMtime matches 61 run function expertmodethirstsystem:holddrink
# If potion was drunk, give new potion if applicable
execute as @p if score @s EMhasDrunkPotion matches 1.. run function expertmodethirstsystem:drinks

# Sated, Hydrated, Thoroughly Hydrated
execute as @p if score @s EMthirst matches 13 run gamerule naturalRegeneration true
execute as @p if score @s EMthirst matches 12 run gamerule naturalRegeneration true
execute as @p if score @s EMthirst matches 11 run gamerule naturalRegeneration true
execute as @p if score @s EMthirst matches 10 run gamerule naturalRegeneration true
execute as @p if score @s EMthirst matches 9 run gamerule naturalRegeneration true
execute as @p if score @s EMthirst matches 8 run gamerule naturalRegeneration true

# EMthirsty
execute as @p if score @s EMthirst matches 7 run gamerule naturalRegeneration false
execute as @p if score @s EMthirst matches 6 run gamerule naturalRegeneration false

# Dehydrated
execute as @p if score @s EMthirst matches 5 run gamerule naturalRegeneration false
execute as @p if score @s EMthirst matches 4 run gamerule naturalRegeneration false
execute as @p if score @s EMthirst matches 5 run effect give @s minecraft:slowness 1 0 true
execute as @p if score @s EMthirst matches 4 run effect give @s minecraft:slowness 1 0 true

# Parched
execute as @p if score @s EMthirst matches 3 run gamerule naturalRegeneration false
execute as @p if score @s EMthirst matches 2 run gamerule naturalRegeneration false
execute as @p if score @s EMthirst matches 3 run effect give @s minecraft:slowness 1 0 true
execute as @p if score @s EMthirst matches 2 run effect give @s minecraft:slowness 1 0 true
execute as @p if score @s EMthirst matches 3 run effect give @s minecraft:mining_fatigue 1 0 true
execute as @p if score @s EMthirst matches 2 run effect give @s minecraft:mining_fatigue 1 0 true

# Withered
execute as @p if score @s EMthirst matches 1 run gamerule naturalRegeneration false
execute as @p if score @s EMthirst matches 0 run gamerule naturalRegeneration false
execute as @p if score @s EMthirst matches 1 run effect give @s minecraft:slowness 1 0 true
execute as @p if score @s EMthirst matches 0 run effect give @s minecraft:slowness 1 0 true
execute as @p if score @s EMthirst matches 1 run effect give @s minecraft:mining_fatigue 1 0 true
execute as @p if score @s EMthirst matches 0 run effect give @s minecraft:mining_fatigue 1 0 true
execute as @p if score @s EMthirst matches 1 if score @p EMtime matches 1 run effect give @s wither 5 0 true
execute as @p if score @s EMthirst matches 0 if score @p EMtime matches 1 run effect give @s wither 5 0 true

# The minimalist GUI
execute as @p if score @s EMtestForDrink matches 1 unless score @p EMisHoldingDrink matches 1..2 run scoreboard players add @s EMisHoldingDrink 1
execute as @p at @p if score @s EMisHoldingDrink matches 1 run playsound minecraft:item.bottle.fill master @s
execute as @p if score @s EMisHoldingDrink matches 1 run scoreboard players add @s EMisHoldingDrink 1
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 14 run title @s actionbar {"text":"Thoroughly Hydrated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 13 run title @s actionbar {"text":"Thoroughly Hydrated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 12 run title @s actionbar {"text":"Thoroughly Hydrated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 11 run title @s actionbar {"text":"Hydrated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 10 run title @s actionbar {"text":"Hydrated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 9 run title @s actionbar {"text":"Sated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 8 run title @s actionbar {"text":"Sated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 7 run title @s actionbar {"text":"Thirsty","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 6 run title @s actionbar {"text":"Thirsty","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 5 run title @s actionbar {"text":"Parched","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 4 run title @s actionbar {"text":"Parched","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 3 run title @s actionbar {"text":"Dehydrated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 2 run title @s actionbar {"text":"Dehydrated","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 1 run title @s actionbar {"text":"Withered","color":"blue"}
execute as @p if score @s EMisHoldingDrink matches 2 if score @s EMthirst matches 0 run title @s actionbar {"text":"Withered","color":"blue"}
execute as @p if score @s EMtestForDrink matches 0 if score @p EMisHoldingDrink matches 2.. run scoreboard players reset @s EMisHoldingDrink
execute as @p at @p if score @s EMthirsty matches 1121.. run playsound minecraft:entity.player.burp master @s
execute as @p at @p if score @s EMthirsty matches 1121.. run scoreboard players set @s EMthirsty 1120
execute as @p if score @s EMthirsty matches 0 run scoreboard players set @s EMbooleanStop 1

# Replace the crafted items
execute as @p[gamemode=!creative] run clear @s minecraft:pig_spawn_egg 1
execute as @p if score @s EMthirstyTwo matches 1.. run give @s minecraft:potion{EMthirsty:1,amount:4,type:2,CustomPotionEffects:[{Id:4b,Duration:20,Amplifier:12b,ShowParticles:0b}],CustomPotionColor:2441680,display:{Name:"{\"text\":\"Filtered Water (4/4)\",\"color\":\"blue\",\"italic\":false}"}}
execute as @p run scoreboard players set @s EMthirstyTwo 0

execute as @p[gamemode=!creative] run clear @s minecraft:cow_spawn_egg 1
execute as @p if score @s EMthirstyThree matches 1.. run give @s minecraft:potion{EMthirsty:1,amount:4,type:3,CustomPotionEffects:[{Id:4b,Duration:20,Amplifier:13b,ShowParticles:0b}],CustomPotionColor:2441680,display:{Name:"{\"text\":\"Fresh Water (4/4)\",\"color\":\"blue\",\"italic\":false}"}}
execute as @p run scoreboard players set @s EMthirstyThree 0

execute as @p[gamemode=!creative] run clear @s minecraft:ocelot_spawn_egg 1
execute as @p if score @s EMthirstyFour matches 1.. run give @s minecraft:potion{EMthirsty:1,amount:4,type:4,CustomPotionEffects:[{Id:4b,Duration:20,Amplifier:14b,ShowParticles:0b}],CustomPotionColor:2441680,display:{Name:"{\"text\":\"Chilled Water (4/4)\",\"color\":\"blue\",\"italic\":false}"}}
execute as @p run scoreboard players set @s EMthirstyFour 0

execute as @p[gamemode=!creative] run clear @s minecraft:wolf_spawn_egg 1
execute as @p if score @s EMthirstyFive matches 1.. run give @s minecraft:potion{EMthirsty:1,amount:4,type:5,CustomPotionEffects:[{Id:4b,Duration:20,Amplifier:15b,ShowParticles:0b}],CustomPotionColor:2441680,display:{Name:"{\"text\":\"Cold Water (4/4)\",\"color\":\"blue\",\"italic\":false}"}}
execute as @p run scoreboard players set @s EMthirstyFive 0

execute as @p[gamemode=!creative] run clear @s minecraft:llama_spawn_egg 1
execute as @p if score @s EMthirstySix matches 1.. run give @s minecraft:potion{EMthirsty:1,amount:8,type:6,CustomPotionEffects:[{Id:4b,Duration:20,Amplifier:16b,ShowParticles:0b}],CustomPotionColor:2441680,display:{Name:"{\"text\":\"Pure Water (8/8)\",\"color\":\"blue\",\"italic\":false}"}}
execute as @p run scoreboard players set @s EMthirstySix 0

execute as @p[gamemode=!creative] run clear @s minecraft:chicken_spawn_egg 1
execute as @p if score @s EMthirstySeven matches 1.. run give @s minecraft:potion{EMthirsty:1,amount:16,type:7,CustomPotionEffects:[{Id:4b,Duration:20,Amplifier:17b,ShowParticles:0b}],CustomPotionColor:2441680,display:{Name:"{\"text\":\"Purest Water (16/16)\",\"color\":\"blue\",\"italic\":false}"}}
execute as @p run scoreboard players set @s EMthirstySeven 0

execute as @p[gamemode=!creative] run clear @s minecraft:mooshroom_spawn_egg 1
execute as @p if score @s EMthirstyEight matches 1.. run give @s minecraft:potion{EMthirsty:1,amount:16,type:8,CustomPotionEffects:[{Id:4b,Duration:20,Amplifier:18b,ShowParticles:0b}],CustomPotionColor:2441680,display:{Name:"{\"text\":\"Enchanted Water (16/16)\",\"color\":\"light_purple\",\"italic\":false}"}}
execute as @p run scoreboard players set @s EMthirstyEight 0

execute as @p[gamemode=!creative] run clear @s minecraft:salmon_spawn_egg 1
execute as @p if score @s EMthirstyNine matches 1.. run give @s minecraft:potion{EMthirsty:1,amount:128,type:9,CustomPotionEffects:[{Id:4b,Duration:20,Amplifier:19b,ShowParticles:0b}],CustomPotionColor:2441680,display:{Name:"{\"text\":\"Flask of Undying (128/128)\",\"color\":\"light_purple\",\"italic\":false}"}}
execute as @p run scoreboard players set @s EMthirstyNine 0
