# hot red energy stuff 


scoreboard players add @s spellbound_count 1
execute if score @s spellbound_count matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_crucible=1..}] Rotation[1]
execute if score @s spellbound_count matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_crucible=1..}] Rotation[0]

execute if score @s spellbound_count matches 1.. run tp @s ^ ^ ^.4

execute if score @s spellbound_count matches 1..8 run particle flash ~ ~ ~ 0 0 0 0 2 force @a[distance=..128]


execute if score @s spellbound_crucible_dye matches 1 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.710 0.118 0.051 2.25 0.965 0.490 1.000 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 2 positioned ^-.25 ^ ^.5 run particle dust_color_transition 1.000 0.533 0.000 2.25 1.000 0.012 0.012 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 3 positioned ^-.25 ^ ^.5 run particle dust_color_transition 1.000 0.839 0.031 2.25 1.000 0.824 0.761 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 4 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.506 1.000 0.012 2.25 1.000 0.867 0.188 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 5 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.114 0.941 0.525 2.25 0.710 1.000 0.329 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 6 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.020 0.671 0.949 2.25 0.008 0.902 0.694 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 7 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.761 0.929 1.000 2.25 0.051 1.000 0.906 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 8 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.000 0.200 1.000 2.25 0.000 0.667 1.000 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 9 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.702 0.000 1.000 2.25 0.039 0.071 1.000 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 10 positioned ^-.25 ^ ^.5 run particle dust_color_transition 1.000 0.051 1.000 2.25 0.725 0.078 1.000 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 11 positioned ^-.25 ^ ^.5 run particle dust_color_transition 1.000 0.290 0.643 2.25 0.969 0.051 1.000 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 12 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.800 0.329 0.094 2.25 0.588 0.000 0.000 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 13 positioned ^-.25 ^ ^.5 run particle dust_color_transition 1.000 1.000 1.000 2.25 0.784 0.796 0.980 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 14 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.729 0.851 0.910 2.25 0.655 0.663 0.831 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 15 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.616 0.647 0.659 2.25 0.439 0.447 0.561 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]
execute if score @s spellbound_crucible_dye matches 16 positioned ^-.25 ^ ^.5 run particle dust_color_transition 0.439 0.439 0.439 2.25 0 0 0 ~ ~1 ~ 1 1 1 0 6 force @a[distance=..128]





particle electric_spark ~ ~ ~ 1.2 1.2 1.2 .2 3 normal @a[distance=..64]
execute if predicate 1_splatus:spellbound/chance/50_percent run particle end_rod ~ ~ ~ .8 .8 .8 0 1 force @a[distance=..64]
execute as @e[distance=..3.5,type=!area_effect_cloud,type=!marker,tag=!spellbound_player_immunetocrucible] run function 1_splatus:spellbound/crucible/stun_them
execute if score @s spellbound_count matches 60.. run kill @s