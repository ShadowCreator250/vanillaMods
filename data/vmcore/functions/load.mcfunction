scoreboard players reset @a vm_console
scoreboard objectives add vm_status dummy [{"text":"VanillaMods_status","color":"green"}]
scoreboard objectives add vm_console trigger [{"text":"VM-Console-Trigger","color":"green"}]
scoreboard objectives add vm_timer dummy [{"text":"VM-shared-Timer","color":"green"}]

tellraw @a [{"text":"[Server] Datapack "},{"text":"VanillaMods","color":"green"},{"text":" by "},{"text":"ShadowCreator250","color":"gold"},{"text":" was loaded successfully."}]

execute unless score #setup vm_status matches 1.. run scoreboard players set #setup vm_status 0

gamerule maxCommandChainLength 100000