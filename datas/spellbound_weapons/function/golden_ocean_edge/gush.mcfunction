scoreboard players add @s spellbound_count 1


particle cloud ~ ~ ~.2 0 0 0 0 1 force @a[distance=..128]
particle cloud ~ ~ ~-.2 0 0 0 0 1 force @a[distance=..128]
particle cloud ~.2 ~ ~ 0 0 0 0 1 force @a[distance=..128]
particle cloud ~-.2 ~ ~ 0 0 0 0 1 force @a[distance=..128]


execute unless block ~ ~-.5 ~ #spellbound_weapons:permeable run function spellbound_weapons:golden_ocean_edge/gush_loop
execute unless block ~ ~-.5 ~ #spellbound_weapons:permeable run kill @s

execute if score @s spellbound_count matches 1..5 run tp @s ~ ~-.1 ~
execute if score @s spellbound_count matches 6..10 run tp @s ~ ~-.3 ~
execute if score @s spellbound_count matches 11..15 run tp @s ~ ~-.5 ~
execute if score @s spellbound_count matches 16..20 run tp @s ~ ~-1 ~
execute if score @s spellbound_count matches 21.. run tp @s ~ ~-1.25 ~
