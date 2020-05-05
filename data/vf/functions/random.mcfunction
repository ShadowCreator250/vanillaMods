#wenn entity eine random zahl haben will
#scoreboard players set #range vf_random 30
#function vf:random


scoreboard players operation #x vf_random *= #a vf_random
scoreboard players add #x vf_random 2531011

scoreboard players operation @s vf_random = #x vf_random
scoreboard players operation @s vf_random /= #2 vf_random
scoreboard players add @s vf_random 1073741824
scoreboard players operation @s vf_random %= #range vf_random
