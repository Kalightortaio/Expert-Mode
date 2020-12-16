execute as @a run execute if score @s EMtestforCrossbo matches 1.. at @s run tag @e[type=arrow,distance=..3] add cMarker
execute as @a run execute if score @s EMtestforCrossbo matches 1.. as @s[nbt={Inventory:[{id:"minecraft:tnt",Slot:-106b}]}] run tag @e[tag=cMarker] add cTNT
execute as @a run execute if score @s EMtestforCrossbo matches 1.. if entity @e[tag=cTNT] run clear @s minecraft:tnt 1
execute as @a run execute if score @s EMtestforCrossbo matches 1.. as @s[nbt={Inventory:[{id:"minecraft:fire_charge",Slot:-106b}]}] run tag @e[tag=cMarker] add cFire
execute as @a run execute if score @s EMtestforCrossbo matches 1.. if entity @e[tag=cFire] run clear @s minecraft:fire_charge 1
execute as @a run execute if score @s EMtestforCrossbo matches 1.. as @s[nbt={Inventory:[{id:"minecraft:ender_pearl",Slot:-106b}]}] run tag @e[tag=cMarker] add cEnder
execute as @a run execute if score @s EMtestforCrossbo matches 1.. if entity @e[tag=cEnder] run clear @s minecraft:ender_pearl 1
execute as @a run execute if score @s EMtestforCrossbo matches 1.. if entity @e[tag=cEnder] run tag @s add cEndered
execute as @a run execute if score @s EMtestforCrossbo matches 1.. as @s[nbt={Inventory:[{id:"minecraft:cobweb",Slot:-106b}]}] run tag @e[tag=cMarker] add cWeb
execute as @a run execute if score @s EMtestforCrossbo matches 1.. if entity @e[tag=cWeb] run clear @s minecraft:cobweb 1
execute as @a run execute if score @s EMtestforCrossbo matches 1.. run scoreboard players reset @s EMtestforCrossbo

# TNT Arrows
execute as @e[tag=cTNT,nbt={inGround:1b}] at @s run summon tnt ~ ~ ~ {Fuse:0}
execute as @e[tag=cTNT,nbt={inGround:1b}] run kill @s

# Fire Arrows
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~-1 ~1 ~-1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~-1 ~1 ~ minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~-1 ~1 ~1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~ ~1 ~-1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~ ~1 ~ minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~ ~1 ~1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~1 ~1 ~-1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~1 ~1 ~ minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~1 ~1 ~1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~-1 ~ ~-1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~-1 ~ ~ minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~-1 ~ ~1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~ ~ ~-1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~ ~ ~ minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~ ~ ~1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~1 ~ ~-1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~1 ~ ~ minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] at @s run setblock ~1 ~ ~1 minecraft:fire keep
execute as @e[tag=cFire,nbt={inGround:1b}] run kill @s

# Ender Arrows
execute as @e[tag=cEnder,nbt={inGround:1b}] at @s run tp @e[tag=cEndered,limit=1,sort=nearest,distance=0..500] @s
execute as @e[tag=cEnder,nbt={inGround:1b}] run execute as @e[type=player,distance=0..500,limit=1,sort=nearest] at @s run playsound minecraft:entity.enderman.teleport block @s ~ ~ ~ 1 1
execute as @e[tag=cEnder,nbt={inGround:1b}] at @s unless entity @e[tag=cEnder,nbt={inGround:0b},distance=0..2000] run tag @e[tag=cEndered,limit=1,sort=nearest,distance=0..500] remove cEndered
execute as @e[tag=cEnder,nbt={inGround:1b}] run kill @s

# Webbed Arrows
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~-1 ~1 ~-1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~-1 ~1 ~ minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~-1 ~1 ~1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~ ~1 ~-1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~ ~1 ~ minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~ ~1 ~1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~1 ~1 ~-1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~1 ~1 ~ minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~1 ~1 ~1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~-1 ~ ~-1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~-1 ~ ~ minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~-1 ~ ~1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~ ~ ~-1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~ ~ ~ minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~ ~ ~1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~1 ~ ~-1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~1 ~ ~ minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] at @s run setblock ~1 ~ ~1 minecraft:cobweb keep
execute as @e[tag=cWeb,nbt={inGround:1b}] run kill @s