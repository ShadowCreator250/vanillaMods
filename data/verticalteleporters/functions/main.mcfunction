# Place Control
execute as @e[name=VertTeleporter,type=armor_stand,tag=!old,tag=new] at @s if block ~ ~ ~ #vmcore:noblocks run tp @s ~ ~0.1 ~ 0 0
execute as @e[name=VertTeleporter,type=armor_stand,tag=!old,tag=new] at @s if block ~ ~ ~ #vmcore:noblocks run setblock ~ ~ ~ minecraft:purple_stained_glass
execute as @e[name=VertTeleporter,type=armor_stand,tag=!old,tag=new] at @s if block ~ ~1 ~ #vmcore:noblocks run setblock ~ ~1 ~ minecraft:blue_carpet
execute as @e[name=VertTeleporter,type=armor_stand,tag=!old,tag=new] at @s run tag @s add old
execute as @e[name=VertTeleporter,type=armor_stand,tag=old,tag=new] at @s run tag @s remove new

# Destroy Control
execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run function verticalteleporters:destroy
execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ #vmcore:noblocks run function verticalteleporters:destroy

# active control
execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,tag=old,distance=..64,tag=vt_active] at @s align xz positioned ~0.5 ~1.2 ~0.5 unless entity @p[distance=..0.55] run tag @s remove vt_active
execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,tag=old,distance=..2,tag=!vt_active] at @s align xz positioned ~0.5 ~1.2 ~0.5 if entity @p[distance=..0.55] run tag @s add vt_active
execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,tag=old,distance=..2,tag=!vt_active] at @s align xz positioned ~0.5 ~1.7 ~0.5 if entity @p[distance=..0.55] run tag @s add vt_active

# Life-Time-Actions
execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,distance=..2,tag=vt_active,tag=!vt_busy] at @s align xz positioned ~0.5 ~1 ~0.5 run particle minecraft:dragon_breath ~ ~ ~ 0.15 0 0.15 0.0001 1
execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,distance=..10,tag=vt_busy] at @s align xz positioned ~0.5 ~0.8 ~0.5 if entity @s[tag=vt_busy] run particle minecraft:witch ~ ~ ~ 0 0 0 0.0000000000000000000000000000000000000000000001 1

execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,distance=..2,sort=nearest,tag=vt_active,tag=!vt_busy] at @s align xz positioned ~0.5 ~1.2 ~0.5 if entity @p[distance=..0.55,tag=vf_sneaking] run function verticalteleporters:down_init
execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,distance=..2,sort=nearest,tag=vt_active,tag=!vt_busy] at @s align xz positioned ~0.5 ~1.6 ~0.5 if entity @p[distance=..0.55,tag=vf_jumping] run function verticalteleporters:up_init

execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,distance=..64,tag=vt_busy,scores={vm_timer=..0}] at @s run function verticalteleporters:unbusy

# execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,tag=vt_active] at @s run tp @s ~ ~ ~ ~3 ~
# execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,distance=1..48,tag=!vt_active,y_rotation=-180..-0.1] at @s run tp @s ~ ~ ~ 0 0
# execute as @a at @s as @e[name=VertTeleporter,type=armor_stand,distance=1..48,tag=!vt_active,y_rotation=0.1..180] at @s run tp @s ~ ~ ~ 0 0

# align xz positioned ~0.5 ~1 ~0.5 run particle minecraft:dragon_breath ~ ~ ~ 0.15 0 0.15 0.00001 1
# particle minecraft:portal ~ ~2 ~2 0.2 0 0.2 0.001 400 force
