#"enderhopper:main",
#"seedmod:main",
#"endertag:main",
#"customcraftinglib:main"

#"enderhopper:load",
#"seedmod:load",
#"endertag:load",
#"customcraftinglib:load"

# setup
execute if score #setup vm_status matches ..0 run function customcraftinglib:load
execute if score #setup vm_status matches ..0 run function vmcore:setup

# Console Control
scoreboard players enable @a[tag=vm_admin] vm_console
execute as @a[scores={vm_console=1..}] at @s run function vmcore:consoletext

# Mod Load Control
execute if score #eh_active vm_status matches 2.. run function enderhopper:load
execute if score #eh_active vm_status matches 2.. run scoreboard players set #eh_active vm_status 1

execute if score #et_active vm_status matches 2.. run function endertag:load
execute if score #et_active vm_status matches 2.. run scoreboard players set #et_active vm_status 1

execute if score #sm_active vm_status matches 2.. run function seedmod:load
execute if score #sm_active vm_status matches 2.. run scoreboard players set #sm_active vm_status 1

# Mod Unload/Uninstall Control
execute if score #eh_active vm_status matches ..-1 run say hi.2
execute if score #eh_active vm_status matches ..-1 run scoreboard players set #eh_active vm_status 0

execute if score #et_active vm_status matches ..-1 run say hi.3
execute if score #et_active vm_status matches ..-1 run scoreboard players set #et_active vm_status 0

execute if score #sm_active vm_status matches ..-1 run say hi.4
execute if score #sm_active vm_status matches ..-1 run scoreboard players set #sm_active vm_status 0

# Mod Tick Control
execute run function customcraftinglib:main
execute if score #eh_active vm_status matches 1 run function enderhopper:main
execute if score #et_active vm_status matches 1 run function endertag:main
execute if score #sm_active vm_status matches 1 run function seedmod:main

# TODO: give button (blue) for every mod; uninstall button vm_console for vm_core; Let the machies work under water -> include water in #gases
