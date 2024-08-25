execute as @s run loot spawn ~ ~ ~ loot 1_splatus:spellbound/other/randomize_11

execute store result score @s spellbound_randomizer_output run data get entity @e[distance=..0.01,type=item,limit=1] Item.tag.SpellboundRandomizerOutput

kill @e[distance=..0.0001,type=item]

clear @s #1_splatus:spellbound/weapon

execute if score @s spellbound_randomizer_output matches 1 run function 1_splatus:spellbound/items/blazing_sword
execute if score @s spellbound_randomizer_output matches 2 run function 1_splatus:spellbound/items/cursed_sea_blade
execute if score @s spellbound_randomizer_output matches 3 run function 1_splatus:spellbound/items/crucible
execute if score @s spellbound_randomizer_output matches 4 run function 1_splatus:spellbound/items/dagger
execute if score @s spellbound_randomizer_output matches 5 run function 1_splatus:spellbound/items/end_excalibur
execute if score @s spellbound_randomizer_output matches 6 run function 1_splatus:spellbound/items/evokers_wrath
execute if score @s spellbound_randomizer_output matches 7 run function 1_splatus:spellbound/items/golden_ocean_edge
execute if score @s spellbound_randomizer_output matches 8 run function 1_splatus:spellbound/items/moonlight_edge
execute if score @s spellbound_randomizer_output matches 9 run function 1_splatus:spellbound/items/mega_hammer
execute if score @s spellbound_randomizer_output matches 10 run function 1_splatus:spellbound/items/windswept_sword
execute if score @s spellbound_randomizer_output matches 11 run function 1_splatus:spellbound/items/withering_sword



execute at @s run loot spawn ~ ~ ~ loot 1_splatus:spellbound/other/randomize_10

execute at @s store result score @s spellbound_randomizer_output run data get entity @e[distance=..0.01,type=item,limit=1] Item.tag.SpellboundRandomizerOutput

kill @e[distance=..0.0001,type=item]

execute if score @s spellbound_randomizer_output matches 1 run function 1_splatus:spellbound/items/blowgun
execute if score @s spellbound_randomizer_output matches 2 run function 1_splatus:spellbound/items/bone_wand
execute if score @s spellbound_randomizer_output matches 3 run function 1_splatus:spellbound/items/chainfiring
execute if score @s spellbound_randomizer_output matches 4 run function 1_splatus:spellbound/items/echo_wand
execute if score @s spellbound_randomizer_output matches 5 run function 1_splatus:spellbound/items/electric_staff
execute if score @s spellbound_randomizer_output matches 6 run function 1_splatus:spellbound/items/endlight
execute if score @s spellbound_randomizer_output matches 7 run function 1_splatus:spellbound/items/fire_staff
execute if score @s spellbound_randomizer_output matches 8 run function 1_splatus:spellbound/items/ice_staff
execute if score @s spellbound_randomizer_output matches 9 run function 1_splatus:spellbound/items/magmus_bow
execute if score @s spellbound_randomizer_output matches 10 run function 1_splatus:spellbound/items/zg_crossbow



scoreboard players reset @s spellbound_randomizer_output
