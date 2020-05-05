# Place Control
execute as @e[name=EnderHopper,type=armor_stand,tag=!old,tag=new] at @s if block ~ ~ ~ #vmcore:noblocks run setblock ~ ~ ~ minecraft:hopper{CustomName:"{\"text\":\"EnderHopper\",\"color\":\"dark_purple\",\"bold\":\"true\"}"} replace
execute as @e[name=EnderHopper,type=armor_stand,tag=!old,tag=new] at @s run tag @s add old
execute as @e[name=EnderHopper,type=armor_stand,tag=old,tag=new] at @s run tag @s remove new

# Destroy Control
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run function enderhopper:give
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run particle minecraft:block minecraft:iron_block ~ ~0.5 ~ 0.5 0.5 0.5 0.0001 30
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:hopper"}}]
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run kill @s

# Life-Time-Actions
execute as @e[name=EnderHopper,type=armor_stand,tag=old] at @s anchored eyes run tag @e[type=item,distance=..10,sort=random,limit=1] add eh_tp
execute as @e[name=EnderHopper,type=armor_stand,tag=old] at @s anchored eyes as @e[type=item,distance=..10,tag=eh_tp] at @s run particle minecraft:witch ~ ~ ~ 0 0 0 1 20
execute as @e[name=EnderHopper,type=armor_stand,tag=old] at @s anchored eyes as @e[type=item,distance=..10,tag=eh_tp] at @s run playsound minecraft:entity.enderman.teleport block @a[distance=..21] ~ ~ ~ 2 2 0.01
execute as @e[name=EnderHopper,type=armor_stand,tag=old] at @s anchored eyes run tp @e[type=item,distance=..10,tag=eh_tp] ^ ^0.3 ^
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..30] at @s if block ~ ~1 ~ #vmcore:noblocks run tp @s ~ ~ ~ ~0.5 ~
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..30] at @s if block ~ ~1 ~ #vmcore:noblocks run particle minecraft:dragon_breath ~ ~0.8 ~ 0.1 0.1 0.1 0.005 1
execute as @a at @s as @e[name=EnderHopper,type=armor_stand,tag=old,distance=..30] at @s if block ~ ~1 ~ #vmcore:noblocks run particle minecraft:portal ~ ~0.7 ~ 0 0 0 0.7 5
