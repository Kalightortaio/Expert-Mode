# 1. Summon 100 - 200 armor stands, if area hasn't been processed yet
# 2. Spread armor stands around player
# 3. Check for grass blocks and air to spawn rocks
# 4. Use predicate to make half of spawn pebbles to face perpendicular directions
# 5. Summon processed armor stand to stop future spawning
# 6. Kill functions
# 7. Repeat for higher density
summon armor_stand ~ 64 ~ {Tags:["pebbleprocessed"],Invulnerable:1b,Invisible:1b}
function expertmodeearlyprogression:summon
spreadplayers ~ ~ 20 200 false @e[tag=findgrass]
function expertmodeearlyprogression:settle
function expertmodeearlyprogression:foundgrass
kill @e[tag=findgrass,tag=!foundgrass]
execute as @e[tag=foundgrass] if predicate expertmodeearlyprogression:rotation run tag @s add fgnorth 
execute at @e[tag=foundgrass,tag=fgnorth] run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=north]
execute at @e[tag=foundgrass,tag=!fgnorth] run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=east]
kill @e[tag=foundgrass]
function expertmodeearlyprogression:summon
spreadplayers ~ ~ 20 200 false @e[tag=findgrass]
function expertmodeearlyprogression:settle
function expertmodeearlyprogression:foundgrass
kill @e[tag=findgrass,tag=!foundgrass]
execute as @e[tag=foundgrass] if predicate expertmodeearlyprogression:rotation run tag @s add fgnorth 
execute at @e[tag=foundgrass,tag=fgnorth] run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=north]
execute at @e[tag=foundgrass,tag=!fgnorth] run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=east]
kill @e[tag=foundgrass]
function expertmodeearlyprogression:summon
spreadplayers ~ ~ 20 200 false @e[tag=findgrass]
function expertmodeearlyprogression:settle
function expertmodeearlyprogression:foundgrass
kill @e[tag=findgrass,tag=!foundgrass]
execute as @e[tag=foundgrass] if predicate expertmodeearlyprogression:rotation run tag @s add fgnorth 
execute at @e[tag=foundgrass,tag=fgnorth] run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=north]
execute at @e[tag=foundgrass,tag=!fgnorth] run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=east]
kill @e[tag=foundgrass]