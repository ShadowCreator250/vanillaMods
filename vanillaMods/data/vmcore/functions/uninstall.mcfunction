scoreboard objectives remove vm_status
scoreboard objectives remove vm_console
tag @a[tag=vm_admin] remove vm_admin
tellraw @s [{"text":"\n[Server] ","color":"white","bold":false,"underlined":false},{"text":"Datapack ","color":"red","bold":false,"underlined":false},{"text":"VanillaMods ","color":"green","bold":false,"underlined":false},{"text":"was uninstalled. You can now save&quit the world. After that remove the Datapack folder (vanillaMods) from your datapacks directory (in the world directory). ","color":"red","bold":false,"underlined":false}]
