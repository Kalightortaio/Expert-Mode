# Spawn Zombie Horses when regular horses die
execute as @s at @s run summon minecraft:zombie_horse ~ ~ ~ {Tame:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20,ShowParticles:0b}]}
execute as @s at @s run spreadplayers ~ ~ 1 1 false @e[type=zombie_horse,distance=0..1]
advancement revoke @s only expertmodeundeadhorses:horsedeath