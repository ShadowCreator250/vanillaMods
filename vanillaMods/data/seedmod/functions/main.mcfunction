tag @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}}] add grassSeed
tag @e[type=item,nbt={Item:{id:"minecraft:red_mushroom"}}] add shroomSeed
tag @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom"}}] add shroomSeed

execute as @e[type=item,tag=grassSeed] at @s if block ~ ~-1 ~ #seedmod:dirts run tag @s add killme
execute as @e[type=item,tag=shroomSeed] at @s if block ~ ~-1 ~ #seedmod:dirts run tag @s add killme
execute as @e[type=item,tag=shroomSeed,tag=killme] at @s run fill ~ ~-1 ~ ~ ~-1 ~ mycelium
execute as @e[type=item,tag=grassSeed,tag=killme] at @s run fill ~ ~-1 ~ ~ ~-1 ~ grass_block
kill @e[type=item,tag=killme]
