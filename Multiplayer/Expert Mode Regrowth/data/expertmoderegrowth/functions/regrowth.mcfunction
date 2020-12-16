# Saplings plant themselves
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ minecraft:air run tag @s add oak
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air run tag @s add oak
execute as @e[tag=oak] at @s run setblock ~ ~ ~ minecraft:oak_sapling replace
execute as @e[tag=oak] at @s if block ~ ~ ~ minecraft:oak_sapling run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ minecraft:air run tag @s add spruce
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air run tag @s add spruce
execute as @e[tag=spruce] at @s run setblock ~ ~ ~ minecraft:spruce_sapling replace
execute as @e[tag=spruce] at @s if block ~ ~ ~ minecraft:spruce_sapling run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:birch_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ minecraft:air run tag @s add birch
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air run tag @s add birch
execute as @e[tag=birch] at @s run setblock ~ ~ ~ minecraft:birch_sapling replace
execute as @e[tag=birch] at @s if block ~ ~ ~ minecraft:birch_sapling run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ minecraft:air run tag @s add jungle
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air run tag @s add jungle
execute as @e[tag=jungle] at @s run setblock ~ ~ ~ minecraft:jungle_sapling replace
execute as @e[tag=jungle] at @s if block ~ ~ ~ minecraft:jungle_sapling run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ minecraft:air run tag @s add acacia
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air run tag @s add acacia
execute as @e[tag=acacia] at @s run setblock ~ ~ ~ minecraft:acacia_sapling replace
execute as @e[tag=acacia] at @s if block ~ ~ ~ minecraft:acacia_sapling run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ minecraft:air run tag @s add dark_oak
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sapling"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air run tag @s add dark_oak
execute as @e[tag=dark_oak] at @s run setblock ~ ~ ~ minecraft:dark_oak_sapling replace
execute as @e[tag=dark_oak] at @s if block ~ ~ ~ minecraft:dark_oak_sapling run kill @s

# Mushrooms plant themselves on mycelium

execute as @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:mycelium if block ~ ~ ~ minecraft:air run tag @s add brown_mushroom
execute as @e[tag=brown_mushroom] at @s run setblock ~ ~ ~ minecraft:brown_mushroom replace
execute as @e[tag=brown_mushroom] at @s if block ~ ~ ~ minecraft:brown_mushroom run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:red_mushroom"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:mycelium if block ~ ~ ~ minecraft:air run tag @s add red_mushroom
execute as @e[tag=red_mushroom] at @s run setblock ~ ~ ~ minecraft:red_mushroom replace
execute as @e[tag=red_mushroom] at @s if block ~ ~ ~ minecraft:red_mushroom run kill @s

# Fungi plant themselves on nylium, mycelium, grassblocks, dirt, course dirt, podzol, farmland, and soul soil

execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:mycelium if block ~ ~ ~ minecraft:air run tag @s add crimson_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:crimson_nylium if block ~ ~ ~ minecraft:air run tag @s add crimson_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ minecraft:air run tag @s add crimson_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air run tag @s add crimson_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:podzol if block ~ ~ ~ minecraft:air run tag @s add crimson_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:soul_soil if block ~ ~ ~ minecraft:air run tag @s add crimson_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:farmland if block ~ ~ ~ minecraft:air run tag @s add crimson_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:coarse_dirt if block ~ ~ ~ minecraft:air run tag @s add crimson_fungus
execute as @e[tag=crimson_fungus] at @s run setblock ~ ~ ~ minecraft:crimson_fungus replace
execute as @e[tag=crimson_fungus] at @s if block ~ ~ ~ minecraft:crimson_fungus run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:mycelium if block ~ ~ ~ minecraft:air run tag @s add warped_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:warped_nylium if block ~ ~ ~ minecraft:air run tag @s add warped_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ minecraft:air run tag @s add warped_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air run tag @s add warped_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:podzol if block ~ ~ ~ minecraft:air run tag @s add warped_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:soul_soil if block ~ ~ ~ minecraft:air run tag @s add warped_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:farmland if block ~ ~ ~ minecraft:air run tag @s add warped_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:coarse_dirt if block ~ ~ ~ minecraft:air run tag @s add warped_fungus
execute as @e[tag=warped_fungus] at @s run setblock ~ ~ ~ minecraft:warped_fungus replace
execute as @e[tag=warped_fungus] at @s if block ~ ~ ~ minecraft:warped_fungus run kill @s

# Netherwart plant themselves on soulsand

execute as @e[type=item,nbt={Item:{id:"minecraft:nether_wart"},OnGround:1b,Age:500s}] at @s if block ~ ~-0.5 ~ minecraft:soul_sand if block ~ ~0.5 ~ minecraft:air run tag @s add nether_wart
execute as @e[tag=nether_wart] at @s run setblock ~ ~0.5 ~ minecraft:nether_wart replace
execute as @e[tag=nether_wart] at @s if block ~ ~0.5 ~ minecraft:nether_wart run kill @s

# Crops/Seeds plant themselves

execute as @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"},OnGround:1b,Age:500s}] at @s if block ~ ~-0.9 ~ minecraft:farmland if block ~ ~0.1 ~ minecraft:air run tag @s add wheat_seeds
execute as @e[tag=wheat_seeds] at @s run setblock ~ ~0.1 ~ minecraft:wheat replace
execute as @e[tag=wheat_seeds] at @s if block ~ ~0.1 ~ minecraft:wheat run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"},OnGround:1b,Age:500s}] at @s if block ~ ~-0.9 ~ minecraft:farmland if block ~ ~0.1 ~ minecraft:air run tag @s add beetroot_seeds
execute as @e[tag=beetroot_seeds] at @s run setblock ~ ~0.1 ~ minecraft:beetroots replace
execute as @e[tag=beetroot_seeds] at @s if block ~ ~0.1 ~ minecraft:beetroots run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:carrot"},OnGround:1b,Age:500s}] at @s if block ~ ~-0.9 ~ minecraft:farmland if block ~ ~0.1 ~ minecraft:air run tag @s add carrot
execute as @e[tag=carrot] at @s run setblock ~ ~0.1 ~ minecraft:carrots replace
execute as @e[tag=carrot] at @s if block ~ ~0.1 ~ minecraft:carrots run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:potato"},OnGround:1b,Age:500s}] at @s if block ~ ~-0.9 ~ minecraft:farmland if block ~ ~0.1 ~ minecraft:air run tag @s add potato
execute as @e[tag=potato] at @s run setblock ~ ~0.1 ~ minecraft:potatoes replace
execute as @e[tag=potato] at @s if block ~ ~0.1 ~ minecraft:potatoes run kill @s

# Grass and flowers spread

execute as @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"},OnGround:1b,Age:500s}] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air if block ~ ~-2 ~ minecraft:dirt if block ~ ~-3 ~ dirt run tag @s add bonemeal
execute as @e[tag=bonemeal,nbt={Age:510s}] at @s run setblock ~ ~-2 ~ minecraft:dispenser[facing=up]{Items:[{Slot:0b,id:"minecraft:bone_meal",Count:1b},{Slot:1b,id:"minecraft:bone_meal",Count:1b},{Slot:2b,id:"minecraft:bone_meal",Count:1b},{Slot:3b,id:"minecraft:bone_meal",Count:1b},{Slot:4b,id:"minecraft:bone_meal",Count:1b},{Slot:5b,id:"minecraft:bone_meal",Count:1b},{Slot:6b,id:"minecraft:bone_meal",Count:1b},{Slot:7b,id:"minecraft:bone_meal",Count:1b},{Slot:8b,id:"minecraft:bone_meal",Count:1b}]} replace
execute as @e[tag=bonemeal,nbt={Age:510s}] at @s run setblock ~ ~-3 ~ minecraft:redstone_block replace
execute as @e[tag=bonemeal,nbt={Age:520s}] at @s run setblock ~ ~-2 ~ minecraft:dirt replace
execute as @e[tag=bonemeal,nbt={Age:520s}] at @s run setblock ~ ~-3 ~ minecraft:dirt replace
execute as @e[tag=bonemeal,nbt={Age:520s}] run kill @s