particle squid_ink ^ ^ ^1 0 0 0 0 1 force

setblock ^ ^ ^ air replace

tp @s ~ ~ ~ ~5 ~
execute unless entity @s[y_rotation=0..4] at @s run function expertmodeunstableanomaly:draw_circle2