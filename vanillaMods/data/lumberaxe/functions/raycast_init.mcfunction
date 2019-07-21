summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["la_rayaxe"]}
tp @e[tag=la_rayaxe,limit=1,sort=nearest] @s
tp @e[tag=la_rayaxe,limit=1,sort=nearest] ~ ~1.8 ~
execute as @e[tag=la_rayaxe,limit=1,sort=nearest] at @s run function lumberaxe:raycast_loop
