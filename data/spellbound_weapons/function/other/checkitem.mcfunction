execute store success score @s spellbound_sand if predicate spellbound_weapons:holding/weapon/windswept_sword
execute store success score @s spellbound_withering if predicate spellbound_weapons:holding/weapon/withering_sword_precise
execute store success score @s spellbound_blazing if predicate spellbound_weapons:holding/weapon/blazing_sword
execute store success score @s spellbound_curse if predicate spellbound_weapons:holding/weapon/cursed_sea_blade
execute store success score @s spellbound_delete if predicate spellbound_weapons:holding/weapon/delete
execute store success score @s spellbound_end if predicate spellbound_weapons:holding/weapon/end_excalibur_precise

execute store success score @s spellbound_hammer if predicate spellbound_weapons:holding/weapon/mega_hammer
execute store success score @s spellbound_dagger if predicate spellbound_weapons:holding/weapon/dagger
execute store success score @s spellbound_evoker if predicate spellbound_weapons:holding/weapon/evokers_wrath
execute store success score @s spellbound_bonewand unless entity @s[predicate=!spellbound_weapons:holding/weapon/bone_wand,predicate=!spellbound_weapons:holding/weapon/bone_wand_offhand]


execute store success score @s spellbound_e_staff unless entity @s[predicate=!spellbound_weapons:holding/weapon/electric_staff,predicate=!spellbound_weapons:holding/weapon/electric_staff_offhand]
execute store success score @s spellbound_f_staff unless entity @s[predicate=!spellbound_weapons:holding/weapon/fire_staff,predicate=!spellbound_weapons:holding/weapon/fire_staff_offhand]
execute store success score @s spellbound_i_staff unless entity @s[predicate=!spellbound_weapons:holding/weapon/ice_staff,predicate=!spellbound_weapons:holding/weapon/ice_staff_offhand]

execute store success score @s spellbound_zgcrossbow unless entity @s[predicate=!spellbound_weapons:holding/weapon/zg_crossbow,predicate=!spellbound_weapons:holding/weapon/zg_crossbow_offhand]
execute store success score @s spellbound_netherlight run data get entity @s SelectedItem.components.minecraft:custom_data.SpellboundNetherlight
execute store success score @s spellbound_chainfiring unless entity @s[predicate=!spellbound_weapons:holding/weapon/chainfiring,predicate=!spellbound_weapons:holding/weapon/chainfiring_offhand]
execute store success score @s spellbound_blowgun unless entity @s[predicate=!spellbound_weapons:holding/weapon/blowgun,predicate=!spellbound_weapons:holding/weapon/blowgun_offhand]
execute store success score @s spellbound_endlight unless entity @s[predicate=!spellbound_weapons:holding/weapon/endlight,predicate=!spellbound_weapons:holding/weapon/endlight_offhand]
execute store success score @s spellbound_magmus_charger unless entity @s[predicate=!spellbound_weapons:holding/weapon/magmus,predicate=!spellbound_weapons:holding/weapon/magmus_offhand]

execute store success score @s spellbound_crucible run data get entity @s[nbt=!{SelectedItem:{id:"minecraft:netherite_sword"}}] SelectedItem.components.minecraft:custom_data.SpellboundCrucible
execute store success score @s spellbound_golden_ocean_edge run data get entity @s SelectedItem.components.minecraft:custom_data.SpellboundGoldenOceanEdge
execute store success score @s spellbound_moonlight_edge run data get entity @s[nbt=!{SelectedItem:{id:"minecraft:netherite_sword"}}] SelectedItem.components.minecraft:custom_data.SpellboundMoonlightEdge
execute store success score @s spellbound_echo_wand unless entity @s[predicate=!spellbound_weapons:holding/weapon/echo_wand,predicate=!spellbound_weapons:holding/weapon/echo_wand_offhand]
execute store success score @s spellbound_thorn if predicate spellbound_weapons:holding/weapon/thorn_blossom

execute as @s[predicate=spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:other/action/ranged_both

execute as @s[predicate=!spellbound_weapons:holding/spellbound_item] run scoreboard players set @s spellbound_weapon 0

#advancement grant @s only minecraft:adventure/spellbound_all_weapons magmus_bow
