# Spectral Arrows OHKO phantoms. Think of light arrows from the Legend of Zelda series.
kill @e[type=phantom, nbt={ActiveEffects:[{Id:24b}]}]

# Phantoms inflict blindness when they attack. A shader pack is highly recommended with this, but not needed.
execute as @a run execute at @s if entity @e[type=minecraft:phantom,distance=0..2] run effect give @s minecraft:blindness 30 0 true
