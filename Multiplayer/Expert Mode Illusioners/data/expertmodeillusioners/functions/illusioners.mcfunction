# Illusioners are part of raids / mansions
execute as @e[type=minecraft:evoker,tag=!EMspawnIllu] at @s if entity @e[type=player,distance=0..10] run tag @s add EMspawnIllu
execute as @e[type=minecraft:ravager,tag=!EMspawnIllu] at @s if entity @e[type=player,distance=0..10] run tag @s add EMspawnIllu
execute as @e[tag=EMspawnIllu,tag=!EMspawnedIllu] at @s run summon minecraft:illusioner ~ ~ ~ {HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.max_health,Base:80},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:10}],Health:80.0f,DeathLootTable:"expertmodecore:illusioner"}
execute as @e[tag=EMspawnIllu,tag=!EMspawnedIllu] run tag @s add EMspawnedIllu