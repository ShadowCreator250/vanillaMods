# example Recipe
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ dropper{Items:[{Slot:0b,Count:1b,id:"minecraft:bedrock"},{Slot:1b,Count:1b,id:"minecraft:bedrock"},{Slot:2b,Count:1b,id:"minecraft:bedrock"},{Slot:3b,Count:1b,id:"minecraft:bedrock"},{Slot:4b,Count:1b,id:"minecraft:bedrock"},{Slot:5b,Count:1b,id:"minecraft:bedrock"},{Slot:6b,Count:1b,id:"minecraft:bedrock"},{Slot:7b,Count:1b,id:"minecraft:bedrock"},{Slot:8b,Count:1b,id:"minecraft:bedrock"}]} run tag @s add ccl_ex_r

execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=ccl_ex_r] at @s run playsound minecraft:block.anvil.use block @a[distance=..7] ~ ~ ~ 10 1.5 1
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=ccl_ex_r] at @s run data merge block ~ ~1 ~ {Items:[{Slot:4b,Count:1b,id:"minecraft:diamond"}]}
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=ccl_ex_r] at @s run tag @s remove ccl_ex_r

# Uncraft recipe
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ dropper{Items:[{Slot: 4b, id: "minecraft:armor_stand", Count: 1b, tag:{display:{Name:"{\"text\":\"Golden Crafting Table\",\"color\":\"gold\"}",Lore:["§bA Custom Crafting Table for your own new and customizable crafting recipes."]},EntityTag:{CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Tags:["new"],ArmorItems:[{},{},{},{id:"minecraft:light_weighted_pressure_plate",Count:1b}],CustomName:"{\"text\":\"ccl_gct\",\"color\":\"gold\"}"}}}]} run tag @s add ccl_uncraft_r

execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=ccl_uncraft_r] at @s run playsound minecraft:block.anvil.use block @a[distance=..7] ~ ~ ~ 10 1.5 1
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=ccl_uncraft_r] at @s run data merge block ~ ~1 ~ {Items:[{Slot:3b,Count:1b,id:"minecraft:dropper"},{Slot:5b,Count:1b,id:"minecraft:gold_block"}]}
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=ccl_uncraft_r] at @s run tag @s remove ccl_uncraft_r
