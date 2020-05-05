#player tags

#player ids
tag @r[tag=!vf_setup] add vf_setmeup
execute if entity @a[tag=vf_setmeup] run scoreboard players add #playercount vf_player 1
scoreboard players operation @a[tag=vf_setmeup] vf_player = #playercount vf_player
tag @a[tag=vf_setmeup] add vf_setup
tag @a[tag=vf_setmeup] remove vf_setmeup

#player has dealt damage: vf_dmg_dealt
tag @a[tag=vf_dmg_dealt] remove vf_dmg_dealt
tag @a[scores={vf_dmg_dealt=1..}] add vf_dmg_dealt
scoreboard players reset @a[scores={vf_dmg_dealt=1..}] vf_dmg_dealt

#player has taken damae: vf_dmg_taken
tag @a[tag=vf_dmg_taken] remove vf_dmg_taken
tag @a[scores={vf_dmg_taken=1..}] add vf_dmg_taken
scoreboard players reset @a[scores={vf_dmg_taken=1..}] vf_dmg_taken

#player is sprinting: vf_sprinting
tag @a[tag=vf_sprinting] remove vf_sprinting
tag @a[scores={vf_sprint=1..}] add vf_sprinting
scoreboard players reset @a[scores={vf_sprint=1..}] vf_sprint

#player is sneaking: vf_sneaking
tag @a[tag=vf_sneaking] remove vf_sneaking
tag @a[scores={vf_sneak=1..}] add vf_sneaking
scoreboard players reset @a[scores={vf_sneak=1..}] vf_sneak

#player is on ground: vf_ground
tag @a[tag=vf_ground,nbt={OnGround:0b}] remove vf_ground
tag @a[nbt={OnGround:1b}] add vf_ground

#player is jumping: vf_jumping
tag @a[tag=vf_jumping,tag=vf_ground] remove vf_jumping
tag @a[scores={vf_jump=1..}] add vf_jumping

#player jumped: vf_jump
tag @a[tag=vf_jumped] remove vf_jumped
tag @a[scores={vf_jump=1..}] add vf_jumped
scoreboard players reset @a[scores={vf_jump=1..}] vf_jump

#player clicked carrot_on_a_stick: vf_coas
tag @a[tag=vf_coas] remove vf_coas
tag @a[scores={vf_coas=1..}] add vf_coas
scoreboard players reset @a[scores={vf_coas=1..}] vf_coas

#player spawned: vf_spawned
tag @a[tag=vf_spawned] remove vf_spawned
tag @a[scores={vf_since_death=10}] add vf_spawned
