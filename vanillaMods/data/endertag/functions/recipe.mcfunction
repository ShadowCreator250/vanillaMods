# EnderTag Crafting Recipe
execute as @e[name=ccl_gct,type=armor_stand,tag=old] at @s if entity @p[distance=..20] if block ~ ~1 ~ dropper{Items:[{Slot: 0b, id: "minecraft:purple_dye", Count: 1b}, {Slot: 1b, id: "minecraft:ender_eye", Count: 1b}, {Slot: 2b, id: "minecraft:purple_dye", Count: 1b}, {Slot: 3b, id: "minecraft:ender_pearl", Count: 1b}, {Slot: 4b, id: "minecraft:name_tag", Count: 1b}, {Slot: 5b, id: "minecraft:ender_pearl", Count: 1b}, {Slot: 6b, id: "minecraft:purple_dye", Count: 1b}, {Slot: 7b, id: "minecraft:ender_eye", Count: 1b}, {Slot: 8b, id: "minecraft:purple_dye", Count: 1b}]} run tag @s add endertag_r

execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=endertag_r] at @s run playsound minecraft:block.anvil.use block @a[distance=..7] ~ ~ ~ 10 1.5 1
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=endertag_r] at @s run data merge block ~ ~1 ~ {Items:[{Slot:4b,Count:1b,id:"minecraft:name_tag",tag:{display:{Name:"{\"text\":\"EnderTag\",\"color\":\"dark_purple\"}",Lore:["§bThis item teleports all nearby items to you."]}}}]}
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=endertag_r] at @s run tag @s remove endertag_r
