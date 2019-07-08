# Place Control
execute as @e[name=EnderHopper,type=armor_stand,tag=!old,tag=new] at @s if block ~ ~ ~ #vmcore:noblocks run setblock ~ ~ ~ minecraft:hopper{CustomName:"{\"text\":\"EnderHopper\",\"color\":\"dark_purple\",\"bold\":\"true\"}"} replace
execute as @e[name=EnderHopper,type=armor_stand,tag=!old,tag=new] at @s run tag @s add old
execute as @e[name=EnderHopper,type=armor_stand,tag=old,tag=new] at @s run tag @s remove new

# Destroy Control
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run function enderhopper:give
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run particle minecraft:block minecraft:iron_block ~ ~0.5 ~ 0.5 0.5 0.5 0.0001 30
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run kill @s

# Life-Time-Actions
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s anchored eyes run tp @e[type=item,distance=..5] ^ ^0.3 ^
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ #vmcore:noblocks run tp @s ~ ~ ~ ~0.5 ~
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ #vmcore:noblocks run particle minecraft:dragon_breath ~ ~0.7 ~ 0.05 0.05 0.05 0.005 1
