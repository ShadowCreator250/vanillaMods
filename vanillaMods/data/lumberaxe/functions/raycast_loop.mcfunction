execute as @s at @s if block ~ ~ ~ #vmcore:noblocks run tp @s ^ ^ ^0.5
execute as @s at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.0001 1
execute as @s at @s if block ~ ~1 ~ #lumberaxe:logs unless block ~ ~ ~ #lumberaxe:logs if entity @e[type=item,distance=..1,tag=la_item,sort=nearest,limit=1] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.0001 1
execute as @s at @s if block ~ ~1 ~ #lumberaxe:logs unless block ~ ~ ~ #lumberaxe:logs if entity @e[type=item,distance=..1,tag=la_item,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["la_chopcloud","la_base_chopcloud"]}
execute as @s at @s unless block ~ ~ ~ #vmcore:noblocks run kill @s
execute as @s at @s if block ~ ~ ~ #vmcore:noblocks run function lumberaxe:raycast_loop
