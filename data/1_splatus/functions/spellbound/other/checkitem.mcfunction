execute store success score @s spellbound_sand if predicate 1_splatus:spellbound/holding/weapon/windswept_sword
execute store success score @s spellbound_withering if predicate 1_splatus:spellbound/holding/weapon/withering_sword_precise
execute store success score @s spellbound_blazing if predicate 1_splatus:spellbound/holding/weapon/blazing_sword
execute store success score @s spellbound_curse if predicate 1_splatus:spellbound/holding/weapon/cursed_sea_blade
execute store success score @s spellbound_delete if predicate 1_splatus:spellbound/holding/weapon/delete
execute store success score @s spellbound_end if predicate 1_splatus:spellbound/holding/weapon/end_excalibur_precise

execute store success score @s spellbound_hammer if predicate 1_splatus:spellbound/holding/weapon/mega_hammer
execute store success score @s spellbound_dagger if predicate 1_splatus:spellbound/holding/weapon/dagger
execute store success score @s spellbound_evoker if predicate 1_splatus:spellbound/holding/weapon/evokers_wrath
execute store success score @s spellbound_bonewand unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/bone_wand,predicate=!1_splatus:spellbound/holding/weapon/bone_wand_offhand]


execute store success score @s spellbound_e_staff unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/electric_staff,predicate=!1_splatus:spellbound/holding/weapon/electric_staff_offhand]
execute store success score @s spellbound_f_staff unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/fire_staff,predicate=!1_splatus:spellbound/holding/weapon/fire_staff_offhand]
execute store success score @s spellbound_i_staff unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/ice_staff,predicate=!1_splatus:spellbound/holding/weapon/ice_staff_offhand]

execute store success score @s spellbound_zgcrossbow unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/zg_crossbow,predicate=!1_splatus:spellbound/holding/weapon/zg_crossbow_offhand]
execute store success score @s spellbound_netherlight run data get entity @s SelectedItem.tag.SpellboundNetherlight
execute store success score @s spellbound_chainfiring unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/chainfiring,predicate=!1_splatus:spellbound/holding/weapon/chainfiring_offhand]
execute store success score @s spellbound_blowgun unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/blowgun,predicate=!1_splatus:spellbound/holding/weapon/blowgun_offhand]
execute store success score @s spellbound_endlight unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/endlight,predicate=!1_splatus:spellbound/holding/weapon/endlight_offhand]
execute store success score @s spellbound_magmus_charger unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/magmus,predicate=!1_splatus:spellbound/holding/weapon/magmus_offhand]

execute store success score @s spellbound_crucible run data get entity @s[nbt=!{SelectedItem:{id:"minecraft:netherite_sword"}}] SelectedItem.tag.SpellboundCrucible
execute store success score @s spellbound_golden_ocean_edge run data get entity @s SelectedItem.tag.SpellboundGoldenOceanEdge
execute store success score @s spellbound_moonlight_edge run data get entity @s[nbt=!{SelectedItem:{id:"minecraft:netherite_sword"}}] SelectedItem.tag.SpellboundMoonlightEdge
execute store success score @s spellbound_echo_wand unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/echo_wand,predicate=!1_splatus:spellbound/holding/weapon/echo_wand_offhand]
execute store success score @s spellbound_thorn if predicate 1_splatus:spellbound/holding/weapon/thorn_blossom

execute as @s[predicate=1_splatus:spellbound/holding/tag/bow_both] at @s run function 1_splatus:spellbound/other/action/ranged_both

execute as @s[predicate=!1_splatus:spellbound/holding/spellbound_item] run scoreboard players set @s spellbound_weapon 0

#advancement grant @s only minecraft:adventure/spellbound_all_weapons magmus_bow
