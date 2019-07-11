tellraw @s [{"text":"\n\n\n>>> VanillaMod Console <<<\n","color":"green","bold":true,"underlined":true}]

tellraw @s [{"text":"CustomCraftingLib:  ","color":"gold","bold":true},{"text":"  [get items]","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function customcraftinglib:give_advanced"}}]
tellraw @s [{"text":"EnderHopper:  ","color":"dark_purple","bold":true},{"text":"[off]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score #eh_active vm_status matches 0.. run scoreboard players set #eh_active vm_status -1"},"bold":false},{"text":" ","color":"none"},{"text":"[on]","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score #eh_active vm_status matches ..0 run scoreboard players set #eh_active vm_status 2"}},{"text":"  [get items]","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function enderhopper:give_advanced"}},{"text":"  < status: ","color":"gold","bold":false},{"score":{"name":"#eh_active","objective":"vm_status"},"color":"gold","bold":false},{"text":" >","color":"gold","bold":false}]
tellraw @s [{"text":"EnderTag:  ","color":"dark_purple","bold":true},{"text":"[off]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score #et_active vm_status matches 0.. run scoreboard players set #et_active vm_status -1"},"bold":false},{"text":" ","color":"none"},{"text":"[on]","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score #et_active vm_status matches ..0 run scoreboard players set #et_active vm_status 2"}},{"text":"  [get items]","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function endertag:give"}},{"text":"  < status: ","color":"gold","bold":false},{"score":{"name":"#et_active","objective":"vm_status"},"color":"gold","bold":false},{"text":" >","color":"gold","bold":false}]
tellraw @s [{"text":"SeedMod:  ","color":"dark_green","bold":true},{"text":"[off]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score #sm_active vm_status matches 0.. run scoreboard players set #sm_active vm_status -1"},"bold":false},{"text":" ","color":"none"},{"text":"[on]","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score #sm_active vm_status matches ..0 run scoreboard players set #sm_active vm_status 2"}},{"text":"  [get items]","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function seedmod:give"}},{"text":"  < status: ","color":"gold","bold":false},{"score":{"name":"#sm_active","objective":"vm_status"},"color":"gold","bold":false},{"text":" >","color":"gold","bold":false}]
tellraw @s [{"text":"BlockBreaker:  ","color":"red","bold":true},{"text":"[off]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score #bb_active vm_status matches 0.. run scoreboard players set #bb_active vm_status -1"},"bold":false},{"text":" ","color":"none"},{"text":"[on]","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score #bb_active vm_status matches ..0 run scoreboard players set #bb_active vm_status 2"}},{"text":"  [get items]","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function blockbreaker:give_advanced"}},{"text":"  < status: ","color":"gold","bold":false},{"score":{"name":"#bb_active","objective":"vm_status"},"color":"gold","bold":false},{"text":" >","color":"gold","bold":false}]

tellraw @s [{"text":"\n[Click here to get all necessary items of every mod for testing purpose.]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/function #vmcore:gives"}}]
tellraw @s [{"text":"[Click here to uninstall VanillaMods from your world]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function vmcore:uninstall"}}]
scoreboard players reset @s vm_console
scoreboard players enable @s vm_console
