#advancement grant @s only minecraft:adventure/spellbound_all_weapons crucible

execute unless score @s spellbound_crucible_hitcool matches 24.. run scoreboard players add @s spellbound_crucible_hitcool 1


item modify entity @s weapon.mainhand spellbound_weapons:stats/crucible

#attribute @s minecraft:attack_speed base set 3.2
#attribute @s minecraft:attack_damage base set 2.5

execute store result score @s spellbound_crucible_dye run data get entity @s SelectedItem.components.minecraft:custom_data.CrucibleDye


execute if predicate spellbound_weapons:chance/10_percent positioned ^-.25 ^ ^.5 run particle electric_spark ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]


execute if score @s spellbound_crucible_dye matches 1 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.710,0.118,0.051],scale:1,to_color:[0.969,0.490,1.000]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 2 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[1.000,0.533,0.000],scale:1,to_color:[1.000,0.012,0.012]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 3 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[1.000,0.839,0.027],scale:1,to_color:[1.000,0.824,0.761]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 4 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.506,1.000,0.012],scale:1,to_color:[1.000,0.867,0.188]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 5 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.114,0.941,0.525],scale:1,to_color:[0.710,1.000,0.329]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 6 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.000,0.765,0.851],scale:1,to_color:[0.000,0.506,0.659]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 7 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.631,0.890,1.000],scale:1,to_color:[0.169,0.694,1.000]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 8 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.000,0.200,1.000],scale:1,to_color:[0.000,0.667,1.000]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 9 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.702,0.000,1.000],scale:1,to_color:[0.035,0.071,1.000]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 10 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[1.000,0.051,1.000],scale:1,to_color:[0.725,0.075,1.000]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 11 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[1.000,0.290,0.643],scale:1,to_color:[0.973,0.051,1.000]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 12 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.800,0.329,0.094],scale:1,to_color:[0.588,0.000,0.000]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 13 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[1.000,1.000,1.000],scale:1,to_color:[0.784,0.796,0.980]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 14 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.729,0.851,0.910],scale:1,to_color:[0.655,0.663,0.831]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 15 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.616,0.647,0.659],scale:1,to_color:[0.439,0.447,0.561]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]
execute if score @s spellbound_crucible_dye matches 16 positioned ^-.25 ^ ^.5 run particle dust_color_transition{from_color:[0.439,0.439,0.439],scale:1,to_color:[0.000,0.000,0.000]} ~ ~1 ~ .4 .4 .4 0 1 force @a[distance=..64]


execute if score @s spellbound_crucible_energy matches 0 run scoreboard players set @s spellbound_crucible_energy 1

scoreboard players set @s spelbloud_crucible_lastused 0


scoreboard players add @s spellbound_crucible_energy 0

execute if score @s spellbound_crucible_energy matches 0..499 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Energy - "},{"score":{"objective":"spellbound_crucible_energy","name": "@s"}},{"translate": "/500"}]


# oh you, lost the energy thats pretty unfortunate lol lol trolled 

execute if score @s[tag=spellbound_player_crucible1] spellbound_crucible_energy matches ..499 run playsound minecraft:block.conduit.deactivate player @a[distance=..20] ~ ~ ~ .5 1.9
execute if score @s[tag=spellbound_player_crucible1] spellbound_crucible_energy matches ..499 run tag @s remove spellbound_player_crucible1


# ENERGY MAXED !!!


execute if score @s[tag=!spellbound_player_crucible1] spellbound_crucible_energy matches 500.. run function spellbound_weapons:crucible/charged

execute if score @s spellbound_crucible_energy matches 500.. positioned ~ ~.8 ~ rotated ~ 0 run particle electric_spark ^-.2 ^ ^1 .4 .4 .4 .15 2 force @a[distance=..64]

execute if score @s spellbound_crucible_energy matches 500.. run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Press "},{"keybind":"key.sneak","color":"yellow"},{"translate":" to release stored energy - 500"},{"translate": "/500"}]


# Press "},{"keybind":"key.sneak","color":"yellow"},{"translate":" and release!!!
execute if score @s spellbound_crucible_energy matches 500.. if entity @s[predicate=spellbound_weapons:sneaking] run function spellbound_weapons:crucible/release_energy


# limit
execute if score @s spellbound_crucible_energy matches 541.. run scoreboard players set @s spellbound_crucible_energy 540


# loses energy overtime btw 

