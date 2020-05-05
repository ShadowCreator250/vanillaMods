#tags updaten?
function vf:playerstates

#execute as @a[tag=vf_jumping] at @s run scoreboard players set #range vf_random 100
#execute as @a[tag=vf_jumping] run function vf:random
# random in range of [0;99]

#Tags
#vf_dmg_dealt Dieser tag hat der Spieler, wenn er Schaden austeilt.
#vf_dmg_taken Dieser tag hat ein Spieler, der Schaden bekommen hat.
#vf_sprinting Jeder, der sprintet, hat diesen Tag.
#vf_sneaking Jeder, der sneakt, hat diesen Tag.
#vf_ground Alle Spieler, die auf dem Boden sind, bekommen vf_ground.
#vf_jumping Ein Spieler, der springt, hat diesen Tag in dem Tick, in dem er gesprungen ist.
#vf_jumped Ein Spieler, der gesprungen ist, hat diesen Tag solange bis er wieder auf dem Boden ist.
#vf_coas Alle Spieler, die Rechtsklick auf eine Carrot on a stick gemacht haben, bekommen diesen Tag für einen Tick.
#vf_spawned Ein Spieler, der respawnt nach einem Tod.

#Scores
#vf_swim Wieviel jemand geschwommen ist.
#vf_food Wie viel Essen/Hunger ein Spieler hat.
#vf_armor Wie viele Rüstungspunkte jemand hat.
#vf_xp Anzahl der xp-Punkte
#vf_level Anzahl der xp-Level
#vf_health Wie viel Herzen ein Spieler hat.
#vf_air Wie viel Luft ein Spieler hat.
#vf_playerkill Wie viele Spieler ein Spieler getötet hat.