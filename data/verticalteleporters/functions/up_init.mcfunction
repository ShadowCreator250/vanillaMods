function verticalteleporters:busy
say up
execute as @s at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["vt_rayaes","vm_entity"]}
execute as @e[tag=vt_rayaes,limit=1,sort=nearest] at @s run scoreboard players set @s vt_distance 0
execute as @e[tag=vt_rayaes,limit=1,sort=nearest] at @s run function verticalteleporters:up_loop