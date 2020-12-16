# Do damage tinting (Screen becomes red as you take damage).
scoreboard players set @p EMtotalHP 20
execute as @p if score @s EMfullLeather matches 2 run scoreboard players set @s EMtotalHP 24
execute as @p if score @s EMfullLeatherE matches 2 run scoreboard players set @s EMtotalHP 24
execute as @p if score @s EMfullChainmail matches 2 run scoreboard players set @s EMtotalHP 28
execute as @p if score @s EMfullChainmailE matches 2 run scoreboard players set @s EMtotalHP 28
execute as @p if score @s EMfullGolden matches 2 run scoreboard players set @s EMtotalHP 32
execute as @p if score @s EMfullGoldenE matches 2 run scoreboard players set @s EMtotalHP 32
execute as @p if score @s EMfullIron matches 2 run scoreboard players set @s EMtotalHP 36
execute as @p if score @s EMfullIronE matches 2 run scoreboard players set @s EMtotalHP 36
execute as @p if score @s EMfullDiamond matches 2 run scoreboard players set @s EMtotalHP 40
execute as @p if score @s EMfullDiamondE matches 2 run scoreboard players set @s EMtotalHP 40
execute as @p if score @s EMfullNetherite matches 2 run scoreboard players set @s EMtotalHP 40
execute as @p if score @s EMfullNetheriteE matches 2 run scoreboard players set @s EMtotalHP 40
execute as @p store result score @s EMmissingHP run data get entity @s Health
execute as @p run scoreboard players operation @s EMtempHP = @s EMtotalHP
execute as @p run scoreboard players operation @s EMtotalHP -= @s EMmissingHP
execute as @p run scoreboard players operation @s EMmissingHP = @s EMtotalHP
execute as @p run scoreboard players operation @s EMtotalHP = @s EMtempHP
execute as @p run scoreboard players set @p EMtempHP 20
execute as @p run scoreboard players operation @s EMmissingHP *= @s EMtempHP
execute as @p run scoreboard players operation @s EMmissingHP /= @s EMtotalHP
execute if score @p EMmissingHP matches 0 run worldborder warning distance 30000000
execute if score @p EMmissingHP matches 1 run worldborder warning distance 38500000
execute if score @p EMmissingHP matches 2 run worldborder warning distance 47000000
execute if score @p EMmissingHP matches 3 run worldborder warning distance 55500000
execute if score @p EMmissingHP matches 4 run worldborder warning distance 64000000
execute if score @p EMmissingHP matches 5 run worldborder warning distance 72500000
execute if score @p EMmissingHP matches 6 run worldborder warning distance 81000000
execute if score @p EMmissingHP matches 7 run worldborder warning distance 89500000
execute if score @p EMmissingHP matches 8 run worldborder warning distance 98000000
execute if score @p EMmissingHP matches 9 run worldborder warning distance 106500000
execute if score @p EMmissingHP matches 10 run worldborder warning distance 115000000
execute if score @p EMmissingHP matches 11 run worldborder warning distance 123500000
execute if score @p EMmissingHP matches 12 run worldborder warning distance 132000000
execute if score @p EMmissingHP matches 13 run worldborder warning distance 140500000
execute if score @p EMmissingHP matches 14 run worldborder warning distance 149000000
execute if score @p EMmissingHP matches 15 run worldborder warning distance 157500000
execute if score @p EMmissingHP matches 16 run worldborder warning distance 166000000
execute if score @p EMmissingHP matches 17 run worldborder warning distance 180500000
execute if score @p EMmissingHP matches 18 run worldborder warning distance 183000000
execute if score @p EMmissingHP matches 19 run worldborder warning distance 200000000

execute if score @p[tag=!veryhurt] EMmissingHP matches 17..20 run tag @p remove hurt
execute if score @p[tag=!veryhurt] EMmissingHP matches 17..20 run effect give @p minecraft:slowness 999999 1 true
execute if score @p[tag=!veryhurt] EMmissingHP matches 17..20 run tag @p add veryhurt
execute if score @p[tag=veryhurt] EMmissingHP matches 9..16 run effect clear @p minecraft:slowness
execute if score @p[tag=veryhurt] EMmissingHP matches 9..16 run tag @p remove veryhurt
execute if score @p[tag=!hurt] EMmissingHP matches 9..16 run effect give @p minecraft:slowness 999999 0 true
execute if score @p[tag=!hurt] EMmissingHP matches 9..16 run tag @p add hurt
execute if score @p[tag=hurt] EMmissingHP matches 0..8 run effect clear @p minecraft:slowness
execute if score @p[tag=hurt] EMmissingHP matches 0..8 run tag @p remove hurt