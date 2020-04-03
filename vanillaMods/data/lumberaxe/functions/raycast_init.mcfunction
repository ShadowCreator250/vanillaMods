summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["la_rayaxe","vm_entity"]}
tp @e[tag=la_rayaxe,limit=1,sort=nearest] @s
tp @e[tag=la_rayaxe,limit=1,sort=nearest] ~ ~1.6 ~
say init
execute as @e[tag=la_rayaxe,limit=1,sort=nearest] at @s run function lumberaxe:raycast_loop
