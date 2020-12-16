# Ghasts are tougher
execute if score @p EMtime matches 1 run execute as @e[type=minecraft:ghast] run effect give @s minecraft:resistance 5 3 true

# Stronger ghast fireballs
execute as @e[type=minecraft:fireball] at @s if entity @e[type=ghast,limit=1,distance=0..10] run data merge entity @s {ExplosionPower:4}
