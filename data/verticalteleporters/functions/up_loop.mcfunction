scoreboard players add @s vt_distance 1
execute as @s at @s if score @s vt_distance matches ..32 run tp @s ~ ~1 ~
execute as @s at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.0001 1
execute as @s at @s if entity @e[name=VertTeleporter,type=armor_stand,tag=old,distance=..0.45] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["vt_destination","vm_entity"]}
#execute as @s at @s if entity @e[name=VertTeleporter,type=armor_stand,tag=old,distance=..0.45] run tellraw @a [{"entity": "@s","score":{"name": "@s","objective": "vt_distance"}}]
execute as @s at @s if entity @e[name=VertTeleporter,type=armor_stand,tag=old,distance=..0.45] run scoreboard players set @s vt_distance 33
execute as @s at @s if score @s vt_distance matches 33.. run kill @s
execute as @s at @s if score @s vt_distance matches ..32 run function verticalteleporters:up_loop
