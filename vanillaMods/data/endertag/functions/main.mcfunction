tag @a[nbt={SelectedItem:{id:"minecraft:name_tag",Count:1b,tag:{display:{Name:"{\"text\":\"EnderTag\",\"color\":\"dark_purple\"}",Lore:["§bThis item teleports all nearby items to you."]}}}},tag=!endertag] add endertag
execute as @a[tag=endertag] at @s run tp @e[type=item,distance=..5] ^ ^-0.2 ^
tag @a[tag=endertag] remove endertag
