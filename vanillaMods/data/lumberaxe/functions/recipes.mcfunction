# first recipe
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ dropper{Items:[{Slot: 0b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 1b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 3b, id: "minecraft:stick", Count: 1b}, {Slot: 4b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 6b, id: "minecraft:stick", Count: 1b}]} run tag @s add lumberaxe_r

# second recipe
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ dropper{Items:[{Slot: 1b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 2b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 4b, id: "minecraft:stick", Count: 1b}, {Slot: 5b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 7b, id: "minecraft:stick", Count: 1b}]} run tag @s add lumberaxe_r

# third recipe
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ dropper{Items:[{Slot: 1b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 2b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 4b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 5b, id: "minecraft:stick", Count: 1b}, {Slot: 8b, id: "minecraft:stick", Count: 1b}]} run tag @s add lumberaxe_r

# fourth recipe
execute as @a at @s as @e[name=ccl_gct,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~1 ~ dropper{Items:[{Slot: 0b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 1b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 3b, id: "minecraft:gold_ingot", Count: 1b}, {Slot: 4b, id: "minecraft:stick", Count: 1b}, {Slot: 7b, id: "minecraft:stick", Count: 1b}]} run tag @s add lumberaxe_r

execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=lumberaxe_r] at @s run playsound minecraft:block.anvil.use block @a[distance=..7] ~ ~ ~ 10 1.5 1
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=lumberaxe_r] at @s run data merge block ~ ~1 ~ {Items:[{Slot:4b,Count:1b,id:"minecraft:golden_axe",tag:{display:{Name:"{\"text\":\"LumberAxe\",\"color\":\"aqua\"}",Lore:['{"text":"This axe chops down whole trees.","color":"aqua"}']}}}]}
execute as @e[name=ccl_gct,type=armor_stand,tag=old,tag=lumberaxe_r] at @s run tag @s remove lumberaxe_r
