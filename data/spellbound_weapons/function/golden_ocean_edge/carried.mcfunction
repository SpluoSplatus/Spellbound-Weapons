### helps to make mobs suffocating in a wall get back out. 
# the wave can sometimes go through walls, but it would be a bit too op if mobs could basically be install killed by doing so 

scoreboard players add @s spellbound_golden_ocean_edge_carried 1

execute if score @s spellbound_golden_ocean_edge_carried matches 1.. unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~.5 ~
execute if score @s spellbound_golden_ocean_edge_carried matches 1..10 run data merge entity @s {Fire:0}

execute if score @s spellbound_golden_ocean_edge_carried matches 100.. run tag @s remove spellbound_golden_ocean_edge_iscarried
execute if score @s spellbound_golden_ocean_edge_carried matches 100.. run scoreboard players reset @s spellbound_golden_ocean_edge_carried

