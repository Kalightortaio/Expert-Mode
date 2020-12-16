# Render the blackhole
execute as @e[tag=blackhole] at @s run tp @s ~ ~ ~ 0 -90
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 7..10 run function expertmodeunstableanomaly:draw_sphere2
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run function expertmodeunstableanomaly:draw_sphere

# Drag entities towards the blackhole
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 7..10 run function expertmodeunstableanomaly:suction2
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run function expertmodeunstableanomaly:suction

# Play sounds near blackhole, louder the closer you are to it.
execute as @a at @s if entity @e[tag=blackhole,distance=80..100] run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 0.5 0
execute as @a at @s if entity @e[tag=blackhole,distance=60..80] run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 1 0
execute as @a at @s if entity @e[tag=blackhole,distance=40..60] run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 2 0
execute as @a at @s if entity @e[tag=blackhole,distance=20..40] run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 4 0
execute as @a at @s if entity @e[tag=blackhole,distance=0..20] run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 10 0

# Blackhole physics
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute as @e[tag=bhgravity] run scoreboard players add @e[tag=blackhole] EMnumsuck 1
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=blackhole] align xz unless score @e[tag=blackhole,limit=1,sort=arbitrary] EMnumsuck matches 20.. run summon minecraft:armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bhgravity"]}
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run scoreboard players set @e[tag=blackhole] EMnumsuck 0
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=blackhole] run spreadplayers ~ ~ 0 10 false @e[tag=bhgravity]
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute as @e[tag=bhgravity] run execute as @s at @s if entity @e[tag=blackhole,distance=10..] run kill @s
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=bhgravity] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ air replace
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=bhgravity] run fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 blue_ice replace seagrass
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=bhgravity] run fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 blue_ice replace tall_seagrass
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=bhgravity] run fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 blue_ice replace kelp_plant
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=bhgravity] run fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 blue_ice replace water
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=bhgravity] run fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 magma_block replace lava
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=blackhole] unless block ~ ~-8 ~ bedrock run setblock ~ ~-8 ~ air replace
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=blackhole] unless block ~ ~-9 ~ bedrock run setblock ~ ~-9 ~ air replace
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches 0..6 run execute at @e[tag=blackhole] unless block ~ ~-10 ~ bedrock run setblock ~ ~-10 ~ air replace

# Kill blackhole
execute if score @p EMtime matches 1 run scoreboard players operation @e[tag=blackhole] EMbhlife -= @p EMtime
execute as @e[tag=blackhole] at @s if score @s EMbhlife matches ..0 run function expertmodeunstableanomaly:kill_bh

#/summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:grass_block"},NoGravity:1b,Time:1}
# Before setblock, get name of block -> falling_block -> black hole eats falling_block