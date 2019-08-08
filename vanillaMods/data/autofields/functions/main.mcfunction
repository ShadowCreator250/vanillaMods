# Spawn Control
execute as @a at @s as @e[type=magma_cube,tag=af_spawn_t1,distance=..7] at @s align xyz positioned ~0.5 ~1 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["af_controler_t1","af_controler","vm_entity","vm_block_machine","new"],DisabledSlots:4144959,Pose:{},Rotation:[90f,0.0f],HandItems:[{id:"minecraft:stone_hoe",Count:1b},{id:"minecraft:stone_hoe",Count:1b}],Pose:{LeftArm:[349f,0f,0f],RightArm:[349f,180f,0f]},CustomName:"{\"text\":\"AutoFarmer Tier 1 Controler\"}"}
execute as @a at @s as @e[type=magma_cube,tag=af_spawn_t1,distance=..7] at @s run kill @s

execute as @a at @s as @e[type=magma_cube,tag=af_spawn_t2,distance=..7] at @s align xyz positioned ~0.5 ~1 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["af_controler_t2","af_controler","vm_entity","vm_block_machine","new"],DisabledSlots:4144959,Pose:{},Rotation:[90f,0.0f],HandItems:[{id:"minecraft:iron_hoe",Count:1b},{id:"minecraft:iron_hoe",Count:1b}],Pose:{LeftArm:[349f,0f,0f],RightArm:[349f,180f,0f]},CustomName:"{\"text\":\"AutoFarmer Tier 2 Controler\"}"}
execute as @a at @s as @e[type=magma_cube,tag=af_spawn_t2,distance=..7] at @s run kill @s

execute as @a at @s as @e[type=magma_cube,tag=af_spawn_t3,distance=..7] at @s align xyz positioned ~0.5 ~1 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["af_controler_t3","af_controler","vm_entity","vm_block_machine","new"],DisabledSlots:4144959,Pose:{},Rotation:[90f,0.0f],HandItems:[{id:"minecraft:diamond_hoe",Count:1b},{id:"minecraft:diamond_hoe",Count:1b}],Pose:{LeftArm:[349f,0f,0f],RightArm:[349f,180f,0f]},CustomName:"{\"text\":\"AutoFarmer Tier 3 Controler\"}"}
execute as @a at @s as @e[type=magma_cube,tag=af_spawn_t3,distance=..7] at @s run kill @s

# Destroy Control
execute as @a at @s as @e[type=armor_stand,tag=af_controler,distance=..7,tag=old] at @s if block ~ ~ ~ #vmcore:noblocks run tag @s add af_kill
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t1,distance=..7,tag=old,tag=af_kill] at @s if block ~ ~ ~ #vmcore:noblocks run function autofields:give_tier1
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t2,distance=..7,tag=old,tag=af_kill] at @s if block ~ ~ ~ #vmcore:noblocks run function autofields:give_tier2
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t3,distance=..7,tag=old,tag=af_kill] at @s if block ~ ~ ~ #vmcore:noblocks run function autofields:give_tier3
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t1,distance=..7,tag=old,tag=af_kill] at @s if block ~ ~ ~ #vmcore:noblocks positioned ~-5 ~-1 ~-5 run kill @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t1,dx=10,dy=3,dz=10]
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t2,distance=..7,tag=old,tag=af_kill] at @s if block ~ ~ ~ #vmcore:noblocks positioned ~-7 ~-1 ~-7 run kill @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t2,dx=14,dy=3,dz=14]
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t3,distance=..7,tag=old,tag=af_kill] at @s if block ~ ~ ~ #vmcore:noblocks positioned ~-9 ~-1 ~-9 run kill @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t3,dx=18,dy=3,dz=18]
execute as @a at @s as @e[type=armor_stand,tag=af_controler,distance=..7,tag=old,tag=af_kill] at @s if block ~ ~ ~ #vmcore:noblocks run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper",Count:1b}}]
execute as @a at @s as @e[type=armor_stand,tag=af_controler,distance=..7,tag=old,tag=af_kill] at @s if block ~ ~ ~ #vmcore:noblocks run kill @s

# Fuel Control
execute as @a at @s as @e[type=armor_stand,tag=af_controler,distance=..7,tag=old] at @s run tag @e[type=item,tag=!af_fuel_item,distance=..2.5,nbt={Item:{id:"minecraft:coal_block"}}] add af_fuel_item
execute as @e[type=item,tag=af_fuel_item] at @s run tag @e[type=armor_stand,tag=af_controler,distance=..2.5,tag=old,limit=1,sort=nearest] add af_add_fuel
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t1,distance=..7,tag=old,tag=af_add_fuel] at @s run scoreboard players add @s af_fuel 216000
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t2,distance=..7,tag=old,tag=af_add_fuel] at @s run scoreboard players add @s af_fuel 144000
execute as @a at @s as @e[type=armor_stand,tag=af_controler_t3,distance=..7,tag=old,tag=af_add_fuel] at @s run scoreboard players add @s af_fuel 72000
execute as @a at @s as @e[type=armor_stand,tag=af_controler,distance=..7,tag=old,tag=af_add_fuel] at @s run kill @e[type=item,distance=..2.5,tag=af_fuel_item,limit=1,sort=nearest]
execute as @a at @s as @e[type=armor_stand,tag=af_controler,distance=..7,tag=old,tag=af_add_fuel] at @s run tag @s remove af_add_fuel

scoreboard players remove @e[type=armor_stand,tag=af_controler,tag=old,scores={af_fuel=1..}] af_fuel 1

# Timer Control
scoreboard players set @e[type=armor_stand,tag=af_controler,tag=old,scores={af_timer=20}] af_timer 0
scoreboard players add @e[type=armor_stand,tag=af_controler,tag=old] af_timer 1

# Runtime Actions
execute as @a at @s as @e[type=armor_stand,tag=af_controler,tag=old,distance=..20,scores={af_fuel=0}] at @s run particle cloud ~ ~0.9 ~ 0 0.2 0 0.004 1
execute as @a at @s as @e[type=armor_stand,tag=af_controler,tag=old,distance=..20,scores={af_fuel=1..}] at @s run particle large_smoke ~ ~0.9 ~ 0 0 0 0.004 1
execute as @a at @s as @e[type=armor_stand,tag=af_controler,tag=old,distance=..20,scores={af_fuel=1..}] at @s run particle flame ~ ~1.05 ~ 0.1 0 0.1 0.0005 1
execute as @a at @s as @e[type=armor_stand,tag=af_controler,tag=old,distance=..20,scores={af_fuel=1..}] at @s run tp @s ~ ~ ~ ~3 ~

execute as @e[type=armor_stand,tag=af_controler,scores={af_fuel=1..}] at @s run tag @e[type=item,tag=af_crop,tag=!af_crop_tpd,distance=..1] add af_crop_tpd
execute as @e[type=armor_stand,tag=af_controler_t1,scores={af_fuel=1..}] at @s positioned ~-5 ~-1 ~-5 run tp @e[type=item,tag=af_crop,dx=10,dy=3,dz=10,tag=!af_crop_tpd] ~5 ~0.7 ~5
execute as @e[type=armor_stand,tag=af_controler_t2,scores={af_fuel=1..}] at @s positioned ~-7 ~-1 ~-7 run tp @e[type=item,tag=af_crop,dx=14,dy=3,dz=14,tag=!af_crop_tpd] ~7 ~0.7 ~7
execute as @e[type=armor_stand,tag=af_controler_t3,scores={af_fuel=1..}] at @s positioned ~-9 ~-1 ~-9 run tp @e[type=item,tag=af_crop,dx=18,dy=3,dz=18,tag=!af_crop_tpd] ~9 ~0.7 ~9

execute as @e[type=armor_stand,tag=af_controler_t1,scores={af_fuel=1..,af_timer=20}] at @s positioned ~-5 ~-1 ~-5 as @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t1,dx=10,dy=3,dz=10] at @s run function autofields:t1_step_control
execute as @e[type=armor_stand,tag=af_controler_t2,scores={af_fuel=1..,af_timer=20}] at @s positioned ~-7 ~-1 ~-7 as @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t2,dx=14,dy=3,dz=14] at @s run function autofields:t2_step_control
execute as @e[type=armor_stand,tag=af_controler_t3,scores={af_fuel=1..,af_timer=20}] at @s positioned ~-9 ~-1 ~-9 as @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t3,dx=18,dy=3,dz=18] at @s run function autofields:t3_step_control

execute as @e[type=armor_stand,tag=af_controler_t1,scores={af_fuel=..0,af_timer=20}] at @s positioned ~-5 ~-1 ~-5 as @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t1,dx=10,dy=3,dz=10] at @s if entity @e[type=player,distance=..30] run particle crit ~ ~0.2 ~ 0.1 0.2 0.1 0.005 20
execute as @e[type=armor_stand,tag=af_controler_t2,scores={af_fuel=..0,af_timer=20}] at @s positioned ~-7 ~-1 ~-7 as @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t2,dx=14,dy=3,dz=14] at @s if entity @e[type=player,distance=..30] run particle crit ~ ~0.2 ~ 0.1 0.2 0.1 0.005 20
execute as @e[type=armor_stand,tag=af_controler_t3,scores={af_fuel=..0,af_timer=20}] at @s positioned ~-9 ~-1 ~-9 as @e[type=armor_stand,limit=1,sort=nearest,tag=af_farmer_t3,dx=18,dy=3,dz=18] at @s if entity @e[type=player,distance=..30] run particle crit ~ ~0.2 ~ 0.1 0.2 0.1 0.005 20

# Help Control Main
execute as @a at @s as @e[type=armor_stand,tag=af_controler,distance=..7,tag=old] at @s run tag @e[type=item,tag=!af_help_item,nbt={Item:{id:"minecraft:book"}}] add af_help_item

# Tier Main Control
execute if entity @e[type=armor_stand,tag=af_controler_t1] run function autofields:t1_main
execute if entity @e[type=armor_stand,tag=af_controler_t2] run function autofields:t2_main
execute if entity @e[type=armor_stand,tag=af_controler_t3] run function autofields:t3_main
