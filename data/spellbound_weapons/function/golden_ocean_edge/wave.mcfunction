scoreboard players add @s spellbound_count 1
#execute if score @s spellbound_count matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_golden_ocean_edge=1..}] Rotation[1]
execute if score @s spellbound_count matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_golden_ocean_edge=1..}] Rotation[0]







#LAVA!!!! 
execute if block ~ ~ ~ lava run kill @s
execute if block ~ ~ ~ #spellbound_weapons:fire if predicate spellbound_weapons:chance/20_percent run function spellbound_weapons:golden_ocean_edge/wave_remove_fire

execute if score @s spellbound_count matches 2.. at @s if block ~ ~-0.25 ~ #spellbound_weapons:permeable unless block ~ ~ ~ water run tp @s ~ ~-0.25 ~
execute if score @s spellbound_count matches 2.. at @s unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~0.25 ~


particle minecraft:falling_water ~ ~.4 ~ .2 .4 .2 1 10 force @a[distance=..128]
particle minecraft:block blue_concrete ~ ~ ~ ~ ~1000000000 ~ 0.000000001 0 force @a[distance=..128]
execute if predicate spellbound_weapons:chance/25_percent run particle poof ~ ~ ~ ~ ~1000000000 ~ 0.00000000005 0 force @a[distance=..128]
#particle falling_water ~ ~ ~ .2 .2 .2 0 14 force @a[distance=..64]





execute if score @s spellbound_count matches 2.. at @s run tp @s ^ ^ ^.25

execute at @s if block ^ ^ ^.3 #spellbound_weapons:permeable run tag @e[distance=..0.599,type=!#spellbound_weapons:misc,nbt=!{NoAI:1b}] add spellbound_golden_ocean_edge_iscarried
execute at @s if block ^ ^ ^.3 #spellbound_weapons:permeable run tp @e[distance=..0.599,type=!#spellbound_weapons:misc,nbt=!{NoAI:1b}] ~ ~ ~

execute if score @s spellbound_count matches 2..9 at @s run tp @s ^ ^ ^.25

execute if score @s spellbound_count matches 2..9 at @s if block ^ ^ ^.3 #spellbound_weapons:permeable run tag @e[distance=..0.599,type=!#spellbound_weapons:misc,nbt=!{NoAI:1b}] add spellbound_golden_ocean_edge_iscarried
execute if score @s spellbound_count matches 2..9 at @s if block ^ ^ ^.3 #spellbound_weapons:permeable run tp @e[distance=..0.599,type=!#spellbound_weapons:misc,nbt=!{NoAI:1b}] ~ ~ ~


#kill events 

execute if score @s spellbound_count matches 11.. run particle minecraft:block blue_concrete ~ ~ ~ .1 .1 .1 1 6 normal
execute if score @s spellbound_count matches 11.. run particle cloud ~ ~ ~ ~ ~1000000000 ~ 0.00000000001 0 normal
execute if score @s spellbound_count matches 11.. run kill @s
