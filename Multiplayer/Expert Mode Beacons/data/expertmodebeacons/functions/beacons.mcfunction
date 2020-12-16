# Custom Beacons
execute as @a if score @s EMbeaconPlaced matches 1.. run function expertmodebeacons:beacondet
execute as @e[tag=beacon] at @s unless block ~ ~ ~ beacon run kill @s

# Beacons prevent mobs from spawning within their radius (128 blocks), if all players are present. Might cause lag... untested.
execute as @a at @s if entity @e[tag=beacon,distance=..128] run gamerule doMobSpawning false
execute as @a at @s if score @p EMtime matches 1 if entity @e[tag=beacon,distance=..128] run effect give @s minecraft:luck 21 9 true
execute as @a at @s unless entity @e[tag=beacon,distance=..128] run gamerule doMobSpawning true