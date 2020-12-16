# Witches can cast short range magic attacks!
execute as @e[type=minecraft:witch] at @e[type=minecraft:witch] unless entity @e[tag=spellcaster,distance=0..1] run data merge entity @s[distance=0..1] {Tags:["notspellcaster"],DeathLootTable:"minecraft:empty"}
execute at @e[tag=notspellcaster] unless entity @e[tag=spellcaster,distance=0..2] run summon minecraft:witch ~ ~ ~ {Tags:["spellcaster"],Passengers:[{id:"guardian",Tags:["spell"],ActiveEffects:[{Id:14,Amplifier:0,Duration:200000,ShowParticles:0b}],Silent:1,DeathLootTable:"minecraft:empty",Invulnerable:1}]}
execute at @e[type=minecraft:witch] unless entity @e[tag=spellcaster,distance=0..1] run kill @e[tag=notspellcaster,distance=0..1]
execute at @e[tag=spell] unless entity @e[tag=spellcaster,distance=0..2] run kill @e[tag=spell,distance=0..2]
