# Do damage tinting (Screen becomes red as you take damage).
scoreboard players set @a EMtotalHP 20
execute as @a if score @s EMfullLeather matches 2 run scoreboard players set @s EMtotalHP 24
execute as @a if score @s EMfullLeatherE matches 2 run scoreboard players set @s EMtotalHP 24
execute as @a if score @s EMfullChainmail matches 2 run scoreboard players set @s EMtotalHP 28
execute as @a if score @s EMfullChainmailE matches 2 run scoreboard players set @s EMtotalHP 28
execute as @a if score @s EMfullGolden matches 2 run scoreboard players set @s EMtotalHP 32
execute as @a if score @s EMfullGoldenE matches 2 run scoreboard players set @s EMtotalHP 32
execute as @a if score @s EMfullIron matches 2 run scoreboard players set @s EMtotalHP 36
execute as @a if score @s EMfullIronE matches 2 run scoreboard players set @s EMtotalHP 36
execute as @a if score @s EMfullDiamond matches 2 run scoreboard players set @s EMtotalHP 40
execute as @a if score @s EMfullDiamondE matches 2 run scoreboard players set @s EMtotalHP 40
execute as @a if score @s EMfullNetherite matches 2 run scoreboard players set @s EMtotalHP 40
execute as @a if score @s EMfullNetheriteE matches 2 run scoreboard players set @s EMtotalHP 40
execute as @a store result score @s EMmissingHP run data get entity @s Health
execute as @a run scoreboard players operation @s EMtempHP = @s EMtotalHP
execute as @a run scoreboard players operation @s EMtotalHP -= @s EMmissingHP
execute as @a run scoreboard players operation @s EMmissingHP = @s EMtotalHP
execute as @a run scoreboard players operation @s EMtotalHP = @s EMtempHP
execute as @a run scoreboard players set @s EMtempHP 20
execute as @a run scoreboard players operation @s EMmissingHP *= @s EMtempHP
execute as @a run scoreboard players operation @s EMmissingHP /= @s EMtotalHP

execute as @a run execute if score @s[tag=!veryhurt] EMmissingHP matches 17..20 run tag @s remove hurt
execute as @a run execute if score @s[tag=!veryhurt] EMmissingHP matches 17..20 run effect give @s minecraft:slowness 999999 1 true
execute as @a run execute if score @s[tag=!veryhurt] EMmissingHP matches 17..20 run tag @s add veryhurt
execute as @a run execute if score @s[tag=veryhurt] EMmissingHP matches 9..16 run effect clear @s minecraft:slowness
execute as @a run execute if score @s[tag=veryhurt] EMmissingHP matches 9..16 run tag @s remove veryhurt
execute as @a run execute if score @s[tag=!hurt] EMmissingHP matches 9..16 run effect give @s minecraft:slowness 999999 0 true
execute as @a run execute if score @s[tag=!hurt] EMmissingHP matches 9..16 run tag @s add hurt
execute as @a run execute if score @s[tag=hurt] EMmissingHP matches 0..8 run effect clear @s minecraft:slowness
execute as @a run execute if score @s[tag=hurt] EMmissingHP matches 0..8 run tag @s remove hurt