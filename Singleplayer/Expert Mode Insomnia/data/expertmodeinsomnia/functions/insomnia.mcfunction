execute as @p store result score @s EMSleepTimer run data get entity @s SleepTimer
execute as @p if score @s EMSleepTimer matches 100.. run weather clear
execute as @p if score @s EMSleepTimer matches 100.. run effect give @s absorption 1 0 true
execute as @p at @s if score @s EMSleepTimer matches 100.. run teleport @s ~ ~ ~

# Time moves faster in the nether (x8)
execute as @p at @s if score @s EMtime matches 1 if block ~ 127 ~ bedrock run time add 600t
