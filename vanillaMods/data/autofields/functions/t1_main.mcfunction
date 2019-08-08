# Controler Setup on Place
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t1,distance=..7,tag=new,tag=!old] at @s run setblock ~ ~ ~ minecraft:dropper[facing=down]{CustomName:"{\"text\":\"AutoFarmer Tier 1\",\"color\":\"dark_green\",\"bold\":\"true\"}"} replace
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t1,distance=..7,tag=new,tag=!old] at @s run function autofields:place_setup_controler
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t1,distance=..7,tag=new,tag=!old] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,HandItems:[{id:"minecraft:stone_hoe",Count:1b}],Pose:{LeftArm:[349f,0f,0f],RightArm:[349f,180f,0f]},ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b}],Invisible:1b,NoBasePlate:1b,Small:1b,Tags:["af_farmer_t1","af_farmer","vm_entity","new"],DisabledSlots:4144959,Pose:{},Rotation:[-90f,0.0f],CustomName:"{\"text\":\"AutoFarmer Tier 1 Farmer\"}"}
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t1,distance=..7,tag=new,tag=!old] at @s run tag @s add old
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t1,distance=..7,tag=new,tag=old] at @s run tag @s remove new

# Farmer Setup on Place
execute as @a at @s as @e[type=armor_stand,tag=af_farmer_t1,distance=..7,tag=new,tag=!old] at @s run function autofields:place_setup_farmer
execute as @a at @s as @e[type=armor_stand,tag=af_farmer_t1,distance=..7,tag=new,tag=!old] at @s run tag @s add old
execute as @a at @s as @e[type=armor_stand,tag=af_farmer_t1,distance=..7,tag=new,tag=old] at @s run tag @s remove new

# Help Control T1
execute as @e[type=item,tag=af_help_item] at @s as @e[type=armor_stand,tag=af_controler,tag=old,limit=1,distance=..2.5,sort=nearest] at @s align xyz positioned ~0.5 ~1.5 ~0.5 run particle minecraft:rain ~ ~ ~ 0 0.1 0 0.0001 10
execute as @e[type=item,tag=af_help_item] at @s as @e[type=armor_stand,tag=af_controler_t1,tag=old,limit=1,distance=..2.5,sort=nearest] at @s align xyz positioned ~0.5 ~1.5 ~0.5 run particle happy_villager ~-4 ~ ~-4 0 0.2 0 0.001 1
execute as @e[type=item,tag=af_help_item] at @s as @e[type=armor_stand,tag=af_controler_t1,tag=old,limit=1,distance=..2.5,sort=nearest] at @s align xyz positioned ~0.5 ~1.5 ~0.5 run particle happy_villager ~4 ~ ~4 0 0.2 0 0.001 1
execute as @e[type=item,tag=af_help_item] at @s as @e[type=armor_stand,tag=af_controler_t1,tag=old,limit=1,distance=..2.5,sort=nearest] at @s align xyz positioned ~0.5 ~1.5 ~0.5 run particle happy_villager ~4 ~ ~-4 0 0.2 0 0.001 1
execute as @e[type=item,tag=af_help_item] at @s as @e[type=armor_stand,tag=af_controler_t1,tag=old,limit=1,distance=..2.5,sort=nearest] at @s align xyz positioned ~0.5 ~1.5 ~0.5 run particle happy_villager ~-4 ~ ~4 0 0.2 0 0.001 1
