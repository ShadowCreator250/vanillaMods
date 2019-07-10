#Place Control
execute as @e[name=BlockBreaker,type=armor_stand,tag=!old,tag=new] at @s if block ~ ~ ~ #vmcore:noblocks run setblock ~ ~ ~ daylight_detector replace
execute as @e[name=BlockBreaker,type=armor_stand,tag=!old,tag=new] at @s run tag @s add old
execute as @e[name=BlockBreaker,type=armor_stand,tag=old,tag=new] at @s run tag @s remove new

# Destroy Control
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run function blockbreaker:give
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run particle minecraft:block minecraft:iron_block ~ ~1 ~ 0.5 0.5 0.5 0.0001 30
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:daylight_detector"}}]
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,distance=..20] at @s if block ~ ~ ~ #vmcore:noblocks run kill @s

# active control
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,distance=..30,tag=bb_active] at @s if block ~ ~ ~ daylight_detector[inverted=true] run tag @s remove bb_active
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,distance=..30,tag=!bb_active] at @s if block ~ ~ ~ daylight_detector[inverted=false] run tag @s add bb_active

# Lifetime actions
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,distance=..30,tag=bb_active] at @s run tp @s ~ ~ ~ ~3 ~
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,tag=bb_active] at @s run tp @e[type=item,distance=0.5..2.3,tag=!bb_i_tpd] ~ ~-0.3 ~
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,tag=bb_active] at @s run tag @e[type=item,distance=..0.4,tag=!bb_i_tpd] add bb_i_tpd
execute as @a at @s as @e[name=BlockBreaker,type=armor_stand,tag=old,tag=bb_active] at @s anchored eyes unless block ^ ^ ^1 #vmcore:unbreakable run setblock ^ ^ ^1 air destroy
