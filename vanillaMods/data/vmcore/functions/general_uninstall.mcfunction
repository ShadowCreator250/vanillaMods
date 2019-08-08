execute as @e[tag=vm_entity,tag=vm_block_machine,tag=!vm_block_machine+1] at @s run setblock ~ ~ ~ air
execute as @e[tag=vm_entity,tag=vm_block_machine,tag=vm_block_machine+1] at @s run setblock ~ ~1 ~ air
#extra for GoldenCraftingTable because he is 0.37 lower than his actual block
execute as @e[tag=vm_entity] at @s run kill @s
