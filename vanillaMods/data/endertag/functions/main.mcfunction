tag @a[nbt={SelectedItem:{id:"minecraft:name_tag",Count:1b,tag:{display:{Name:"{\"text\":\"EnderTag\",\"color\":\"dark_purple\"}",Lore:['{"text":"This item teleports all nearby items to you.","color":"aqua"}']}}}},tag=!endertag] add endertag
tag @a[nbt={Inventory:[{id:"minecraft:name_tag",Count:1b,Slot:-106b,tag:{display:{Name:"{\"text\":\"EnderTag\",\"color\":\"dark_purple\"}",Lore:['{"text":"This item teleports all nearby items to you.","color":"aqua"}']}}}]},tag=!endertag] add endertag
execute as @a[tag=endertag] at @s run data merge entity @e[type=item,distance=0.6..5,limit=1,sort=random] {PickupDelay:0,NoGravity:1b}
#32767 -> cant be picked up; 0 -> instant
execute as @a[tag=endertag] at @s anchored eyes run tag @e[type=item,distance=..5,sort=random,limit=1] add et_tp
execute as @a[tag=endertag] at @s anchored eyes as @e[type=item,distance=..5,tag=et_tp] at @s run particle minecraft:witch ~ ~ ~ 0 0 0 1 20
execute as @a[tag=endertag] at @s anchored eyes as @e[type=item,distance=..5,tag=et_tp] at @s run playsound minecraft:entity.enderman.teleport block @a[distance=..21] ~ ~ ~ 2 2 0.01
execute as @a[tag=endertag] at @s anchored eyes run tp @e[type=item,distance=..5,tag=et_tp] ^ ^-0.5 ^
tag @a[tag=endertag] remove endertag
