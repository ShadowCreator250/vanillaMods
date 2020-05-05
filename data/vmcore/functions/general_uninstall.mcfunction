execute as @e[tag=vm_entity,tag=vm_block_machine+1] at @s run setblock ~ ~1 ~ air
execute as @e[tag=vm_entity,tag=vm_block_machine] at @s run setblock ~ ~ ~ air
execute as @e[tag=vm_entity] at @s run kill @s
