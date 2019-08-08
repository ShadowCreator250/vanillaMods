execute if entity @e[type=player,distance=..30] run particle end_rod ~ ~0.2 ~ 0.1 0.2 0.1 0.005 10
execute if block ~ ~ ~ minecraft:potatoes[age=7] run function autofields:crop_potatoes
execute if block ~ ~ ~ minecraft:carrots[age=7] run function autofields:crop_carrots
execute if block ~ ~ ~ minecraft:wheat[age=7] run function autofields:crop_wheat
execute if block ~ ~ ~ minecraft:beetroots[age=3] run function autofields:crop_beetroots
function autofields:item_tags
