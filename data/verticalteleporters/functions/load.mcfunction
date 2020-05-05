tellraw @a[tag=vm_admin] [{"text":"[VanillaMods-Core] "},{"text":"The add-on "},{"text":"verticalteleporters ","color":"red"},{"text":"is now active."}]
function vmcore:turnon
scoreboard objectives add vt_distance dummy [{"text":"VT-raycast-distance","color":"light_purple"}]