## scoreboard control
# oak
execute as @a[scores={la_ol=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_ol=1..}] at @s run scoreboard players set @s la_ol 0

execute as @a[scores={la_sol=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sol=1..}] at @s run scoreboard players set @s la_sol 0

execute as @a[scores={la_ow=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_ow=1..}] at @s run scoreboard players set @s la_ow 0

execute as @a[scores={la_sow=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sow=1..}] at @s run scoreboard players set @s la_sow 0

# birch
execute as @a[scores={la_bl=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_bl=1..}] at @s run scoreboard players set @s la_bl 0

execute as @a[scores={la_sbl=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sbl=1..}] at @s run scoreboard players set @s la_sbl 0

execute as @a[scores={la_bw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_bw=1..}] at @s run scoreboard players set @s la_bw 0

execute as @a[scores={la_sbw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sbw=1..}] at @s run scoreboard players set @s la_sbw 0

# spruce
execute as @a[scores={la_sl=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sl=1..}] at @s run scoreboard players set @s la_sl 0

execute as @a[scores={la_ssl=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_ssl=1..}] at @s run scoreboard players set @s la_ssl 0

execute as @a[scores={la_sw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sw=1..}] at @s run scoreboard players set @s la_sw 0

execute as @a[scores={la_ssw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_ssw=1..}] at @s run scoreboard players set @s la_ssw 0

# dark_oak
execute as @a[scores={la_dal=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_dal=1..}] at @s run scoreboard players set @s la_dal 0

execute as @a[scores={la_sdal=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sdal=1..}] at @s run scoreboard players set @s la_sdal 0

execute as @a[scores={la_sdal=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sdal=1..}] at @s run scoreboard players set @s la_sdal 0

execute as @a[scores={la_sdaw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sdaw=1..}] at @s run scoreboard players set @s la_sdaw 0

# jungle
execute as @a[scores={la_jl=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_jl=1..}] at @s run scoreboard players set @s la_jl 0

execute as @a[scores={la_sjl=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sjl=1..}] at @s run scoreboard players set @s la_sjl 0

execute as @a[scores={la_jw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_jw=1..}] at @s run scoreboard players set @s la_jw 0

execute as @a[scores={la_sjw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sjw=1..}] at @s run scoreboard players set @s la_sjw 0

# acacia
execute as @a[scores={la_al=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_al=1..}] at @s run scoreboard players set @s la_al 0

execute as @a[scores={la_sal=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_sal=1..}] at @s run scoreboard players set @s la_sal 0

execute as @a[scores={la_aw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_aw=1..}] at @s run scoreboard players set @s la_aw 0

execute as @a[scores={la_saw=1..}] at @s run scoreboard players add @s la_block_mined 1
execute as @a[scores={la_saw=1..}] at @s run scoreboard players set @s la_saw 0

## tag control
tag @a[tag=la_axe] remove la_axe
tag @a[nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b,tag:{display:{Name:"{\"text\":\"LumberAxe\",\"color\":\"aqua\"}",Lore:["§bThis axe chops down whole trees"]}}}},tag=!la_axe] add la_axe

execute as @a[tag=la_axe,scores={la_used=1..,la_block_mined=1..}] at @s run function lumberaxe:items_tag
execute as @a[tag=la_axe,scores={la_used=1..,la_block_mined=1..}] at @s run data merge entity @e[type=item,distance=..6,tag=la_item,sort=nearest,limit=1] {Motion:[0.0d,0.0d,0.0d],NoGravity:1b} 
execute as @a[tag=la_axe,scores={la_used=1..,la_block_mined=1..}] at @s run function lumberaxe:raycast_init
execute as @a[tag=la_axe,scores={la_used=1..}] at @s run scoreboard players set @s la_used 0
execute as @a[tag=la_axe,scores={la_block_mined=1..}] at @s run scoreboard players set @s la_block_mined 0

execute as @e[type=area_effect_cloud,tag=la_chopcloud,tag=la_base_chopcloud] at @s if block ~ ~1 ~ #lumberaxe:logs unless block ~ ~ ~ #lumberaxe:logs run function lumberaxe:chopping_loop
execute as @e[type=area_effect_cloud,tag=la_chopcloud,tag=!la_base_chopcloud] at @s run function lumberaxe:chopping_loop
