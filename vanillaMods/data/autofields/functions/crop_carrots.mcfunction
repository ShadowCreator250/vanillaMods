setblock ~ ~ ~ carrots[age=0] destroy
execute store result score @s af_crop_count run data get entity @e[type=item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:carrot"}}] Item.Count
scoreboard players remove @s af_crop_count 1
execute store result entity @e[type=item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:carrot"}}] Item.Count int 1.0 run scoreboard players get @s af_crop_count
scoreboard players set @s af_crop_count 0
