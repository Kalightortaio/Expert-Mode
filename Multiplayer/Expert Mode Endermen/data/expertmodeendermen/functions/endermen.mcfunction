# Endermen are always watching you
execute as @e[type=enderman,nbt={AngerTime:0}] at @s facing entity @e[type=player,sort=nearest,limit=1,distance=0..500] eyes run teleport ^ ^ ^

# Kind of weird when they chase you though... need to fix this without removing the creepiness factor

# Fixed! Added the NBT tag!