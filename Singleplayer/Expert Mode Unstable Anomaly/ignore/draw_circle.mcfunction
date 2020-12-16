particle squid_ink ^ ^ ^2 0 0 0 0 1 force

setblock ^ ^ ^ air replace
execute unless block ^ ^ ^1 bedrock run setblock ^ ^ ^1 air replace
execute unless block ^ ^ ^2 bedrock run setblock ^ ^ ^2 air replace
execute unless block ^ ^ ^3 bedrock run setblock ^ ^ ^3 air replace
execute unless block ^ ^ ^4 bedrock run setblock ^ ^ ^4 air replace
execute unless block ^ ^ ^5 bedrock run setblock ^ ^ ^5 air replace
execute unless block ^ ^ ^6 bedrock run setblock ^ ^ ^6 air replace
execute unless block ^ ^ ^7 bedrock run setblock ^ ^ ^7 air replace

execute if predicate expertmodecore:blackhole if score @e[tag=blackhole,limit=1] EMbhlife matches 0.. positioned ~ ~1.5 ~ positioned ^ ^ ^2.2 run function expertmodecore:blockraycast

tp @s ~ ~ ~ ~5 ~
execute unless entity @s[y_rotation=0..4] at @s run function expertmodeunstableanomaly:draw_circle