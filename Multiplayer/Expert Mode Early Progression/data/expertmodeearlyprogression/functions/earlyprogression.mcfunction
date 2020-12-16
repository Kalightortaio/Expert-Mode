# Wooden Picks can't harvest stone and more!
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe",Count:1b}}] at @s run function expertmodeearlyprogression:woodpick

# Stone Picks are only slightly better
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pickaxe",Count:1b}}] at @s run function expertmodeearlyprogression:stonepick

# Hands / Non Picks can't harvest "pebbles"
execute as @a[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe",Count:1b}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe",Count:1b}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe",Count:1b}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b}},nbt=!{SelectedItem:{id:"minecraft:netherite_pickaxe",Count:1b}}] at @s run execute as @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:stone_button"},PickupDelay:10s,Age:0s}] run kill @s
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe",Count:1b}}] at @s run execute as @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:stone_button"},PickupDelay:10s,Age:0s}] run data merge entity @s {Item:{id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'{"text":"Pebble","italic":false}'}}}}
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pickaxe",Count:1b}}] at @s run execute as @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:stone_button"},PickupDelay:10s,Age:0s}] run data merge entity @s {Item:{id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'{"text":"Pebble","italic":false}'}}}}
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b}}] at @s run execute as @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:stone_button"},PickupDelay:10s,Age:0s}] run data merge entity @s {Item:{id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'{"text":"Pebble","italic":false}'}}}}
execute as @a[nbt={SelectedItem:{id:"minecraft:gold_pickaxe",Count:1b}}] at @s run execute as @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:stone_button"},PickupDelay:10s,Age:0s}] run data merge entity @s {Item:{id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'{"text":"Pebble","italic":false}'}}}}
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b}}] at @s run execute as @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:stone_button"},PickupDelay:10s,Age:0s}] run data merge entity @s {Item:{id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'{"text":"Pebble","italic":false}'}}}}
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",Count:1b}}] at @s run execute as @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:stone_button"},PickupDelay:10s,Age:0s}] run data merge entity @s {Item:{id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'{"text":"Pebble","italic":false}'}}}}

# Generate Pebbles
execute as @a run execute as @s[nbt={OnGround:1b}] at @s if score @p EMtime matches 61 in minecraft:overworld unless entity @e[tag=pebbleprocessed,distance=0..200] run function expertmodeearlyprogression:pebblegeneration