#adding scoreboards

scoreboard objectives add vf_dmg_dealt minecraft.custom:minecraft.damage_dealt {"text":"Damage Dealt","color":"aqua"}
scoreboard objectives add vf_dmg_taken minecraft.custom:minecraft.damage_taken {"text":"Damage Taken","color":"aqua"}
scoreboard objectives add vf_sprint minecraft.custom:minecraft.sprint_one_cm {"text":"Sprinting","color":"aqua"}
scoreboard objectives add vf_swim minecraft.custom:minecraft.swim_one_cm {"text":"Swimming","color":"aqua"}
scoreboard objectives add vf_jump minecraft.custom:minecraft.jump {"text":"Jumped","color":"aqua"}
scoreboard objectives add vf_sneak minecraft.custom:minecraft.sneak_time {"text":"Sneaking","color":"aqua"}
scoreboard objectives add vf_food food {"text":"Food","color":"aqua"}
scoreboard objectives add vf_armor armor {"text":"Armor","color":"aqua"}
scoreboard objectives add vf_level level {"text":"Level","color":"aqua"}
scoreboard objectives add vf_xp xp {"text":"XP","color":"aqua"}
scoreboard objectives add vf_health health {"text":"Health","color":"aqua"}
scoreboard objectives add vf_air air {"text":"Air","color":"aqua"}
scoreboard objectives add vf_coas minecraft.used:minecraft.carrot_on_a_stick {"text":"Used COAS","color":"aqua"}
scoreboard objectives add vf_playerkill playerKillCount {"text":"Killed Player","color":"aqua"}
scoreboard objectives add vf_since_death minecraft.custom:minecraft.time_since_death {"text":"Time Since Death","color":"aqua"}

scoreboard objectives add vf_result dummy {"text":"Result","color":"gold"}
scoreboard objectives add vf_random dummy {"text":"Random","color":"gold"}
scoreboard players set #2 vf_random 2
scoreboard players set #a vf_random 214013
scoreboard players set #x vf_random 1
scoreboard objectives add vf_player dummy {"text":"Player ID","color":"gold"}
