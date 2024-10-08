
execute store result score @s spellbound_randomizer_output run random value 1..21

clear @s #spellbound_weapons:weapon

execute if score @s spellbound_randomizer_output matches 1 run function spellbound_weapons:items/blazeblade
execute if score @s spellbound_randomizer_output matches 2 run function spellbound_weapons:items/cursed_sea_blade
execute if score @s spellbound_randomizer_output matches 3 run function spellbound_weapons:items/crucible
execute if score @s spellbound_randomizer_output matches 4 run function spellbound_weapons:items/dagger
execute if score @s spellbound_randomizer_output matches 5 run function spellbound_weapons:items/end_excalibur
execute if score @s spellbound_randomizer_output matches 6 run function spellbound_weapons:items/evokers_wrath
execute if score @s spellbound_randomizer_output matches 7 run function spellbound_weapons:items/thorn_blossom
execute if score @s spellbound_randomizer_output matches 8 run function spellbound_weapons:items/moonlight_edge
execute if score @s spellbound_randomizer_output matches 9 run function spellbound_weapons:items/mega_hammer
execute if score @s spellbound_randomizer_output matches 10 run function spellbound_weapons:items/windswept_sword
execute if score @s spellbound_randomizer_output matches 11 run function spellbound_weapons:items/withering_sword
execute if score @s spellbound_randomizer_output matches 12 run function spellbound_weapons:items/blowgun
execute if score @s spellbound_randomizer_output matches 13 run function spellbound_weapons:items/bone_wand
execute if score @s spellbound_randomizer_output matches 14 run function spellbound_weapons:items/chainfiring
execute if score @s spellbound_randomizer_output matches 15 run function spellbound_weapons:items/thorn_blossom_diamond
execute if score @s spellbound_randomizer_output matches 16 run function spellbound_weapons:items/electric_staff
execute if score @s spellbound_randomizer_output matches 17 run function spellbound_weapons:items/endlight
execute if score @s spellbound_randomizer_output matches 18 run function spellbound_weapons:items/fire_staff
execute if score @s spellbound_randomizer_output matches 19 run function spellbound_weapons:items/ice_staff
execute if score @s spellbound_randomizer_output matches 20 run function spellbound_weapons:items/magmus_bow
execute if score @s spellbound_randomizer_output matches 21 run function spellbound_weapons:items/zg_crossbow

execute store result score @s spellbound_randomizer_output run random value 1..21

kill @e[distance=..0.0001,type=item]

execute if score @s spellbound_randomizer_output matches 1 run function spellbound_weapons:items/blazing_sword
execute if score @s spellbound_randomizer_output matches 2 run function spellbound_weapons:items/cursed_sea_blade
execute if score @s spellbound_randomizer_output matches 3 run function spellbound_weapons:items/crucible
execute if score @s spellbound_randomizer_output matches 4 run function spellbound_weapons:items/dagger
execute if score @s spellbound_randomizer_output matches 5 run function spellbound_weapons:items/end_excalibur
execute if score @s spellbound_randomizer_output matches 6 run function spellbound_weapons:items/evokers_wrath
execute if score @s spellbound_randomizer_output matches 7 run function spellbound_weapons:items/golden_ocean_edge
execute if score @s spellbound_randomizer_output matches 8 run function spellbound_weapons:items/moonlight_edge
execute if score @s spellbound_randomizer_output matches 9 run function spellbound_weapons:items/mega_hammer
execute if score @s spellbound_randomizer_output matches 10 run function spellbound_weapons:items/windswept_sword
execute if score @s spellbound_randomizer_output matches 11 run function spellbound_weapons:items/withering_sword
execute if score @s spellbound_randomizer_output matches 12 run function spellbound_weapons:items/blowgun
execute if score @s spellbound_randomizer_output matches 13 run function spellbound_weapons:items/bone_wand
execute if score @s spellbound_randomizer_output matches 14 run function spellbound_weapons:items/chainfiring
execute if score @s spellbound_randomizer_output matches 15 run function spellbound_weapons:items/echo_wand
execute if score @s spellbound_randomizer_output matches 16 run function spellbound_weapons:items/electric_staff
execute if score @s spellbound_randomizer_output matches 17 run function spellbound_weapons:items/endlight
execute if score @s spellbound_randomizer_output matches 18 run function spellbound_weapons:items/fire_staff
execute if score @s spellbound_randomizer_output matches 19 run function spellbound_weapons:items/ice_staff
execute if score @s spellbound_randomizer_output matches 20 run function spellbound_weapons:items/magmus_bow
execute if score @s spellbound_randomizer_output matches 21 run function spellbound_weapons:items/zg_crossbow


scoreboard players reset @s spellbound_randomizer_output
