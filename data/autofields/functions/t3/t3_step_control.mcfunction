tag @s add af_act
execute as @s at @s if entity @s[tag=af_act] if score @s af_col matches 0 if score @s af_row matches 0 run function autofields:t3/t3_init
execute as @s at @s if entity @s[tag=af_act] if score @s af_col < #t3_max af_col run function autofields:step
execute as @s at @s if entity @s[tag=af_act] if score @s af_col = #t3_max af_col if score @s af_row < #t3_max af_row run function autofields:t3/t3_new_row
execute as @s at @s if entity @s[tag=af_act] if score @s af_col = #t3_max af_col if score @s af_row = #t3_max af_row run function autofields:t3/t3_new_cicle
