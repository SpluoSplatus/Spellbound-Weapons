#dash functions
scoreboard players add @s spellbound_golden_ocean_edge_effect 1

execute if block ~ ~0.2 ~ #spellbound_weapons:air unless score @s spellbound_golden_ocean_edge_effect2 matches 1.. run function spellbound_weapons:golden_ocean_edge/jump



execute if block ~ ~ ~ #spellbound_weapons:allows_water_dashing unless block ~ ~ ~ lava if block ^ ^ ^.7 #spellbound_weapons:permeable if score @s spellbound_golden_ocean_edge_effect matches 1..20 run tp @s ^ ^ ^.7
execute if block ~ ~ ~ #spellbound_weapons:allows_water_dashing unless block ~ ~ ~ lava if block ^ ^ ^.3 #spellbound_weapons:permeable if score @s spellbound_golden_ocean_edge_effect matches 21..30 run tp @s ^ ^ ^.2
execute if block ~ ~ ~ #spellbound_weapons:allows_water_dashing unless block ~ ~ ~ lava if block ^ ^ ^.1 #spellbound_weapons:permeable if score @s spellbound_golden_ocean_edge_effect matches 31..40 run tp @s ^ ^ ^.07
execute if block ~ ~ ~ #spellbound_weapons:allows_water_dashing unless block ~ ~ ~ lava if block ^ ^ ^.1 #spellbound_weapons:permeable if score @s spellbound_golden_ocean_edge_effect matches 41..45 run tp @s ^ ^ ^.02



execute unless block ~ ~ ~ lava run particle effect ~ ~.5 ~ .2 .2 .2 1 5 force @a[distance=..32]
execute unless block ~ ~ ~ lava run particle minecraft:sculk_charge_pop ~ ~.5 ~ .3 .3 .3 .025 3 force @a[distance=..32]













execute if score @s spellbound_golden_ocean_edge_effect matches 60.. run effect clear @s dolphins_grace
execute if score @s spellbound_golden_ocean_edge_effect matches 60.. run scoreboard players reset @s spellbound_golden_ocean_edge_effect