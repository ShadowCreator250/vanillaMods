# Item Control
tag @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] add cclcraft1
tag @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}}] add cclcraft2

# Crafting Control
execute as @e[tag=cclcraft1] at @s run execute as @e[tag=cclcraft2,limit=1,sort=nearest,distance=..0.5] at @s run function customcraftinglib:give
execute as @e[tag=cclcraft1] at @s run execute as @e[tag=cclcraft2,limit=1,sort=nearest,distance=..0.5] at @s run kill @e[type=item,distance=..0.5]

#Place Control
execute as @e[name=ccl_gct,type=armor_stand,tag=!old,tag=new] at @s if block ~ ~ ~ #vmcore:noblocks run setblock ~ ~ ~ minecraft:dropper[facing=down]{CustomName:"{\"text\":\"Golden Crafting Table\",\"color\":\"gold\",\"bold\":\"true\"}"} replace
execute as @e[name=ccl_gct,type=armor_stand,tag=!old,tag=new] at @s align xyz run tp @s ~0.5 ~-0.37 ~0.5
execute as @e[name=ccl_gct,type=armor_stand,tag=!old,tag=new] at @s run tag @s add old
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=new] at @s run tag @s remove new

# Destroy Control
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ #vmcore:noblocks run function customcraftinglib:give
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ #vmcore:noblocks run particle minecraft:block minecraft:iron_block ~ ~1 ~ 0.5 0.5 0.5 0.0001 30
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ #vmcore:noblocks run kill @s

# Life-Time-Actions
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~2 ~ #vmcore:noblocks run tp @s ~ ~ ~ ~0.5 ~
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~2 ~ #vmcore:noblocks run particle minecraft:dragon_breath ~ ~1.3 ~ 0.1 0.1 0.1 0.005 1

execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s run tag @s remove ccl_gct_empty
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ dropper{Items:[]} run tag @s add ccl_gct_empty
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s run function vmcore:cclib_recipes_control
