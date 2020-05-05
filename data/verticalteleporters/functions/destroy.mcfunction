setblock ~ ~ ~ air
setblock ~ ~1 ~ air
function verticalteleporters:give
particle minecraft:block minecraft:purple_stained_glass ^ ^ ^2 0.5 0.5 0.5 0.0001 30
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_carpet"}}]
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:purple_stained_glass"}}]
kill @s
