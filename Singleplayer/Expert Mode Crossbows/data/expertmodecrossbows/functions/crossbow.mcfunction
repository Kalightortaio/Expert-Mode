execute if score @p EMtestforCrossbo matches 1.. at @p run tag @e[type=arrow,distance=..3] add cMarker
execute if score @p EMtestforCrossbo matches 1.. as @p[nbt={Inventory:[{id:"minecraft:tnt",Slot:-106b}]}] run tag @e[tag=cMarker] add cTNT
execute if score @p EMtestforCrossbo matches 1.. if entity @e[tag=cTNT] run clear @p minecraft:tnt 1
execute if score @p EMtestforCrossbo matches 1.. as @p[nbt={Inventory:[{id:"minecraft:fire_charge",Slot:-106b}]}] run tag @e[tag=cMarker] add cFire
execute if score @p EMtestforCrossbo matches 1.. if entity @e[tag=cFire] run clear @p minecraft:fire_charge 1
execute if score @p EMtestforCrossbo matches 1.. as @p[nbt={Inventory:[{id:"minecraft:ender_pearl",Slot:-106b}]}] run tag @e[tag=cMarker] add cEnder
execute if score @p EMtestforCrossbo matches 1.. if entity @e[tag=cEnder] run clear @p minecraft:ender_pearl 1
execute if score @p EMtestforCrossbo matches 1.. as @p[nbt={Inventory:[{id:"minecraft:cobweb",Slot:-106b}]}] run tag @e[tag=cMarker] add cWeb
execute if score @p EMtestforCrossbo matches 1.. if entity @e[tag=cWeb] run clear @p minecraft:cobweb 1
execute if score @p EMtestforCrossbo matches 1.. run scoreboard players reset @p EMtestforCrossbo

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
execute as @e[tag=cEnder,nbt={inGround:1b}] at @s run tp @p @s
execute as @e[tag=cEnder,nbt={inGround:1b}] run execute as @p at @s run playsound minecraft:entity.enderman.teleport block @s ~ ~ ~ 1 1
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