scoreboard players add temp spellbound_count 1

particle dust 0.114 0.522 0.059 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]

execute if entity @e[tag=spellbound_temp,distance=..0.5,type=marker] run scoreboard players set temp spellbound_count 20
execute unless score temp spellbound_count matches 20.. positioned ^ ^ ^.5 run function 1_splatus:spellbound/thorn_blossom/particle_raycast

scoreboard players reset temp spellbound_count