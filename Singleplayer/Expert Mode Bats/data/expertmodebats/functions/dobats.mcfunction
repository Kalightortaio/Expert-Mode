# Bats are no longer completely passive mobs, and will bite when close.
# Bats also have a 20% chance to drop different seeds.
execute as @e[type=minecraft:bat] at @e[type=minecraft:bat] unless entity @e[tag=bitingbat,distance=0..1] run data merge entity @s[distance=0..1] {Tags:["notbitingbat"],DeathLootTable:"minecraft:empty"}
execute at @e[tag=notbitingbat] unless entity @e[tag=bitingbat,distance=0..2] run summon minecraft:bat ~ ~ ~ {Tags:["bitingbat"],DeathLootTable:"expertmodebats:custombats",Passengers:[{id:"zombified_piglin",Tags:["bite"],ActiveEffects:[{Id:14,Amplifier:0,Duration:200000,ShowParticles:0b}],IsBaby:1,Anger:200000,Silent:1,DeathLootTable:"minecraft:empty",Invulnerable:1}]}
execute at @e[type=minecraft:bat] unless entity @e[tag=bitingbat,distance=0..1] run kill @e[tag=notbitingbat,distance=0..1]
execute at @e[tag=bite] unless entity @e[tag=bitingbat,distance=0..2] run kill @e[tag=bite,distance=0..2]
