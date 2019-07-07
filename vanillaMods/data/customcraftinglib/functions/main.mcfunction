# Item Control
tag @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] add cclcraft1
tag @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}}] add cclcraft2

# Crafting Control
execute as @e[tag=cclcraft1] at @s run execute as @e[tag=cclcraft2,limit=1,sort=nearest,distance=..0.5] at @s run function customcraftinglib:give
execute as @e[tag=cclcraft1] at @s run execute as @e[tag=cclcraft2,limit=1,sort=nearest,distance=..0.5] at @s run kill @e[type=item,distance=..0.5]

#Place Control
execute as @e[name=ccl_gct,type=armor_stand,tag=!old,tag=new] at @s if block ~ ~ ~ #customcraftinglib:gases run setblock ~ ~ ~ minecraft:dropper[facing=down]{CustomName:"{\"text\":\"Golden Crafting Table\",\"color\":\"gold\",\"bold\":\"true\"}"} replace
execute as @e[name=ccl_gct,type=armor_stand,tag=!old,tag=new] at @s run tp @s ~ ~-0.37 ~
execute as @e[name=ccl_gct,type=armor_stand,tag=!old,tag=new] at @s run tag @s add old
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=new] at @s run tag @s remove new

# Destroy Control
execute as @e[name=ccl_gct,type=armor_stand,tag=old] at @s if block ~ ~1 ~ #customcraftinglib:gases run function customcraftinglib:give
execute as @e[name=ccl_gct,type=armor_stand,tag=old] at @s if entity @p[distance=..20] if block ~ ~1 ~ #customcraftinglib:gases run particle minecraft:block minecraft:iron_block ~ ~1 ~ 0.5 0.5 0.5 0.0001 30
execute as @e[name=ccl_gct,type=armor_stand,tag=old] at @s if block ~ ~1 ~ #customcraftinglib:gases run kill @s

# Life-Time-Actions
execute as @e[name=ccl_gct,type=armor_stand,tag=old] at @s if entity @p[distance=..20] if block ~ ~2 ~ #customcraftinglib:gases run tp @s ~ ~ ~ ~0.5 ~
execute as @e[name=ccl_gct,type=armor_stand,tag=old] at @s if entity @p[distance=..20] if block ~ ~2 ~ #customcraftinglib:gases run particle minecraft:dragon_breath ~ ~1.3 ~ 0.1 0.1 0.1 0.005 1

execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=ccl_gct_empty] at @s if entity @p[distance=..20] run tag @s remove ccl_gct_empty
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=!ccl_gct_empty] at @s if entity @p[distance=..20] if block ~ ~1 ~ dropper{Items:[]} run tag @s add ccl_gct_empty
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=!ccl_gct_empty] at @s if entity @p[distance=..20] run function #customcraftinglib:recipes
