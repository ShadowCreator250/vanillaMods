function verticalteleporters:busy
say down
execute as @s at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["vt_rayaes","vm_entity"]}
execute as @e[tag=vt_rayaes,limit=1,sort=nearest] at @s run function verticalteleporters:down_loop