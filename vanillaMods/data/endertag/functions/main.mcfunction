tag @a[nbt={SelectedItem:{id:"minecraft:name_tag",Count:1b,tag:{display:{Name:"{\"text\":\"EnderTag\",\"color\":\"dark_purple\"}",Lore:["§bThis item teleports all nearby items to you."]}}}},tag=!endertag] add endertag
tag @a[nbt={Inventory:[{id:"minecraft:name_tag",Count:1b,Slot:-106b,tag:{display:{Name:"{\"text\":\"EnderTag\",\"color\":\"dark_purple\"}",Lore:["§bThis item teleports all nearby items to you."]}}}]},tag=!endertag] add endertag
execute as @a[tag=endertag] at @s run data merge entity @e[type=item,distance=0.6..5,limit=1,sort=random] {PickupDelay:0,NoGravity:1b}
#32767 -> cant be picked up; 0 -> instant
execute as @a[tag=endertag] at @s anchored eyes run tp @e[type=item,distance=..5] ^ ^-0.5 ^
tag @a[tag=endertag] remove endertag
