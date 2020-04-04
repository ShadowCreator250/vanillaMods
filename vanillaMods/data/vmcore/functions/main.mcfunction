# setup
execute if score #setup vm_status matches ..0 run function vmcore:setup

# Console Control
scoreboard players reset @a[tag=!vm_admin] vm_console
scoreboard players enable @a[tag=vm_admin] vm_console
execute as @a[scores={vm_console=1..}] at @s run function vmcore:give_console

# Mod Load Control
execute if score #eh_active vm_status matches 2.. run function enderhopper:load
execute if score #eh_active vm_status matches 2.. run scoreboard players set #eh_active vm_status 1

execute if score #et_active vm_status matches 2.. run function endertag:load
execute if score #et_active vm_status matches 2.. run scoreboard players set #et_active vm_status 1

execute if score #sm_active vm_status matches 2.. run function seedmod:load
execute if score #sm_active vm_status matches 2.. run scoreboard players set #sm_active vm_status 1

execute if score #bb_active vm_status matches 2.. run function blockbreaker:load
execute if score #bb_active vm_status matches 2.. run scoreboard players set #bb_active vm_status 1

execute if score #la_active vm_status matches 2.. run function lumberaxe:load
execute if score #la_active vm_status matches 2.. run scoreboard players set #la_active vm_status 1

execute if score #af_active vm_status matches 2.. run function autofields:load
execute if score #af_active vm_status matches 2.. run scoreboard players set #af_active vm_status 1

# Mod Unload/Uninstall Control
execute if score #eh_active vm_status matches ..-1 run function enderhopper:unload
execute if score #eh_active vm_status matches ..-1 run scoreboard players set #eh_active vm_status 0

execute if score #et_active vm_status matches ..-1 run function endertag:unload
execute if score #et_active vm_status matches ..-1 run scoreboard players set #et_active vm_status 0

execute if score #sm_active vm_status matches ..-1 run function seedmod:unload
execute if score #sm_active vm_status matches ..-1 run scoreboard players set #sm_active vm_status 0

execute if score #bb_active vm_status matches ..-1 run function blockbreaker:unload
execute if score #bb_active vm_status matches ..-1 run scoreboard players set #bb_active vm_status 0

execute if score #la_active vm_status matches ..-1 run function lumberaxe:unload
execute if score #la_active vm_status matches ..-1 run scoreboard players set #la_active vm_status 0

execute if score #af_active vm_status matches ..-1 run function autofields:unload
execute if score #af_active vm_status matches ..-1 run scoreboard players set #af_active vm_status 0

# Mod Tick Control
execute run function customcraftinglib:main
execute if score #eh_active vm_status matches 1 run function enderhopper:main
execute if score #et_active vm_status matches 1 run function endertag:main
execute if score #sm_active vm_status matches 1 run function seedmod:main
execute if score #bb_active vm_status matches 1 run function blockbreaker:main
execute if score #la_active vm_status matches 1 run function lumberaxe:main
execute if score #af_active vm_status matches 1 run function autofields:main
