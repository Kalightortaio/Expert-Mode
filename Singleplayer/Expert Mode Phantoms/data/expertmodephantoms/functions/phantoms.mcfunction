# Spectral Arrows OHKO phantoms. Think of light arrows from the Legend of Zelda series.
kill @e[type=phantom, nbt={ActiveEffects:[{Id:24b}]}]

# Phantoms inflict blindness when they attack. A shader pack is highly recommended with this, but not needed.
execute at @p if entity @e[type=minecraft:phantom,distance=0..2] run effect give @p minecraft:blindness 30 0 true
