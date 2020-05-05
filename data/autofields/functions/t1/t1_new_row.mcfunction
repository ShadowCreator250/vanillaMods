function autofields:crops/harvest
tp @s ~-8 ~ ~1
scoreboard players set @s af_col 1
scoreboard players add @s af_row 1
tag @s remove af_act
